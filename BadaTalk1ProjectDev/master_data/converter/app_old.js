
'use strict'

if (process.argv.length < 3) {
  console.log('Usage: node converter.js stage')
  process.exit(1)
}

let fs = require('fs')
let et = require('elementtree')
let sqlite3 = require('sqlite3').verbose()

let bIsCorrectAccess = function (sAccess) {
  return ['common', 'design', 'client', 'server'].indexOf(sAccess) > -1
}

let bIsCorrectType = function (sType) {
  return ['int(11)', 'bigint(20)', 'double', 'char(1)', 'varchar(255)', 'text', 'datetime', 'list<int(11)>', 'list<bigint(20)>', 'list<varchar(255)>'].indexOf(sType) > -1
}

let sCsharpTypeSqlite3 = function (sType) {
  if (sType === 'char(1)') {
    return 'int'
  } else if (sType === 'datetime') {
    return 'string'
  }

  return sCsharpType(sType)
}

let sCsharpType = function (sType) {
  if (sType === 'int(11)') {
    return 'int'
  } else if (sType === 'bigint(20)') {
    return 'long'
  } else if (sType === 'double') {
    return 'double'
  } else if (sType === 'char(1)') {
    return 'bool'
  } else if (['varchar(255)', 'text'].indexOf(sType) > -1) {
    return 'string'
  } else if (sType === 'datetime') {
    return 'DateTime'
  } else if (sType === 'list<int(11)>') {
    return 'List<int>'
  } else if (sType === 'list<bigint(20)>') {
    return 'List<long>'
  } else if (sType === 'list<varchar(255)>') {
    return 'List<string>'
  }

  return ''
}

let sGoLangType = function (sType) {
  if (sType === 'int(11)') {
    return 'int64'
  } else if (sType === 'bigint(20)') {
    return 'int64'
  } else if (sType === 'double') {
    return 'float64'
  } else if (sType === 'char(1)') {
    return 'bool'
  } else if (['varchar(255)', 'text'].indexOf(sType) > -1) {
    return 'string'
  } else if (sType === 'datetime') {
    return 'string'
  } else if (sType === 'list<int(11)>') {
    return '[]int64'
  } else if (sType === 'list<bigint(20)>') {
    return '[]int64'
  } else if (sType === 'list<varchar(255)>') {
    return '[]string'
  }

  return ''
}

let sCamelCase = function (sName) {
  if (sName.length === 0) {
    return ''
  }

  let sUnderscoreToSpace = ''
  for (let i = 0; i < sName.length; ++i) {
    if (sName[i] === '_') {
      sUnderscoreToSpace += ' '
    } else {
      sUnderscoreToSpace += sName[i]
    }
  }
  let sTrimmed = sUnderscoreToSpace.trim()

  let aSplited = sTrimmed.split(' ')
  for (let j = 0; j < aSplited.length; ++j) { 
    if (aSplited[j] === 'id') {
      aSplited[j] = 'ID'
    } else if (aSplited[j] === 'uri') {
      aSplited[j] = 'URI'
    } else if (aSplited[j] === 'url') {
      aSplited[j] = 'URL'
    } else if (aSplited[j] === 'ui') {
      aSplited[j] = 'UI'
    } else if (aSplited[j] === 'html') {
      aSplited[j] = 'HTML'
    }
  }
  sTrimmed = aSplited.join(' ')

  let sCamelCased = sTrimmed[0].toUpperCase()
  for (let k = 1; k < sTrimmed.length; ++k) {
    if (sTrimmed[k] === ' ' && k < (sTrimmed.length - 1)) {
      sCamelCased += sTrimmed[++k].toUpperCase()
      continue
    }

    sCamelCased += sTrimmed[k]
  }

  return sCamelCased
}

let sSqlite3Type = function (sType) {
  if (sType === 'int(11)') {
    return 'INT'
  } else if (sType === 'bigint(20)') {
    return 'BIGINT'
  } else if (sType === 'double') {
    return 'DOUBLE'
  } else if (sType === 'char(1)') {
    return 'INT'
  } else if (sType === 'varchar(255)') {
    return 'VARCHAR(255)'
  } else if (sType === 'text') {
    return 'TEXT'
  } else if (sType === 'datetime') {
    return 'DATETIME'
  } else if (sType === 'list<int(11)>') {
    return 'TEXT'
  } else if (sType === 'list<bigint(20)>') {
    return 'TEXT'
  } else if (sType === 'list<varchar(255)>') {
    return 'TEXT'
  }

  return ''
}

let bIsNumberType = function (sType) {
  return ['int(11)', 'bigint(20)', 'double'].indexOf(sType) > -1
}

let bIsNumber = function (sNum) {
  if (sNum === '') {
    return false
  }

  let i = 0
  if (sNum.length > 0 && sNum[0] === '-') {
    ++i
  }

  for (; i < sNum.length; ++i) {
    if (sNum[i] >= '0' && sNum[i] <= '9') {
      continue
    }

    return false
  }

  return true
}

let bIsDouble = function (sNum) {
  if (sNum.indexOf('.') > -1) {
    if (sNum.split('.').length > 2) {
      return false
    }

    return bIsNumber(sNum.substr(0, sNum.indexOf('.')))
  }

  return bIsNumber(sNum)
}

let bIsValidValue = function (sType, sValue) {
  if (sType === 'int(11)') {
    if (bIsNumber(sValue) === false) {
      return false
    }

    if (parseInt(sValue) > 2147483647 || parseInt(sValue) < (-2147483648)) {
      return false
    }
  } else if (sType === 'bigint(20)') {
    if (bIsNumber(sValue) === false) {
      return false
    }

    if (parseInt(sValue) > Number.MAX_SAFE_INTEGER || parseInt(sValue) < Number.MIN_SAFE_INTEGER) {
      return false
    }
  } else if (sType === 'double') {
    if (bIsDouble(sValue) === false) {
      return false
    }

    if (parseFloat(sValue) > Number.MAX_SAFE_INTEGER || parseFloat(sValue) < Number.MIN_SAFE_INTEGER) {
      return false
    }
  } else if (sType === 'char(1)') {
    if (sValue !== '0' && sValue !== '1') {
      return false
    }
  } else if (sType === 'varchar(255)') {
    if (sValue !== null && sValue.length > 255) {
      return false
    }
  }

  return true
}

