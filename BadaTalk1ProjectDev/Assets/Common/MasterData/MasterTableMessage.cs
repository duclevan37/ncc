using System;
using System.Collections.Generic;
using SQLite4Unity3d;

namespace CalmIsland
{
	public class master_info_message_tmp
	{
		public int message_mid { get; set; }
		public int version { get; set; }
		public string enum_str { get; set; }

		public master_info_message_tmp()
		{
			this.message_mid = 0;
			this.version = 0;
			this.enum_str = string.Empty;
		}
	}

	public class MasterTableMessage
	{
		public static Dictionary<int, MasterInfoMessage> mstTableMessage;

		public MasterTableMessage()
		{
			mstTableMessage = new Dictionary<int, MasterInfoMessage>();
		}

		public bool Load(SQLiteConnection dbConn)
		{
			var cmdSelect = dbConn.CreateCommand("SELECT * FROM message");
			var rows = cmdSelect.ExecuteQuery<master_info_message_tmp>();

			foreach (var row in rows)
			{
				var info = new MasterInfoMessage();

				info.MessageMid = row.message_mid;
				info.Version = row.version;
				info.EnumStr = row.enum_str;

				mstTableMessage.Add(info.MessageMid, info);
			}

			return true;
		}

		public static MasterInfoMessage GetInfo(int message_mid)
		{
			if (mstTableMessage.ContainsKey(message_mid))
			{
				return mstTableMessage[message_mid];
			}

			return null;
		}

		public static Dictionary<int, MasterInfoMessage> GetDic()
		{
			return mstTableMessage;
		}
	}
}
