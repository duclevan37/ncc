using System;
using System.Collections.Generic;

///////////////////////////////////////////////////////////////////////////
/// Data Collection - 온라인 버전 임베드 버전 공통
///////////////////////////////////////////////////////////////////////////

[Serializable]
public class DataCollectionAllTogetherReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_ALL_TOGETHER_REQ;
    public string session;
    public string logAccId;
    public List<object> dataCollectionPackets;
}

[Serializable]
public class DataCollectionAllTogetherAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_ALL_TOGETHER_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

[Serializable]
public class DataCollectionAllTogetherV2Req
{
    public MsgType msgType = MsgType.DATACOLLECTION_ALL_TOGETHER_V2_REQ;
    public string session;
    public string logAccId;
    public List<string> dataCollectionPackets;
}

[Serializable]
public class DataCollectionAllTogetherV2Ack
{
    public MsgType msgType = MsgType.DATACOLLECTION_ALL_TOGETHER_V2_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

//
[Serializable]
public class DataCollectionSongsAddFavoritesReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_SONGS_ADD_FAVORITES_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    public int songsMid;
    public Int64 actionCompletionTimestamp;
    public int version;
}

[Serializable]
public class DataCollectionSongsAddFavoritesAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_SONGS_ADD_FAVORITES_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

[Serializable]
public class DataCollectionSongsRemoveFavoritesReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_SONGS_REMOVE_FAVORITES_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    public int songsMid;
    public Int64 actionCompletionTimestamp;
    public int version;
}

[Serializable]
public class DataCollectionSongsRemoveFavoritesAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_SONGS_REMOVE_FAVORITES_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

[Serializable]
public class DataCollectionSongsLogPlayingReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_SONGS_PLAYING_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    public int songsMid;
    public Int64 actionCompletionTimestamp;
    public Int64 playingDuration;
    public double playingDurationPercent;
    public int version;
    public string appId;
}

[Serializable]
public class DataCollectionSongsLogPlayingAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_SONGS_PLAYING_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

//
[Serializable]
public class DataCollectionBooksAddFavoritesReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_BOOKS_ADD_FAVORITES_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    public int booksMid;
    public Int64 actionCompletionTimestamp;
    public int version;
}

[Serializable]
public class DataCollectionBooksAddFavoritesAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_BOOKS_ADD_FAVORITES_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

[Serializable]
public class DataCollectionBooksRemoveFavoritesReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_BOOKS_REMOVE_FAVORITES_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    public int booksMid;
    public Int64 actionCompletionTimestamp;
    public int version;
}

[Serializable]
public class DataCollectionBooksRemoveFavoritesAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_BOOKS_REMOVE_FAVORITES_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

[Serializable]
public class DataCollectionBooksLogPlayingReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_BOOKS_PLAYING_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    public int booksMid;
    public Int64 actionCompletionTimestamp;
    public Int64 playingDuration;
    public Int64 narrationDuratioin;
    public int numPassedPage;
    public int maximumPageIndex;
    public int exitPageIndex;
    public double completedPagePercent;
    public int version;
    public string appId;
}

[Serializable]
public class DataCollectionBooksLogPlayingAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_BOOKS_PLAYING_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

//
[Serializable]
public class DataCollectionQuickClipsUnlockReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_QUICK_CLIPS_UNLOCK_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    public int contentsMid;
    public Int64 actionCompletionTimestamp;
    public int version;
}

[Serializable]
public class DataCollectionQuickClipsUnlockAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_QUICK_CLIPS_UNLOCK_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

[Serializable]
public class DataCollectionQuickClipsRewardReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_QUICK_CLIPS_REWARD_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    public int contentsMid;
    public Int64 actionCompletionTimestamp;
    public int version;
}

[Serializable]
public class DataCollectionQuickClipsRewardAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_QUICK_CLIPS_REWARD_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

[Serializable]
public class DataCollectionQuickClipsLogPlayingReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_QUICK_CLIPS_PLAYING_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    public int contentsMid;
    public Int64 actionCompletionTimestamp;
    public List<int> answer;
    public Int64 playingDuration;
    public List<int> answerPosition;
    public int version;
}

[Serializable]
public class DataCollectionQuickClipsLogPlayingAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_QUICK_CLIPS_PLAYING_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

//
[Serializable]
public class DataCollectionCadetsLogPlayingReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_CADETS_PLAYING_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    public int episodeMid;
    public Int64 exitPlayingSec;
    public Int64 actionCompletionTimestamp;
    public Int64 playingDuration;
    public double playingDurationPercentage;
    public int version;
}

[Serializable]
public class DataCollectionCadetsLogPlayingAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_CADETS_PLAYING_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

//
[Serializable]
public class DataCollectionRhymeExerciseReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_RHYME_EXERCISE_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    //public Int64 exerciseId;
    public Int64 contentsMid;
    public int subjectMid;
    public int lessonId;
    public int contentTypeMid;
    public int contentId;
    public Int64 playingDuration;
    public Int64 actionCompletionTimestamp;
    public double exercisePercentage;
    public bool isCompleted;
    public int version;
    public string appId;
    public string contentAdditionalFields;
}

[Serializable]
public class DataCollectionRhymeExerciseAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_RHYME_EXERCISE_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

[Serializable]
public class DataCollectionRhymeLessonQuiz
{
    public Int64 actionCompletionTimestamp;
    public Int64 playingDuration;
    public List<int> answerPosition;
    public List<int> answerList;
    public int version;
}

[Serializable]
public class DataCollectionRhymeLessonReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_RHYME_LESSON_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    public Int64 contentsMid;
    public int subjectMid;
    public int lessonId;
    public int contentTypeMid;
    public int contentId;
    public int scoreStar;
    public List<DataCollectionRhymeLessonQuiz> answerPaper;
    public Int64 actionCompletionTimestamp;
    public bool isCompleted;
    public int version;
}

[Serializable]
public class DataCollectionRhymeLessonAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_RHYME_LESSON_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}

///////////////////////////////////////////////////////////////////////////

[Serializable]
public class DataCollectionCommonExerciseReq
{
    public MsgType msgType = MsgType.DATACOLLECTION_COMMON_EXERCISE_REQ;
    public string accId;
    public string profId;
    public string sessionId;
    public Int64 contentsMid;
    public int subjectMid;
    public int lessonId;
    public int contentTypeMid;
    public int contentId;
    public Int64 timestamp;
    public string specificField;
    public int version;
    public string appID;
    public string eventName;
}

[Serializable]
public class DataCollectionCommonExerciseAck
{
    public MsgType msgType = MsgType.DATACOLLECTION_COMMON_EXERCISE_ACK;
    public ErrCode errCode = ErrCode.UNKNOWN;
}
