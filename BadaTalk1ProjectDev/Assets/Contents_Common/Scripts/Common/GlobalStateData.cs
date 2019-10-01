using System.Collections.Generic;
using UnityEngine;

public class GlobalStateData : CommonGlobalStateData
{
    public static int subjectGroupID = 0;
    public static int lessonID = 0;
    public static ExerciseInfo exerciseInfo = new ExerciseInfo(0, ExerciseType.None, 0);
    public static float startExeciseTime = 0;

    public static bool IsTutorial
    {
        get
        {
            return true;
        }
    }
}

public enum ExerciseType
{
    None = 0,
    CardMemory = 62, // Sample

    TalkDemo = 70,
    TalkFallow_directions = 71,
    TalkPatterns = 72,
    TalkVoice_recording = 73,
    TalkPuzzle = 74,
    TalktRain_quiz = 75,
    TalkIntBrushteeth = 76,
    TalkIntWashface = 77,
    TalkIntClean = 78,
    TalkIntHouse = 79,
    TalkIntRobotBuilding = 80,
    TalkIntPajamas = 81,
    TalkIntFirstAid = 82,
    TalkIntPrepareFood = 83,
    TalkIntEmotions = 84,
    TalkIntExercises = 85,

}

public struct ExerciseInfo
{
    public long contentID;
    public ExerciseType exerciseType;
    public int exerciseID;

    public ExerciseInfo(long contentId, ExerciseType type, int id)
    {
        this.contentID = contentId;
        this.exerciseType = type;
        this.exerciseID = id;
    }
}