let defaultValue = function (sType) {
  if (['int(11)', 'bigint(20)', 'double'].indexOf(sType) > -1) {
    return 0
  } else if (sType === 'char(1)') {
    return false
  } else if (sType === 'datetime') {
    return '1970-01-01 00:00:00'
  } else if (sType.indexOf('list') > -1) {
    return []
  } else {
    return ''
  }
}

let sPhase = process.argv[process.argv.length - 1]
let sPath = '../xml/' + sPhase

let sSqlFile = '../sql/master_data_' + sPhase + '.sql'
if (fs.existsSync(sSqlFile)) {
  fs.unlinkSync(sSqlFile)
}

let sDbFile = '../sql/master_data_' + sPhase + '.bytes'
if (fs.existsSync(sDbFile)) {
  fs.unlinkSync(sDbFile)
}

let sMstDataGoFile = '../go/mst_data.go'
if (fs.existsSync(sMstDataGoFile)) {
  fs.unlinkSync(sMstDataGoFile)
}

fs.appendFileSync(sMstDataGoFile, 'package main\n\nimport (\n\t"encoding/json"\n\t"io/ioutil"\n)\n\n', 'utf8')

let db = new sqlite3.Database(sDbFile)
db.serialize(function () {
  db.run('PRAGMA journal_mode = PERSIST')
  db.run('BEGIN TRANSACTION')
})

console.log(' ')

let mstDataAll = {}
let mstDataServer = {}

let sTableName = ''
let aTableNames = []

let aMidColumnNames = []
let aMidColumnTables = []

let aListColumnNames = []
let aListColumnTables = []

