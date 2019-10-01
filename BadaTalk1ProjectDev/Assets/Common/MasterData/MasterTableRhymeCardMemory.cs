using System;
using System.Collections.Generic;
using SQLite4Unity3d;

namespace CalmIsland
{
	public class master_info_rhyme_card_memory_tmp
	{
		public int rhyme_card_memory_mid { get; set; }
		public int version { get; set; }
		public int card_memory_sets { get; set; }
		public string sound_BG { get; set; }
		public string card_memory_keyword { get; set; }
		public string card_memory_img { get; set; }
		public string sound_allert { get; set; }
		public string sound_correct { get; set; }
		public string sound_wrong { get; set; }
		public string card_memory_keyword_audio { get; set; }
		public string sound_effect { get; set; }
		public string intro_sentence { get; set; }
		public string intro_sentence_audio { get; set; }
		public string outro_sentence { get; set; }
		public string outro_sentence_audio { get; set; }

		public master_info_rhyme_card_memory_tmp()
		{
			this.rhyme_card_memory_mid = 0;
			this.version = 0;
			this.card_memory_sets = 0;
			this.sound_BG = string.Empty;
			this.card_memory_keyword = string.Empty;
			this.card_memory_img = string.Empty;
			this.sound_allert = string.Empty;
			this.sound_correct = string.Empty;
			this.sound_wrong = string.Empty;
			this.card_memory_keyword_audio = string.Empty;
			this.sound_effect = string.Empty;
			this.intro_sentence = string.Empty;
			this.intro_sentence_audio = string.Empty;
			this.outro_sentence = string.Empty;
			this.outro_sentence_audio = string.Empty;
		}
	}

	public class MasterTableRhymeCardMemory
	{
		public static Dictionary<int, MasterInfoRhymeCardMemory> mstTableRhymeCardMemory;

		public MasterTableRhymeCardMemory()
		{
			mstTableRhymeCardMemory = new Dictionary<int, MasterInfoRhymeCardMemory>();
		}

		public bool Load(SQLiteConnection dbConn)
		{
			var cmdSelect = dbConn.CreateCommand("SELECT * FROM rhyme_card_memory");
			var rows = cmdSelect.ExecuteQuery<master_info_rhyme_card_memory_tmp>();

			foreach (var row in rows)
			{
				var info = new MasterInfoRhymeCardMemory();

				info.RhymeCardMemoryMid = row.rhyme_card_memory_mid;
				info.Version = row.version;
				info.CardMemorySets = row.card_memory_sets;
				info.SoundBG = row.sound_BG;
				if (row.card_memory_keyword.Length > 0)
				{
					string[] card_memory_keyword_arr = row.card_memory_keyword.Split(';');
					foreach (var i in card_memory_keyword_arr)
					{
						info.CardMemoryKeyword.Add(i);
					}
				}
				if (row.card_memory_img.Length > 0)
				{
					string[] card_memory_img_arr = row.card_memory_img.Split(';');
					foreach (var i in card_memory_img_arr)
					{
						info.CardMemoryImg.Add(i);
					}
				}
				info.SoundAllert = row.sound_allert;
				info.SoundCorrect = row.sound_correct;
				info.SoundWrong = row.sound_wrong;
				if (row.card_memory_keyword_audio.Length > 0)
				{
					string[] card_memory_keyword_audio_arr = row.card_memory_keyword_audio.Split(';');
					foreach (var i in card_memory_keyword_audio_arr)
					{
						info.CardMemoryKeywordAudio.Add(i);
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

				mstTableRhymeCardMemory.Add(info.RhymeCardMemoryMid, info);
			}

			return true;
		}

		public static MasterInfoRhymeCardMemory GetInfo(int rhyme_card_memory_mid)
		{
			if (mstTableRhymeCardMemory.ContainsKey(rhyme_card_memory_mid))
			{
				return mstTableRhymeCardMemory[rhyme_card_memory_mid];
			}

			return null;
		}

		public static Dictionary<int, MasterInfoRhymeCardMemory> GetDic()
		{
			return mstTableRhymeCardMemory;
		}
	}
}
