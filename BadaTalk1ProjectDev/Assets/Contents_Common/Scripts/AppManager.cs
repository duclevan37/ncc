using CalmIsland;
using Common;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public enum SceneLevel
{
    AppManagerScene = 0,
    ExerciseTest,
    Exercise_CardMemory, // Sample
    TrainQuiz,
}

public class AppManager : CommonAppManager
{
    public static AppManager _instance = null;

    protected override void Awake()
    {
        _instance = this;

        base.Awake();

        GlobalStateData.appIdentificationMid = "ExerciseTest";

        DataCollectionManager.Initilize();
    }

    protected override void Start()
    {
        base.Start();
    }    
}