let aFiles = fs.readdirSync(sPath)
for (let i = 0; i < aFiles.length; ++i) {
  if (aFiles[i].split('.').pop() !== 'xml') {
    continue
  }
  let sFile = aFiles[i]

  let aColumnAccesses = []

  let aColumnTypes = []
  let aServerColumnTypes = []
  let aClientColumnTypes = []

  let aColumnNames = []
  let aServerColumnNames = []
  let aClientColumnNames = []

  let sXml = fs.readFileSync(sPath + '/' + sFile, 'utf8').toString()

  let tree = et.parse(sXml)
  let root = tree.getroot()

  let worksheets = root.findall('Worksheet')
  for (let j = 0; j < worksheets.length; ++j) {
    let worksheet = worksheets[j]
    sTableName = worksheet.get('ss:Name')
    console.log(sFile + ' : ' + sTableName)

    if (aTableNames.indexOf(sTableName) > -1) {
      console.log('ERROR : ' + sTableName + ', masterName already exists')
      process.exit(1)
    }
    aTableNames.push(sTableName)

    let mstTable = {}

    aColumnAccesses.length = 0
    aColumnTypes.length = 0
    aColumnNames.length = 0

    let iRowIndex = 0
    let iColumnIdx = 0
    let iColumnLen = 0

    let rows = worksheet.find('Table').findall('Row')
    let cells = null

    let data = null
    let sDataText = ''

    let sName = ''
    let sType = ''

    let aFonts = []
    let bHasDataStarted = false

    for (let k = 0; k < rows.length; ++k) {
      let row = rows[k]

      if (iRowIndex === 0) { // column_access
        cells = row.findall('Cell')
        for (let m = 0; m < cells.length; ++m) {
          data = cells[m].find('Data')
          if (!data || !data.text) {
            console.log('ERROR : ' + sTableName + ', invalid access')
          }
          sDataText = data.text

          if (sDataText === 'END_OF_COLUMNS') {
            break
          }

          if (bIsCorrectAccess(sDataText) === false) {
            console.log('ERROR : ' + sTableName + ', invalid access, ' + sDataText)
            process.exit(1)
          }

          aColumnAccesses.push(sDataText)
        }

        // this happens a lot
        if (aColumnAccesses[0] !== 'common') {
          aColumnAccesses[0] = 'common'
        }

        iColumnLen = aColumnAccesses.length
      } else if (iRowIndex === 1) { // column_type
        iColumnIdx = 0

        cells = row.findall('Cell')
        for (let m = 0; m < cells.length; ++m) {
          if (iColumnIdx === iColumnLen) {
            break
          }

          data = cells[m].find('Data')
          if (!data || !data.text) {
            console.log('ERROR : ' + sTableName + ', invalid type, ' + aColumnNames[m] + ', ' + data.text)
          }
          sDataText = data.text

          if (bIsCorrectType(sDataText) === false) {
            console.log('ERROR : ' + sTableName + ', invalid type, ' + aColumnNames[m] + ', ' + sDataText)
            process.exit(1)
          }

          aColumnTypes.push(sDataText)
          ++iColumnIdx
        }

        if (aColumnAccesses.length !== aColumnTypes.length) {
          console.log('ERROR : ' + sTableName + ', column_access_count and column_type_count mismatch')
          process.exit(1)
        }

        if (aColumnTypes[0] !== 'int(11)' && aColumnTypes[0] !== 'bigint(20)' && aColumnTypes[0] !== 'varchar(255)') {
          console.log('ERROR : ' + sTableName + ', invalid type for mid')
          process.exit(1)
        }
      } else if (iRowIndex === 2) { // column_description
        ++iRowIndex
        continue
      } else if (iRowIndex === 3) { // column_name
        iColumnIdx = 0

        cells = row.findall('Cell')
        for (let m = 0; m < cells.length; ++m) {
          if (iColumnIdx === iColumnLen) {
            break
          }

          data = cells[m].find('Data')
          if (data === null) {
            aFonts = cells[m].findall('*/Font')

            sDataText = ''
            for (let n = 0; n < aFonts.length; ++n) {
              sDataText += aFonts[n].text
            }
          } else if (data.text !== null) {
            sDataText = data.text
          }

          aColumnNames.push(sDataText)
          if (m > 0 && aColumnNames[m].indexOf('_mid') > -1) {
            if (sDataText.indexOf('list') > -1) {
              aListColumnNames.push(aColumnNames[m])
              aListColumnTables.push(sTableName)
            } else {
              aMidColumnNames.push(aColumnNames[m])
              aMidColumnTables.push(sTableName)
            }
          }

          ++iColumnIdx
        }

        if (aColumnAccesses.length !== aColumnNames.length) {
          console.log('ERROR : ' + sTableName + ', column_access_count and column_name_count mismatch')
          process.exit(1)
        }
      } else { // data
        if (bHasDataStarted === false) {
          bHasDataStarted = true

          aServerColumnNames.length = 0
          aServerColumnTypes.length = 0

          aClientColumnNames.length = 0
          aClientColumnTypes.length = 0

          for (let p = 0; p < aColumnAccesses.length; ++p) {
            if (aColumnAccesses[p] === 'design') {
              continue
            } else if (aColumnAccesses[p] === 'server') {
              aServerColumnNames.push(aColumnNames[p])
              aServerColumnTypes.push(aColumnTypes[p])
            } else if (aColumnAccesses[p] === 'client') {
              aClientColumnNames.push(aColumnNames[p])
              aClientColumnTypes.push(aColumnTypes[p])
            } else if (aColumnAccesses[p] === 'common') {
              aServerColumnNames.push(aColumnNames[p])
              aServerColumnTypes.push(aColumnTypes[p])

              aClientColumnNames.push(aColumnNames[p])
              aClientColumnTypes.push(aColumnTypes[p])
            }
          }

          let sMasterTableCs = ''

          sMasterTableCs += 'using System;\n'
          sMasterTableCs += 'using System.Collections.Generic;\n'
          sMasterTableCs += 'using SQLite4Unity3d;\n'
          sMasterTableCs += '\n'
          sMasterTableCs += 'namespace CalmIsland\n'
          sMasterTableCs += '{\n'
          sMasterTableCs += '\tpublic class master_info_' + sTableName + '_tmp\n'
          sMasterTableCs += '\t{\n'

          for (let p = 0; p < aClientColumnNames.length; ++p) {
            sName = aClientColumnNames[p]
            sType = aClientColumnTypes[p]

            if (sType.substr(0, 5) === 'list<') {
              sMasterTableCs += '\t\tpublic string ' + sName + ' { get; set; }\n'
            } else {
              sMasterTableCs += '\t\tpublic ' + sCsharpTypeSqlite3(sType) + ' ' + sName + ' { get; set; }\n'
            }
          }

          sMasterTableCs += '\n'
          sMasterTableCs += '\t\tpublic master_info_' + sTableName + '_tmp()\n'
          sMasterTableCs += '\t\t{\n'

          for (let p = 0; p < aClientColumnNames.length; ++p) {
            sName = aClientColumnNames[p]
            sType = aClientColumnTypes[p]

            if (bIsNumberType(sType)) {
              sMasterTableCs += '\t\t\tthis.' + sName + ' = 0;\n'
            } else if (sType === 'char(1)') {
              sMasterTableCs += '\t\t\tthis.' + sName + ' = 0;\n'
            } else if (sType === 'datetime') {
              sMasterTableCs += '\t\t\tthis.' + sName + ' = string.Empty;\n'
            } else if (sType === 'list<int(11)>') {
              sMasterTableCs += '\t\t\tthis.' + sName + ' = string.Empty;\n'
            } else if (sType === 'list<bigint(20)>') {
              sMasterTableCs += '\t\t\tthis.' + sName + ' = string.Empty;\n'
            } else if (sType === 'list<varchar(255)>') {
              sMasterTableCs += '\t\t\tthis.' + sName + ' = string.Empty;\n'
            } else {
              sMasterTableCs += '\t\t\tthis.' + sName + ' = string.Empty;\n'
            }
          }

          sMasterTableCs += '\t\t}\n'
          sMasterTableCs += '\t}\n'
          sMasterTableCs += '\n'
          sMasterTableCs += '\tpublic class MasterTable' + sCamelCase(sTableName) + '\n'
          sMasterTableCs += '\t{\n'
          sMasterTableCs += '\t\tpublic static Dictionary<' + sCsharpType(aClientColumnTypes[0]) + ', MasterInfo' + sCamelCase(sTableName) + '> mstTable' + sCamelCase(sTableName) + ';\n'
          sMasterTableCs += '\n'
          sMasterTableCs += '\t\tpublic MasterTable' + sCamelCase(sTableName) + '()\n'
          sMasterTableCs += '\t\t{\n'
          sMasterTableCs += '\t\t\tmstTable' + sCamelCase(sTableName) + ' = new Dictionary<' + sCsharpType(aClientColumnTypes[0]) + ', MasterInfo' + sCamelCase(sTableName) + '>();\n'
          sMasterTableCs += '\t\t}\n'
          sMasterTableCs += '\n'
          sMasterTableCs += '\t\tpublic bool Load(SQLiteConnection dbConn)\n'
          sMasterTableCs += '\t\t{\n'
          sMasterTableCs += '\t\t\tvar cmdSelect = dbConn.CreateCommand("SELECT * FROM ' + sTableName + '");\n'
          sMasterTableCs += '\t\t\tvar rows = cmdSelect.ExecuteQuery<master_info_' + sTableName + '_tmp>();\n'
          sMasterTableCs += '\n'
          sMasterTableCs += '\t\t\tforeach (var row in rows)\n'
          sMasterTableCs += '\t\t\t{\n'
          sMasterTableCs += '\t\t\t\tvar info = new MasterInfo' + sCamelCase(sTableName) + '();\n'
          sMasterTableCs += '\n'

          for (let p = 0; p < aClientColumnNames.length; ++p) {
            sName = aClientColumnNames[p]
            sType = aClientColumnTypes[p]

            if (sType === 'char(1)') {
              sMasterTableCs += '\t\t\t\tinfo.' + sCamelCase(sName) + ' = row.' + sName + ' == 1;\n'
            } else if (sType === 'datetime') {
              sMasterTableCs += '\t\t\t\tinfo.' + sCamelCase(sName) + ' = DateTime.Parse(row.' + sName + ');\n'
            } else if (sType === 'list<int(11)>') {
              sMasterTableCs += '\t\t\t\tif (row.' + sName + '.Length > 0)\n'
              sMasterTableCs += '\t\t\t\t{\n'
              sMasterTableCs += '\t\t\t\t\tstring[] ' + sName + '_arr = row.' + sName + '.Split(\';\');\n'
              sMasterTableCs += '\t\t\t\t\tforeach (var i in ' + sName + '_arr)\n'
              sMasterTableCs += '\t\t\t\t\t{\n'
              sMasterTableCs += '\t\t\t\t\t\tinfo.' + sCamelCase(sName) + '.Add(Convert.ToInt32(i));\n'
              sMasterTableCs += '\t\t\t\t\t}\n'
              sMasterTableCs += '\t\t\t\t}\n'
            } else if (sType === 'list<bigint(20)>') {
              sMasterTableCs += '\t\t\t\tif (row.' + sName + '.Length > 0)\n'
              sMasterTableCs += '\t\t\t\t{\n'
              sMasterTableCs += '\t\t\t\t\tstring[] ' + sName + '_arr = row.' + sName + '.Split(\';\');\n'
              sMasterTableCs += '\t\t\t\t\tforeach (var i in ' + sName + '_arr)\n'
              sMasterTableCs += '\t\t\t\t\t{\n'
              sMasterTableCs += '\t\t\t\t\t\tinfo.' + sCamelCase(sName) + '.Add(Convert.ToInt64(i));\n'
              sMasterTableCs += '\t\t\t\t\t}\n'
              sMasterTableCs += '\t\t\t\t}\n'
            } else if (sType === 'list<varchar(255)>') {
              sMasterTableCs += '\t\t\t\tif (row.' + sName + '.Length > 0)\n'
              sMasterTableCs += '\t\t\t\t{\n'
              sMasterTableCs += '\t\t\t\t\tstring[] ' + sName + '_arr = row.' + sName + '.Split(\';\');\n'
              sMasterTableCs += '\t\t\t\t\tforeach (var i in ' + sName + '_arr)\n'
              sMasterTableCs += '\t\t\t\t\t{\n'
              sMasterTableCs += '\t\t\t\t\t\tinfo.' + sCamelCase(sName) + '.Add(i);\n'
              sMasterTableCs += '\t\t\t\t\t}\n'
              sMasterTableCs += '\t\t\t\t}\n'
            } else {
              sMasterTableCs += '\t\t\t\tinfo.' + sCamelCase(sName) + ' = row.' + sName + ';\n'
            }
          }

          sMasterTableCs += '\n'
          sMasterTableCs += '\t\t\t\tmstTable' + sCamelCase(sTableName) + '.Add(info.' + sCamelCase(sTableName) + 'Mid, info);\n'
          sMasterTableCs += '\t\t\t}\n'
          sMasterTableCs += '\n'
          sMasterTableCs += '\t\t\treturn true;\n'
          sMasterTableCs += '\t\t}\n'
          sMasterTableCs += '\n'
          sMasterTableCs += '\t\tpublic static MasterInfo' + sCamelCase(sTableName) + ' GetInfo(' + sCsharpType(aClientColumnTypes[0]) + ' ' + aClientColumnNames[0] + ')\n'
          sMasterTableCs += '\t\t{\n'
          sMasterTableCs += '\t\t\tif (mstTable' + sCamelCase(sTableName) + '.ContainsKey(' + aClientColumnNames[0] + '))\n'
          sMasterTableCs += '\t\t\t{\n'
          sMasterTableCs += '\t\t\t\treturn mstTable' + sCamelCase(sTableName) + '[' + aClientColumnNames[0] + '];\n'
          sMasterTableCs += '\t\t\t}\n'
          sMasterTableCs += '\n'
          sMasterTableCs += '\t\t\treturn null;\n'
          sMasterTableCs += '\t\t}\n'
          sMasterTableCs += '\n'
          sMasterTableCs += '\t\tpublic static Dictionary<' + sCsharpType(aClientColumnTypes[0]) + ', MasterInfo' + sCamelCase(sTableName) + '> GetDic()\n'
          sMasterTableCs += '\t\t{\n'
          sMasterTableCs += '\t\t\treturn mstTable' + sCamelCase(sTableName) + ';\n'
          sMasterTableCs += '\t\t}\n'
          sMasterTableCs += '\t}\n'
          sMasterTableCs += '}\n'

          fs.writeFileSync('../cs/MasterTable' + sCamelCase(sTableName) + '.cs', sMasterTableCs, 'utf8')

          let sMasterInfoCs = ''

          sMasterInfoCs += 'using System;\n'
          sMasterInfoCs += 'using System.Collections.Generic;\n'
          sMasterInfoCs += '\n'
          sMasterInfoCs += 'namespace CalmIsland\n'
          sMasterInfoCs += '{\n'
          sMasterInfoCs += '\tpublic class MasterInfo' + sCamelCase(sTableName) + '\n'
          sMasterInfoCs += '\t{\n'

          for (let p = 0; p < aClientColumnNames.length; ++p) {
            sName = aClientColumnNames[p]
            sType = aClientColumnTypes[p]

            sMasterInfoCs += '\t\tpublic ' + sCsharpType(sType) + ' ' + sCamelCase(sName) + ' { get; set; }\n'
            /*
            if (sType.substr(0, 5) === 'list<') {
              sMasterInfoCs += '\t\tpublic ' + sCsharpType(sType) + ' ' + sCamelCase(sName) + ' { get; set; }\n'
            } else {
              sMasterInfoCs += '\t\tpublic ' + sCsharpType(sType) + ' ' + sCamelCase(sName) + ' { get; set; }\n'
            }
            */
          }

          sMasterInfoCs += '\n'
          sMasterInfoCs += '\t\tpublic MasterInfo' + sCamelCase(sTableName) + '()\n'
          sMasterInfoCs += '\t\t{\n'

          for (let p = 0; p < aClientColumnNames.length; ++p) {
            sName = aClientColumnNames[p]
            sType = aClientColumnTypes[p]

            if (bIsNumberType(sType)) {
              sMasterInfoCs += '\t\t\tthis.' + sCamelCase(sName) + ' = 0;\n'
            } else if (sType === 'char(1)') {
              sMasterInfoCs += '\t\t\tthis.' + sCamelCase(sName) + ' = false;\n'
            } else if (sType === 'datetime') {
              sMasterInfoCs += '\t\t\tthis.' + sCamelCase(sName) + ' = DateTime.MinValue;\n'
            } else if (sType === 'list<int(11)>') {
              sMasterInfoCs += '\t\t\tthis.' + sCamelCase(sName) + ' = new List<int>();\n'
            } else if (sType === 'list<bigint(20)>') {
              sMasterInfoCs += '\t\t\tthis.' + sCamelCase(sName) + ' = new List<long>();\n'
            } else if (sType === 'list<varchar(255)>') {
              sMasterInfoCs += '\t\t\tthis.' + sCamelCase(sName) + ' = new List<string>();\n'
            } else {
              sMasterInfoCs += '\t\t\tthis.' + sCamelCase(sName) + ' = string.Empty;\n'
            }
          }

          sMasterInfoCs += '\t\t}\n'
          sMasterInfoCs += '\t}\n'
          sMasterInfoCs += '}\n'

          fs.writeFileSync('../cs/MasterInfo' + sCamelCase(sTableName) + '.cs', sMasterInfoCs, 'utf8')

          let sMasterInfoGo = ''

          sMasterInfoGo += 'type mst' + sCamelCase(sTableName) + ' struct {\n'

          for (let p = 0; p < aServerColumnNames.length; ++p) {
            sName = aServerColumnNames[p]
            sType = aServerColumnTypes[p]

            sMasterInfoGo += '\t' + sCamelCase(sName) + ' ' + sGoLangType(sType) + ' `json:"' + sName + '"`\n'
            /*
            if (sType.substr(0, 5) === 'list<') {
              sMasterInfoGo += '\t' + sCamelCase(sName) + ' ' + sGoLangType(sType) + ' ' + sName + '\n'
            } else {
              sMasterInfoGo += '\t' + sCamelCase(sName) + ' ' + sGoLangType(sType) + ' ' + sName + '\n'
            }
            */
          }

          sMasterInfoGo += '}\n'
          sMasterInfoGo += '\n'

          fs.appendFileSync('../go/mst_data.go', sMasterInfoGo, 'utf8')

          let sCreateTable = 'create table ' + sTableName + '('
          for (let p = 0; p < aClientColumnNames.length; ++p) {
            sCreateTable += aClientColumnNames[p] + ' ' + sSqlite3Type(aClientColumnTypes[p])

            if (p === 0) {
              sCreateTable += ' PRIMARY KEY'
            }

            if (p < aClientColumnNames.length - 1) {
              sCreateTable += ', '
            }
          }
          sCreateTable += ')'

          // console.log(createTable)
          fs.appendFileSync(sSqlFile, '\n' + sCreateTable + ';\n\n', 'utf8')
          db.serialize(function () {
            db.run(sCreateTable)
          })
        }

        iColumnIdx = 0
        let sDataMid = ''

        cells = row.findall('Cell')
        for (let m = 0; m < cells.length; ++m) {
          let cell = cells[m]
          let cellSsIndex = cell.get('ss:Index')

          if (sDataMid !== '' && cellSsIndex !== null) {
            let iSsIndex = parseInt(cellSsIndex) - 1

            while (iColumnIdx < iSsIndex && iColumnIdx < iColumnLen) {
              mstTable[sDataMid][aColumnNames[iColumnIdx]] = defaultValue(aColumnTypes[iColumnIdx])
              ++iColumnIdx
            }
          }

          if (iColumnIdx === iColumnLen) {
            break
          }

          sDataText = ''
          data = cells[m].find('Data')
          if (data === null) {
            aFonts = cells[m].findall('*/Font')

            sDataText = ''
            for (let n = 0; n < aFonts.length; ++n) {
              sDataText += aFonts[n].text
            }
          } else if (data.text !== null) {
            sDataText = data.text
          }

          if (sDataText === 'END_OF_DATA') {
            break
          }

          if (iColumnIdx === 0) {
            sDataMid = sDataText

            if (aColumnTypes[iColumnIdx] === 'int(11)') {
              if (bIsValidValue(aColumnTypes[iColumnIdx], sDataText) === false) {
                console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', invalid int(11)')
                process.exit(1)
              }
            } else if (aColumnTypes[iColumnIdx] === 'bigint(20)') {
              if (bIsValidValue(aColumnTypes[iColumnIdx], sDataText) === false) {
                console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', invalid bigint(20)')
                process.exit(1)
              }
            } else if (aColumnTypes[iColumnIdx] === 'varchar(255)') {
              if (bIsValidValue(aColumnTypes[iColumnIdx], sDataText) === false) {
                console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', data_size is bigger than 255')
                process.exit(1)
              }
            }

            if (sDataMid in mstTable) {
              console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', data_mid already exists')
              process.exit(1)
            }
            mstTable[sDataMid] = {}

            if (['int(11)', 'bigint(20)'].indexOf(aColumnTypes[0]) > -1) {
              mstTable[sDataMid][aColumnNames[0]] = parseInt(sDataMid)
            } else {
              mstTable[sDataMid][aColumnNames[0]] = sDataMid
            }

            for (let n = 1; n < aColumnNames.length; ++n) {
              mstTable[sDataMid][aColumnNames[n]] = defaultValue(aColumnTypes[n])
            }
          } else if (aColumnTypes[iColumnIdx] === 'int(11)') {
            if (sDataText !== '' && bIsValidValue(aColumnTypes[iColumnIdx], sDataText) === false) {
              console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', invalid int(11)')
              process.exit(1)
            }
            mstTable[sDataMid][aColumnNames[iColumnIdx]] = sDataText === '' ? 0 : parseInt(sDataText)
          } else if (aColumnTypes[iColumnIdx] === 'bigint(20)') {
            if (sDataText !== '' && bIsValidValue(aColumnTypes[iColumnIdx], sDataText) === false) {
              console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', invalid bigint(20)')
              process.exit(1)
            }
            mstTable[sDataMid][aColumnNames[iColumnIdx]] = sDataText === '' ? 0 : parseInt(sDataText)
          } else if (aColumnTypes[iColumnIdx] === 'double') {
            if (sDataText !== '' && bIsValidValue(aColumnTypes[iColumnIdx], sDataText) === false) {
              console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', invalid double')
              process.exit(1)
            }
            mstTable[sDataMid][aColumnNames[iColumnIdx]] = sDataText === '' ? 0 : parseFloat(sDataText)
          } else if (aColumnTypes[iColumnIdx] === 'char(1)') {
            if (sDataText !== '' && bIsValidValue(aColumnTypes[iColumnIdx], sDataText) === false) {
              console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', invalid char(1)')
              process.exit(1)
            }
            mstTable[sDataMid][aColumnNames[iColumnIdx]] = (sDataText !== '' && parseInt(sDataText) === 1)
          } else if (aColumnTypes[iColumnIdx] === 'varchar(255)') {
            if (bIsValidValue(aColumnTypes[iColumnIdx], sDataText) === false) {
              console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', data_size is bigger than 255')
              process.exit(1)
            }
            mstTable[sDataMid][aColumnNames[iColumnIdx]] = sDataText
          } else if (aColumnTypes[iColumnIdx] === 'list<int(11)>') {
            if (sDataText.length > 0) {
              // this happens a lot
              if (sDataText === '0') {
                console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', invalid data')
                process.exit(1)
              }

              let aDataTexts = sDataText.split(';')
              for (let n = 0; n < aDataTexts.length; ++n) {
                if (bIsValidValue('int(11)', aDataTexts[n]) === false) {
                  console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', invalid int(11)')
                  process.exit(1)
                }
                mstTable[sDataMid][aColumnNames[iColumnIdx]].push(parseInt(aDataTexts[n]))
              }
            }
          } else if (aColumnTypes[iColumnIdx] === 'list<bigint(20)>') {
            if (sDataText.length > 0) {
              // this happens a lot
              if (sDataText === '0') {
                console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', invalid data')
                process.exit(1)
              }

              let aDataTexts = sDataText.split(';')
              for (let n = 0; n < aDataTexts.length; ++n) {
                if (bIsValidValue('bigint(20)', aDataTexts[n]) === false) {
                  console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', invalid bigint(20)')
                  process.exit(1)
                }
                mstTable[sDataMid][aColumnNames[iColumnIdx]].push(parseInt(aDataTexts[n]))
              }
            }
          } else if (aColumnTypes[iColumnIdx] === 'list<varchar(255)>') {
            if (sDataText.length > 0) {
              // this happens a lot
              if (sDataText === '0') {
                console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', invalid data')
                process.exit(1)
              }

              let aDataTexts = sDataText.split(';')
              for (let n = 0; n < aDataTexts.length; ++n) {
                if (bIsValidValue('varchar(255)', aDataTexts[n]) === false) {
                  console.log('ERROR : ' + sTableName + ', ' + sDataMid + ', ' + aColumnNames[iColumnIdx] + ', data_size is bigger than 255')
                  process.exit(1)
                }
              }
              mstTable[sDataMid][aColumnNames[iColumnIdx]] = aDataTexts
            }
          } else {
            mstTable[sDataMid][aColumnNames[iColumnIdx]] = sDataText
          }

          ++iColumnIdx
        }

        if (sDataText === 'END_OF_DATA') {
          break
        } else {
          let sInsertIntoTable = ''
          sInsertIntoTable += 'insert into ' + sTableName + ' values('

          let sValue = ''
          for (let m = 0; m < aClientColumnNames.length; ++m) {
            if (aClientColumnTypes[m].indexOf('list') > -1) {
              sValue = Array.prototype.join.call(mstTable[sDataMid][aClientColumnNames[m]], ';')
              sInsertIntoTable += "'" + sValue.split("'").join("''") + "'"
            } else {
              if (bIsNumberType(aClientColumnTypes[m])) {
                sInsertIntoTable += mstTable[sDataMid][aClientColumnNames[m]]
              } else if (aClientColumnTypes[m] === 'char(1)') {
                sInsertIntoTable += mstTable[sDataMid][aClientColumnNames[m]] ? 1 : 0
              } else {
                sValue = mstTable[sDataMid][aClientColumnNames[m]].split("'").join("''")
                sInsertIntoTable += "'" + sValue + "'"
              }
            }

            if (m < aClientColumnNames.length - 1) {
              sInsertIntoTable += ', '
            }
          }
          sInsertIntoTable += ')'

          // console.log(insertIntoTable)
          fs.appendFileSync(sSqlFile, '\t' + sInsertIntoTable + ';\n', 'utf8')
          db.serialize(function () {
            db.run(sInsertIntoTable)
          })
        }
      }

      ++iRowIndex
    }

    mstDataAll[sTableName] = JSON.parse(JSON.stringify(mstTable))

    let mstTableServer = JSON.parse(JSON.stringify(mstTable))
    for (let sKey in mstTableServer) {
      for (let p = 0; p < aColumnAccesses.length; ++p) {
        if (aColumnAccesses[p] === 'common' || aColumnAccesses[p] === 'server') {
          continue
        }

        delete mstTableServer[sKey][aColumnNames[p]]
      }
    }
    mstDataServer[sTableName] = JSON.parse(JSON.stringify(mstTableServer))
  }
}

