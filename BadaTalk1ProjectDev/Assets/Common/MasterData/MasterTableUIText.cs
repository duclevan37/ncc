using System;
using System.Collections.Generic;
using SQLite4Unity3d;

namespace CalmIsland
{
	public class master_info_ui_text_tmp
	{
		public string ui_text_mid { get; set; }
		public int version { get; set; }
		public string ko_kr { get; set; }
		public string en_us { get; set; }
		public string fr_fr { get; set; }
		public string es_es { get; set; }
		public string zh_cn { get; set; }

		public master_info_ui_text_tmp()
		{
			this.ui_text_mid = string.Empty;
			this.version = 0;
			this.ko_kr = string.Empty;
			this.en_us = string.Empty;
			this.fr_fr = string.Empty;
			this.es_es = string.Empty;
			this.zh_cn = string.Empty;
		}
	}

	public class MasterTableUIText
	{
		public static Dictionary<string, MasterInfoUIText> mstTableUIText;

		public MasterTableUIText()
		{
			mstTableUIText = new Dictionary<string, MasterInfoUIText>();
		}

		public bool Load(SQLiteConnection dbConn)
		{
			var cmdSelect = dbConn.CreateCommand("SELECT * FROM ui_text");
			var rows = cmdSelect.ExecuteQuery<master_info_ui_text_tmp>();

			foreach (var row in rows)
			{
				var info = new MasterInfoUIText();

				info.UITextMid = row.ui_text_mid;
				info.Version = row.version;
				info.KoKr = row.ko_kr;
				info.EnUs = row.en_us;
				info.FrFr = row.fr_fr;
				info.EsEs = row.es_es;
				info.ZhCn = row.zh_cn;

				mstTableUIText.Add(info.UITextMid, info);
			}

			return true;
		}

		public static MasterInfoUIText GetInfo(string ui_text_mid)
		{
			if (mstTableUIText.ContainsKey(ui_text_mid))
			{
				return mstTableUIText[ui_text_mid];
			}

			return null;
		}

		public static Dictionary<string, MasterInfoUIText> GetDic()
		{
			return mstTableUIText;
		}
	}
}
