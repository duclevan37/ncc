using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CommonDataCollectionManager
{
    public enum EventType
    {
        none,
        audio_played,
        text_displayed,
        unit_open,
        unit_close,
        goal_achieved,
        action_response
    }

    public enum ButtonType
    {
        none,
        restart,
        done,
        back
    }

    protected static CommonDataCollectionManager instance = null;

    public virtual void DataCollectionLogRecord(DataCollectionCommonExerciseReq req)
    {
        req.accId = string.Format("DEVICE_ID_{0}", SystemInfo.deviceUniqueIdentifier);
        req.profId = string.Empty;
        req.sessionId = string.Empty;
        req.timestamp = DefineUtil.GetCurrUnixTimeMilliseconds();
        req.version = CommonGlobalStateData.masterdata_version;
        req.appID = CommonGlobalStateData.appIdentificationMid;

        System.Text.StringBuilder logMessage = new System.Text.StringBuilder();
        logMessage.Append("----------------------").AppendLine();
        logMessage.Append("DataCollectionCommonExerciseReq").AppendLine();
        logMessage.AppendFormat("accId : {0}", req.accId).AppendLine();
        logMessage.AppendFormat("profId : {0}", req.profId).AppendLine();
        logMessage.AppendFormat("sessionId : {0}", req.sessionId).AppendLine();
        logMessage.AppendFormat("lessonId : {0}", req.lessonId).AppendLine();
        logMessage.AppendFormat("subjectMid : {0}", req.subjectMid).AppendLine();
        logMessage.AppendFormat("contentId : {0}", req.contentId).AppendLine();
        logMessage.AppendFormat("contentsMid : {0}", req.contentsMid).AppendLine();
        logMessage.AppendFormat("contentTypeMid : {0}", req.contentTypeMid).AppendLine();
        logMessage.AppendFormat("timestamp : {0}", req.timestamp).AppendLine();
        logMessage.AppendFormat("specificField : {0}", req.specificField).AppendLine();
        logMessage.AppendFormat("version : {0}", req.version).AppendLine();
        logMessage.AppendFormat("appID : {0}", req.appID).AppendLine();
        logMessage.AppendFormat("eventName : {0}", req.eventName).AppendLine();
        logMessage.Append("----------------------");
        Debug.Log(logMessage.ToString());
    }

    public static void AudioPlayed(string audioName)
    {
        var req = new DataCollectionCommonExerciseReq();
        {
            AudioPlayedAdditionalData data = new AudioPlayedAdditionalData();
            data.playedText = audioName;
            req.specificField = JsonUtility.ToJson(data);
            req.eventName = EventType.audio_played.ToString();
        }

        if (instance != null)
        {
            instance.DataCollectionLogRecord(req);
        }
    }

    public static void TextDisplayed(string text)
    {
        var req = new DataCollectionCommonExerciseReq();
        {
            TextDisplayedAddtionalData data = new TextDisplayedAddtionalData();
            data.textDisplayed = text;
            req.specificField = JsonUtility.ToJson(data);
            req.eventName = EventType.text_displayed.ToString();
        }

        if (instance != null)
        {
            instance.DataCollectionLogRecord(req);
        }
    }

    public static void UnitOpen()
    {
        var req = new DataCollectionCommonExerciseReq();
        req.eventName = EventType.unit_open.ToString();
        if (instance != null)
        {
            instance.DataCollectionLogRecord(req);
        }
    }

    public static void UnitClose(ButtonType type)
    {
        var req = new DataCollectionCommonExerciseReq();
        {
            UnitCloseAdditionalData data = new UnitCloseAdditionalData();
            data.closeButton = type.ToString();
            req.specificField = JsonUtility.ToJson(data);
            req.eventName = EventType.unit_close.ToString();
        }

        if (instance != null)
        {
            instance.DataCollectionLogRecord(req);
        }
    }

    public static void GoalAchieved()
    {
        var req = new DataCollectionCommonExerciseReq();
        req.eventName = EventType.goal_achieved.ToString();

        if (instance != null)
        {
            instance.DataCollectionLogRecord(req);
        }
    }

    public static string GetDecimalPoint(float value)
    {
        return value.ToString("N2");
    }

    public class UnitCloseAdditionalData
    {
        public string closeButton = string.Empty;
    }

    public class AudioPlayedAdditionalData
    {
        public string playedText = string.Empty;
    }

    public class TextDisplayedAddtionalData
    {
        public string textDisplayed = string.Empty;
    }
}