db.serialize(function () {
  db.run('COMMIT')
})
db.close()

fs.writeFileSync('../js/' + sPhase + '.json', JSON.stringify(mstDataServer), 'utf8')
fs.writeFileSync('../js/' + sPhase + '.uncompressed.json', JSON.stringify(mstDataServer, null, 4), 'utf8')

let sMasterDataCs = ''

sMasterDataCs += 'using System.IO;\n'
sMasterDataCs += '\n'
sMasterDataCs += 'using UnityEngine;\n'
sMasterDataCs += 'using SQLite4Unity3d;\n'
sMasterDataCs += 'using System;\n'
sMasterDataCs += 'using System.Security.Cryptography;\n'
sMasterDataCs += '\n'
sMasterDataCs += 'namespace CalmIsland\n'
sMasterDataCs += '{\n'
sMasterDataCs += '\tpublic class MasterData\n'
sMasterDataCs += '\t{\n'
sMasterDataCs += '\t\tpublic bool LoadAssetbundle(string phase)\n'
sMasterDataCs += '\t\t{\n'
sMasterDataCs += '\t\t\tvar dbName = string.Format("master_data_{0}.bytes", phase);\n'
sMasterDataCs += '\t\t\tvar dbPath = string.Format("{0}/{1}", Application.persistentDataPath, dbName);\n'
sMasterDataCs += '\t\t\tvar db = Resources.Load<TextAsset>(string.Format("MasterData/master_data_{0}", phase));\n'
sMasterDataCs += '\t\t\tCopyTextAssetToDatabase(dbPath, db);\n'
sMasterDataCs += '\n'
sMasterDataCs += '\t\t\treturn Load(phase);\n'
sMasterDataCs += '\t\t}\n'
sMasterDataCs += '\n'
sMasterDataCs += '\t\tpublic bool Load(string phase)\n'
sMasterDataCs += '\t\t{\n'
sMasterDataCs += '\t\t\tvar dbName = string.Format("master_data_{0}.bytes", phase);\n'
sMasterDataCs += '\t\t\tvar dbPath = string.Format("{0}/{1}", Application.persistentDataPath, dbName);\n'
sMasterDataCs += '\n'
sMasterDataCs += '\t\t\tvar dbConn = new SQLiteConnection(dbPath, SQLiteOpenFlags.ReadOnly);\n'
sMasterDataCs += '\n'

