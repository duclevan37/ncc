using System;
using System.Collections.Generic;
using SQLite4Unity3d;

namespace CalmIsland
{
	public class master_info_bandatalk1_train_quiz_tmp
	{
		public int bandatalk1_train_quiz_mid { get; set; }
		public int version { get; set; }
		public int train_quiz_sets { get; set; }
		public string sound_BG { get; set; }
		public string train_quiz_keyword { get; set; }
		public string train_quiz_img { get; set; }
		public string sound_allert { get; set; }
		public string sound_correct { get; set; }
		public string sound_wrong { get; set; }
		public string train_quiz_keyword_audio { get; set; }
		public string sound_effect { get; set; }
		public string intro_sentence { get; set; }
		public string intro_sentence_audio { get; set; }
		public string outro_sentence { get; set; }
		public string outro_sentence_audio { get; set; }

		public master_info_bandatalk1_train_quiz_tmp()
		{
			this.bandatalk1_train_quiz_mid = 0;
			this.version = 0;
			this.train_quiz_sets = 0;
			this.sound_BG = string.Empty;
			this.train_quiz_keyword = string.Empty;
			this.train_quiz_img = string.Empty;
			this.sound_allert = string.Empty;
			this.sound_correct = string.Empty;
			this.sound_wrong = string.Empty;
			this.train_quiz_keyword_audio = string.Empty;
			this.sound_effect = string.Empty;
			this.intro_sentence = string.Empty;
			this.intro_sentence_audio = string.Empty;
			this.outro_sentence = string.Empty;
			this.outro_sentence_audio = string.Empty;
		}
	}

	public class MasterTableBandatalk1TrainQuiz
	{
		public static Dictionary<int, MasterInfoBandatalk1TrainQuiz> mstTableBandatalk1TrainQuiz;

		public MasterTableBandatalk1TrainQuiz()
		{
			mstTableBandatalk1TrainQuiz = new Dictionary<int, MasterInfoBandatalk1TrainQuiz>();
		}

		public bool Load(SQLiteConnection dbConn)
		{
			var cmdSelect = dbConn.CreateCommand("SELECT * FROM bandatalk1_train_quiz");
			var rows = cmdSelect.ExecuteQuery<master_info_bandatalk1_train_quiz_tmp>();

			foreach (var row in rows)
			{
				var info = new MasterInfoBandatalk1TrainQuiz();

				info.Bandatalk1TrainQuizMid = row.bandatalk1_train_quiz_mid;
				info.Version = row.version;
				info.TrainQuizSets = row.train_quiz_sets;
				info.SoundBG = row.sound_BG;
				if (row.train_quiz_keyword.Length > 0)
				{
					string[] train_quiz_keyword_arr = row.train_quiz_keyword.Split(';');
					foreach (var i in train_quiz_keyword_arr)
					{
						info.TrainQuizKeyword.Add(i);
					}
				}
				if (row.train_quiz_img.Length > 0)
				{
					string[] train_quiz_img_arr = row.train_quiz_img.Split(';');
					foreach (var i in train_quiz_img_arr)
					{
						info.TrainQuizImg.Add(i);
					}
				}
				info.SoundAllert = row.sound_allert;
				info.SoundCorrect = row.sound_correct;
				info.SoundWrong = row.sound_wrong;
				if (row.train_quiz_keyword_audio.Length > 0)
				{
					string[] train_quiz_keyword_audio_arr = row.train_quiz_keyword_audio.Split(';');
					foreach (var i in train_quiz_keyword_audio_arr)
					{
						info.TrainQuizKeywordAudio.Add(i);
					}
				}
				if (row.sound_effect.Length > 0)
				{
					string[] sound_effect_arr = row.sound_effect.Split(';');
					foreach (var i in sound_effect_arr)
					{
						info.SoundEffect.Add(i);
					}
				}
				info.IntroSentence = row.intro_sentence;
				info.IntroSentenceAudio = row.intro_sentence_audio;
				if (row.outro_sentence.Length > 0)
				{
					string[] outro_sentence_arr = row.outro_sentence.Split(';');
					foreach (var i in outro_sentence_arr)
					{
						info.OutroSentence.Add(i);
					}
				}
				if (row.outro_sentence_audio.Length > 0)
				{
					string[] outro_sentence_audio_arr = row.outro_sentence_audio.Split(';');
					foreach (var i in outro_sentence_audio_arr)
					{
						info.OutroSentenceAudio.Add(i);
					}
				}

				mstTableBandatalk1TrainQuiz.Add(info.Bandatalk1TrainQuizMid, info);
			}

			return true;
		}

		public static MasterInfoBandatalk1TrainQuiz GetInfo(int bandatalk1_train_quiz_mid)
		{
			if (mstTableBandatalk1TrainQuiz.ContainsKey(bandatalk1_train_quiz_mid))
			{
				return mstTableBandatalk1TrainQuiz[bandatalk1_train_quiz_mid];
			}

			return null;
		}

		public static Dictionary<int, MasterInfoBandatalk1TrainQuiz> GetDic()
		{
			return mstTableBandatalk1TrainQuiz;
		}
	}
}
