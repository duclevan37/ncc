using System;
using System.Collections.Generic;

namespace CalmIsland
{
	public class MasterInfoRhymeCardMemory
	{
		public int RhymeCardMemoryMid { get; set; }
		public int Version { get; set; }
		public int CardMemorySets { get; set; }
		public string SoundBG { get; set; }
		public List<string> CardMemoryKeyword { get; set; }
		public List<string> CardMemoryImg { get; set; }
		public string SoundAllert { get; set; }
		public string SoundCorrect { get; set; }
		public string SoundWrong { get; set; }
		public List<string> CardMemoryKeywordAudio { get; set; }
		public List<string> SoundEffect { get; set; }
		public string IntroSentence { get; set; }
		public string IntroSentenceAudio { get; set; }
		public List<string> OutroSentence { get; set; }
		public List<string> OutroSentenceAudio { get; set; }

		public MasterInfoRhymeCardMemory()
		{
			this.RhymeCardMemoryMid = 0;
			this.Version = 0;
			this.CardMemorySets = 0;
			this.SoundBG = string.Empty;
			this.CardMemoryKeyword = new List<string>();
			this.CardMemoryImg = new List<string>();
			this.SoundAllert = string.Empty;
			this.SoundCorrect = string.Empty;
			this.SoundWrong = string.Empty;
			this.CardMemoryKeywordAudio = new List<string>();
			this.SoundEffect = new List<string>();
			this.IntroSentence = string.Empty;
			this.IntroSentenceAudio = string.Empty;
			this.OutroSentence = new List<string>();
			this.OutroSentenceAudio = new List<string>();
		}
	}
}