for (let i = 0; i < aTableNames.length; ++i) {
  sTableName = sCamelCase(aTableNames[i])

  sMasterDataCs += '\t\t\tvar mstTable' + sTableName + ' = new MasterTable' + sTableName + '();\n'
  sMasterDataCs += '\t\t\tif (!mstTable' + sTableName + '.Load(dbConn)) return false;\n'
  sMasterDataCs += '\n'
}

sMasterDataCs += '\t\t\tdbConn.Close();\n'
sMasterDataCs += '\t\t\tdbConn.Dispose();\n'
sMasterDataCs += '\n'
sMasterDataCs += '\t\t\treturn true;\n'
sMasterDataCs += '\t\t}\n'
sMasterDataCs += '\n'
sMasterDataCs += '\t\tprivate static void CopyTextAssetToDatabase(string dbPath, TextAsset db)\n'
sMasterDataCs += '\t\t{\n'
sMasterDataCs += '\t\t\tFileStream stream = null;\n'
sMasterDataCs += '\n'
sMasterDataCs += '\t\t\ttry\n'
sMasterDataCs += '\t\t\t{\n'
sMasterDataCs += '\t\t\t\tif (!File.Exists(dbPath))\n'
sMasterDataCs += '\t\t\t\t{\n'
sMasterDataCs += '\t\t\t\t\tstream = File.Create(dbPath);\n'
sMasterDataCs += '\t\t\t\t}\n'
sMasterDataCs += '\t\t\t\telse\n'
sMasterDataCs += '\t\t\t\t{\n'
sMasterDataCs += '\t\t\t\t\tvar fileHash = CalculateMD5FromFile(dbPath);\n'
sMasterDataCs += '\t\t\t\t\tvar assetHash = CalculateMD5FromByte(db.bytes);\n'
sMasterDataCs += '\n'
sMasterDataCs += '\t\t\t\t\tif (fileHash.Equals(assetHash))\n'
sMasterDataCs += '\t\t\t\t\t{\n'
sMasterDataCs += '\t\t\t\t\t\tDebug.Log("File is same with text asset. skip copying.");\n'
sMasterDataCs += '\t\t\t\t\t\treturn;\n'
sMasterDataCs += '\t\t\t\t\t}\n'
sMasterDataCs += '\n'
sMasterDataCs += '\t\t\t\t\tstream = File.OpenWrite(dbPath);\n'
sMasterDataCs += '\t\t\t\t}\n'
sMasterDataCs += '\n'
sMasterDataCs += '\t\t\t\tvar writer = new BinaryWriter(stream);\n'
sMasterDataCs += '\t\t\t\twriter.Write(db.bytes);\n'
sMasterDataCs += '\t\t\t\twriter.Flush();\n'
sMasterDataCs += '\t\t\t\twriter.Close();\n'
sMasterDataCs += '\t\n'
sMasterDataCs += '#if UNITY_IOS\n'
sMasterDataCs += '\t\t\t\tUnityEngine.iOS.Device.SetNoBackupFlag(dbPath);\n'
sMasterDataCs += '#endif\n'
sMasterDataCs += '\t\t\t}\n'
sMasterDataCs += '\t\t\tcatch (Exception e)\n'
sMasterDataCs += '\t\t\t{\n'
sMasterDataCs += '\t\t\t\tthrow e;\n'
sMasterDataCs += '\t\t\t}\n'
sMasterDataCs += '\t\t}\n'
sMasterDataCs += '\n'
sMasterDataCs += '\t\tprivate static string CalculateMD5FromFile(string filename)\n'
sMasterDataCs += '\t\t{\n'
sMasterDataCs += '\t\t\tusing(var md5 = MD5.Create())\n'
sMasterDataCs += '\t\t\t{\n'
sMasterDataCs += '\t\t\t\tusing (var stream = File.OpenRead(filename))\n'
sMasterDataCs += '\t\t\t\t{\n'
sMasterDataCs += '\t\t\t\t\tvar hash = md5.ComputeHash(stream);\n'
sMasterDataCs += '\t\t\t\t\treturn ConvertBitToString(hash);\n'
sMasterDataCs += '\t\t\t\t}\n'
sMasterDataCs += '\t\t\t}\n'
sMasterDataCs += '\t\t}\n'
sMasterDataCs += '\n'
sMasterDataCs += '\t\tprivate static string CalculateMD5FromByte(byte[] buffer)\n'
sMasterDataCs += '\t\t{\n'
sMasterDataCs += '\t\t\tusing(var md5 = MD5.Create())\n'
sMasterDataCs += '\t\t\t{\n'
sMasterDataCs += '\t\t\t\tvar hash = md5.ComputeHash(buffer);\n'
sMasterDataCs += '\t\t\t\treturn ConvertBitToString(hash);\n'
sMasterDataCs += '\t\t\t}\n'
sMasterDataCs += '\t\t}\n'
sMasterDataCs += '\n'
sMasterDataCs += '\t\tprivate static string ConvertBitToString(byte[] hash)\n'
sMasterDataCs += '\t\t{\n'
sMasterDataCs += '\t\t\treturn BitConverter.ToString(hash).Replace("-", "").ToLowerInvariant();\n'
sMasterDataCs += '\t\t}\n'
sMasterDataCs += '\t}\n'
sMasterDataCs += '}\n'

