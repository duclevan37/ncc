using System.IO;

using UnityEngine;
using SQLite4Unity3d;
using System;
using System.Security.Cryptography;

namespace CalmIsland
{
	public class MasterData
	{
		public bool LoadAssetbundle(string phase)
		{
			var dbName = string.Format("master_data_{0}.bytes", phase);
			var dbPath = string.Format("{0}/{1}", Application.persistentDataPath, dbName);
			var db = Resources.Load<TextAsset>(string.Format("MasterData/master_data_{0}", phase));
			CopyTextAssetToDatabase(dbPath, db);

			return Load(phase);
		}

		public bool Load(string phase)
		{
			var dbName = string.Format("master_data_{0}.bytes", phase);
			var dbPath = string.Format("{0}/{1}", Application.persistentDataPath, dbName);

			var dbConn = new SQLiteConnection(dbPath, SQLiteOpenFlags.ReadOnly);

#if MASTERDATA_BANDATALK1 || MASTERDATA_ALL
			var mstTableBandatalk1TrainQuiz = new MasterTableBandatalk1TrainQuiz();
			if (!mstTableBandatalk1TrainQuiz.Load(dbConn)) return false;
#endif

			var mstTableError = new MasterTableError();
			if (!mstTableError.Load(dbConn)) return false;

			var mstTableMessage = new MasterTableMessage();
			if (!mstTableMessage.Load(dbConn)) return false;

#if MASTERDATA_RHYME2 || MASTERDATA_ALL
			var mstTableRhymeCardMemory = new MasterTableRhymeCardMemory();
			if (!mstTableRhymeCardMemory.Load(dbConn)) return false;
#endif

			var mstTableUIText = new MasterTableUIText();
			if (!mstTableUIText.Load(dbConn)) return false;

			dbConn.Close();
			dbConn.Dispose();

			return true;
		}

		private static void CopyTextAssetToDatabase(string dbPath, TextAsset db)
		{
			FileStream stream = null;

			try
			{
				if (!File.Exists(dbPath))
				{
					stream = File.Create(dbPath);
				}
				else
				{
					var fileHash = CalculateMD5FromFile(dbPath);
					var assetHash = CalculateMD5FromByte(db.bytes);

					if (fileHash.Equals(assetHash))
					{
						Debug.Log("File is same with text asset. skip copying.");
						return;
					}

					stream = File.OpenWrite(dbPath);
				}

				var writer = new BinaryWriter(stream);
				writer.Write(db.bytes);
				writer.Flush();
				writer.Close();
	
#if UNITY_IOS
				UnityEngine.iOS.Device.SetNoBackupFlag(dbPath);
#endif
			}
			catch (Exception e)
			{
				throw e;
			}
		}

		private static string CalculateMD5FromFile(string filename)
		{
			using(var md5 = MD5.Create())
			{
				using (var stream = File.OpenRead(filename))
				{
					var hash = md5.ComputeHash(stream);
					return ConvertBitToString(hash);
				}
			}
		}

		private static string CalculateMD5FromByte(byte[] buffer)
		{
			using(var md5 = MD5.Create())
			{
				var hash = md5.ComputeHash(buffer);
				return ConvertBitToString(hash);
			}
		}

		private static string ConvertBitToString(byte[] hash)
		{
			return BitConverter.ToString(hash).Replace("-", "").ToLowerInvariant();
		}
	}
}
