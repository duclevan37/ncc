using System;
using System.Collections.Generic;

namespace CalmIsland
{
	public class MasterInfoError
	{
		public int ErrorMid { get; set; }
		public int Version { get; set; }
		public string EnumStr { get; set; }
		public string Explain { get; set; }

		public MasterInfoError()
		{
			this.ErrorMid = 0;
			this.Version = 0;
			this.EnumStr = string.Empty;
			this.Explain = string.Empty;
		}
	}
}