fs.writeFileSync('../cs/MasterData.cs', sMasterDataCs, 'utf8')

let sMasterDataGo = ''

sMasterDataGo += 'type mst struct {\n'

for (let i = 0; i < aTableNames.length; ++i) {
  sTableName = aTableNames[i]

  sMasterDataGo += '\t' + sCamelCase(sTableName) + ' map[string]mst' + sCamelCase(sTableName) + ' `json:"' + sTableName + '"`\n'
}

sMasterDataGo += '}\n'
sMasterDataGo += '\n'
sMasterDataGo += 'func (m *mst) parseFrom(file string) {\n'
sMasterDataGo += '\tbytes, err := ioutil.ReadFile(file)\n'
sMasterDataGo += '\tif err != nil {\n'
sMasterDataGo += '\t\tpanic(err)\n'
sMasterDataGo += '\t}\n'
sMasterDataGo += '\n'
sMasterDataGo += '\terr = json.Unmarshal(bytes, m)\n'
sMasterDataGo += '\tif err != nil {\n'
sMasterDataGo += '\t\tpanic(err)\n'
sMasterDataGo += '\t}\n'
sMasterDataGo += '}\n'

fs.appendFileSync('../go/mst_data.go', sMasterDataGo, 'utf8')

console.log(' ')

