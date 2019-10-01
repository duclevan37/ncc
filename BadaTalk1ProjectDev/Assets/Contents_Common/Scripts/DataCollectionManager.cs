using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DataCollectionManager : CommonDataCollectionManager
{
    public static void Initilize()
    {
        if (instance == null)
        {
            instance = new DataCollectionManager();
        }
    }

    public static void LogRecord(DataCollectionRhymeExerciseReq req)
    {
        req.accId = string.Format("DEVICE_ID_{0}", SystemInfo.deviceUniqueIdentifier);
        req.profId = string.Empty;
        req.sessionId = string.Empty;
        req.lessonId = GlobalStateData.lessonID;
        req.subjectMid = GlobalStateData.subjectGroupID;
        req.contentId = GlobalStateData.exerciseInfo.exerciseID;
        req.contentsMid = GlobalStateData.exerciseInfo.contentID;
        req.contentTypeMid = System.Convert.ToInt32(GlobalStateData.exerciseInfo.exerciseType);
        req.playingDuration = System.Convert.ToInt64((Time.time - GlobalStateData.startExeciseTime).ConvertSecondsToMilliseconds());
        req.actionCompletionTimestamp = DefineUtil.GetCurrUnixTimeMilliseconds();
        req.appId = CommonGlobalStateData.KidsLoopAppID;

        System.Text.StringBuilder logMessage = new System.Text.StringBuilder();
        logMessage.Append("----------------------").AppendLine();
        logMessage.Append("DataCollectionRhymeExerciseReq").AppendLine();
        logMessage.AppendFormat("accId : {0}", req.accId).AppendLine();
        logMessage.AppendFormat("profId : {0}", req.profId).AppendLine();
        logMessage.AppendFormat("sessionId : {0}", req.sessionId).AppendLine();
        logMessage.AppendFormat("lessonId : {0}", req.lessonId).AppendLine();
        logMessage.AppendFormat("subjectMid : {0}", req.subjectMid).AppendLine();
        logMessage.AppendFormat("contentId : {0}", req.contentId).AppendLine();
        logMessage.AppendFormat("contentsMid : {0}", req.contentsMid).AppendLine();
        logMessage.AppendFormat("contentTypeMid : {0}", req.contentTypeMid).AppendLine();
        logMessage.AppendFormat("playingDuration : {0}", req.playingDuration).AppendLine();
        logMessage.AppendFormat("actionCompletionTimestamp : {0}", req.actionCompletionTimestamp).AppendLine();
        logMessage.AppendFormat("exercisePercentage : {0}", req.exercisePercentage).AppendLine();
        logMessage.AppendFormat("isCompleted : {0}", req.isCompleted).AppendLine();
        logMessage.AppendFormat("version : {0}", req.version).AppendLine();
        logMessage.AppendFormat("appId : {0}", req.appId).AppendLine();
        logMessage.AppendFormat("contentAdditionalFields : {0}", req.contentAdditionalFields).AppendLine();
        logMessage.Append("----------------------");
        Debug.Log(logMessage.ToString());
    }

    public override void DataCollectionLogRecord(DataCollectionCommonExerciseReq req)
    {
        req.lessonId = GlobalStateData.lessonID;
        req.subjectMid = GlobalStateData.subjectGroupID;
        req.contentId = GlobalStateData.exerciseInfo.exerciseID;
        req.contentsMid = GlobalStateData.exerciseInfo.contentID;
        req.contentTypeMid = System.Convert.ToInt32(GlobalStateData.exerciseInfo.exerciseType);

        base.DataCollectionLogRecord(req);
    }

    public static void LogRecord(DataCollectionCommonExerciseReq req)
    {
        instance.DataCollectionLogRecord(req);
    }
}
