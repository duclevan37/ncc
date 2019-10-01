using System;
using System.Collections.Generic;
using SQLite4Unity3d;

namespace CalmIsland
{
	public class master_info_error_tmp
	{
		public int error_mid { get; set; }
		public int version { get; set; }
		public string enum_str { get; set; }
		public string explain { get; set; }

		public master_info_error_tmp()
		{
			this.error_mid = 0;
			this.version = 0;
			this.enum_str = string.Empty;
			this.explain = string.Empty;
		}
	}

	public class MasterTableError
	{
		public static Dictionary<int, MasterInfoError> mstTableError;

		public MasterTableError()
		{
			mstTableError = new Dictionary<int, MasterInfoError>();
		}

		public bool Load(SQLiteConnection dbConn)
		{
			var cmdSelect = dbConn.CreateCommand("SELECT * FROM error");
			var rows = cmdSelect.ExecuteQuery<master_info_error_tmp>();

			foreach (var row in rows)
			{
				var info = new MasterInfoError();

				info.ErrorMid = row.error_mid;
				info.Version = row.version;
				info.EnumStr = row.enum_str;
				info.Explain = row.explain;

				mstTableError.Add(info.ErrorMid, info);
			}

			return true;
		}

		public static MasterInfoError GetInfo(int error_mid)
		{
			if (mstTableError.ContainsKey(error_mid))
			{
				return mstTableError[error_mid];
			}

			return null;
		}

		public static Dictionary<int, MasterInfoError> GetDic()
		{
			return mstTableError;
		}
	}
}
