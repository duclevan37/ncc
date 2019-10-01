using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEditor;
using System.IO;
using System.Security.Cryptography;

namespace AssetBundleManager
{
    public class MasterDataEditorUtils
    {
        private static Dictionary<string, string> buildProperties = null;

        [MenuItem("Tools/GenerateMasterDataHash")]
        public static void GenerateMasterDataHash()
        {
            Debug.Log("Start GenerateMasterDataHash");

            string mastarDataPath = string.Format("{0}/Common/MasterDataJenkins", Application.dataPath);

            if (Directory.Exists(mastarDataPath))
            {
                List<string> hashList = new List<string>();
                string hashFilePath = string.Format("{0}/master_data_hash.txt", mastarDataPath);

                DirectoryInfo directoryInfo = new DirectoryInfo(mastarDataPath);

                foreach (var item in directoryInfo.GetFiles())
                {
                    if (item.Extension == ".txt" || item.Extension == ".meta")
                        continue;

                    hashList.Add(string.Format("{0}\t{1}", item.Name, CalculateMD5FromFile(item.FullName)));
                }

                if (File.Exists(hashFilePath))
                {
                    File.Delete(hashFilePath);
                }

                File.WriteAllLines(hashFilePath, hashList.ToArray());
                AssetDatabase.Refresh();
            }

            Debug.Log("End GenerateMasterDataHash");
        }

        private static string CalculateMD5FromFile(string filename)
        {
            using (var md5 = MD5.Create())
            {
                using (var stream = File.OpenRead(filename))
                {
                    var hash = md5.ComputeHash(stream);
                    return System.BitConverter.ToString(hash).Replace("-", "").ToLowerInvariant();
                }
            }
        }      
    }
}