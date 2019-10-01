using System;
using System.Collections.Generic;

namespace CalmIsland
{
	public class MasterInfoBandatalk1TrainQuiz
	{
		public int Bandatalk1TrainQuizMid { get; set; }
		public int Version { get; set; }
		public int TrainQuizSets { get; set; }
		public string SoundBG { get; set; }
		public List<string> TrainQuizKeyword { get; set; }
		public List<string> TrainQuizImg { get; set; }
		public string SoundAllert { get; set; }
		public string SoundCorrect { get; set; }
		public string SoundWrong { get; set; }
		public List<string> TrainQuizKeywordAudio { get; set; }
		public List<string> SoundEffect { get; set; }
		public string IntroSentence { get; set; }
		public string IntroSentenceAudio { get; set; }
		public List<string> OutroSentence { get; set; }
		public List<string> OutroSentenceAudio { get; set; }

		public MasterInfoBandatalk1TrainQuiz()
		{
			this.Bandatalk1TrainQuizMid = 0;
			this.Version = 0;
			this.TrainQuizSets = 0;
			this.SoundBG = string.Empty;
			this.TrainQuizKeyword = new List<string>();
			this.TrainQuizImg = new List<string>();
			this.SoundAllert = string.Empty;
			this.SoundCorrect = string.Empty;
			this.SoundWrong = string.Empty;
			this.TrainQuizKeywordAudio = new List<string>();
			this.SoundEffect = new List<string>();
			this.IntroSentence = string.Empty;
			this.IntroSentenceAudio = string.Empty;
			this.OutroSentence = new List<string>();
			this.OutroSentenceAudio = new List<string>();
		}
	}
}
