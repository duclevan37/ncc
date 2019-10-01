using System;
using System.Collections.Generic;

namespace CalmIsland
{
	public class MasterInfoMessage
	{
		public int MessageMid { get; set; }
		public int Version { get; set; }
		public string EnumStr { get; set; }

		public MasterInfoMessage()
		{
			this.MessageMid = 0;
			this.Version = 0;
			this.EnumStr = string.Empty;
		}
	}
}