let sMsgTypeJs = '\n\'use strict\'\n\nlet eMsgType = {\n'
let sMsgTypeCs = '\npublic enum MsgType\n{\n'
let sMsgTypeGo = 'package main\n\nconst (\n'

for (let sKey in mstDataServer.message) {
  sMsgTypeJs += '  ' + mstDataServer.message[sKey].enum_str + ': ' + sKey + ',\n'
  sMsgTypeCs += '\t' + mstDataServer.message[sKey].enum_str + ' = ' + sKey + ',\n'
  sMsgTypeGo += '\t' + 'e' + sCamelCase('msg_type_' + mstDataServer.message[sKey].enum_str.toLowerCase()) + ' int64 = ' + sKey + '\n'
}
sMsgTypeJs += '  END: 9999\n}\n\nmodule.exports = eMsgType\n'
sMsgTypeCs += '\tEND = 9999\n}\n'
sMsgTypeGo += ')\n'

fs.writeFileSync('../js/msg_type.js', sMsgTypeJs, 'utf8')
fs.writeFileSync('../cs/MsgType.cs', sMsgTypeCs, 'utf8')
fs.writeFileSync('../go/enum_msg_type.go', sMsgTypeGo, 'utf8')

console.log(' ')

let sErrCodeJs = '\n\'use strict\'\n\nlet eErrCode = {\n'
let sErrCodeCs = '\npublic enum ErrCode\n{\n'
let sErrCodeGo = 'package main\n\nconst (\n'

