using System;
using System.Collections.Generic;

namespace CalmIsland
{
	public class MasterInfoUIText
	{
		public string UITextMid { get; set; }
		public int Version { get; set; }
		public string KoKr { get; set; }
		public string EnUs { get; set; }
		public string FrFr { get; set; }
		public string EsEs { get; set; }
		public string ZhCn { get; set; }

		public MasterInfoUIText()
		{
			this.UITextMid = string.Empty;
			this.Version = 0;
			this.KoKr = string.Empty;
			this.EnUs = string.Empty;
			this.FrFr = string.Empty;
			this.EsEs = string.Empty;
			this.ZhCn = string.Empty;
		}
	}
}