for (let sKey in mstDataServer.error) {
  sErrCodeJs += '  ' + mstDataServer.error[sKey].enum_str + ': ' + sKey + ',\n'
  sErrCodeCs += '\t' + mstDataServer.error[sKey].enum_str + ' = ' + sKey + ',\n'
  sErrCodeGo += '\t' + 'e' + sCamelCase('err_code_' + mstDataServer.error[sKey].enum_str.toLowerCase()) + ' int64 = ' + sKey + '\n'
}
sErrCodeJs += '  END: 9999\n}\n\nmodule.exports = eErrCode\n'
sErrCodeCs += '\tEND = 9999\n}\n'
sErrCodeGo += ')\n'

fs.writeFileSync('../js/err_code.js', sErrCodeJs, 'utf8')
fs.writeFileSync('../cs/ErrCode.cs', sErrCodeCs, 'utf8')
fs.writeFileSync('../go/enum_err_code.go', sErrCodeGo, 'utf8')

console.log(' ')

for (let i = 0; i < aMidColumnNames.length; ++i) {
  let sMidColumnName = aMidColumnNames[i]
  let sSrcTableName = sMidColumnName.split('_mid')[0]

  let sCurrTableName = aMidColumnTables[i]

  if ((sSrcTableName in mstDataAll) === false) {
    console.log('VALIDATION : ' + sCurrTableName + ' : table ' + sSrcTableName + ' not found in masterData')
    continue
  }

  for (let sKey in mstDataAll[sCurrTableName]) {
    if (mstDataAll[sCurrTableName][sKey][sMidColumnName] === 0 || mstDataAll[sCurrTableName][sKey][sMidColumnName] === '0') {
      continue
    }

    if ((mstDataAll[sCurrTableName][sKey][sMidColumnName] in mstDataAll[sSrcTableName]) === false) {
      console.log('VALIDATION : ' + sCurrTableName + '[' + sKey + '].' + sMidColumnName + ' = ' + mstDataAll[sCurrTableName][sKey][sMidColumnName] + ', mid ' + mstDataAll[sCurrTableName][sKey][sMidColumnName] + ' not found in ' + sSrcTableName + ' table')
    }
  }
}

for (let i = 0; i < aListColumnNames.length; ++i) {
  let sListColumnName = aListColumnNames[i]
  let sSrcTableName = sListColumnName.split('_mid')[0]

  let sCurrTableName = aListColumnTables[i]

  if ((sSrcTableName in mstDataAll) === false) {
    console.log('VALIDATION : ' + sCurrTableName + ' : table ' + sSrcTableName + ' not found in masterData')
    continue
  }

  for (let sKey in mstDataAll[sCurrTableName]) {
    for (let j = 0; j < mstDataAll[sCurrTableName][sKey][sListColumnName].length; ++j) {
      if ((mstDataAll[sCurrTableName][sKey][sListColumnName][j] in mstDataAll[sSrcTableName]) === false) {
        console.log('VALIDATION : ' + sCurrTableName + '[' + sKey + '].' + sListColumnName + '[' + j + '] = ' + mstDataAll[sCurrTableName][sKey][sListColumnName][j] + ', mid ' + mstDataAll[sCurrTableName][sKey][sListColumnName][j] + ' not found in ' + sSrcTableName + ' table')
      }
    }
  }
}

console.log('\nOK')
