using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DebugLogManager : MonoBehaviour {

    private static DebugLogManager instance = null;
    public static DebugLogManager Instance
    {
        get
        {
            return instance;
        }
    }

    private bool isLogView = false;
    public bool IsLogView
    {
        set
        {
            this.isLogView = value;
        }
    }

    private const int logCount = 100;

    private List<string> logList = new List<string>();
    public List<string> LogList
    {
        get
        {
            return this.logList;
        }
    }

    private void Awake()
    {
        instance = this;

        Application.logMessageReceived += LogCallback;
    }

    private void OnDestroy()
    {
        Application.logMessageReceived -= LogCallback;
    }

    private void OnGUI()
    {
        if (GUI.Button(new Rect(0, 0, 60,30), string.Empty))
        {
            ShowLogViewer();
        }
    }


    private void LogCallback(string condition, string stackTrace, LogType type)
    {
        string color = string.Empty;
        switch (type)
        {
            case LogType.Log:
                color = "black";
                break;
            case LogType.Warning:
                color = "yellow";
                break;
            default:
                color = "red";
                break;
        }

        string message = string.Format("<color={0}>[{1}] {2}\n{3}</color>", color, System.DateTime.Now.ToString("hh:mm:ss"), condition, stackTrace);
        this.logList.Insert(0, message);

        if (this.logList.Count >= logCount)
        {
            this.logList.RemoveAt(this.logList.Count - 1);
        }

        if (type != LogType.Log && type != LogType.Warning && !this.isLogView)
        {
            ShowLogViewer();
        }
    }

    private void ShowLogViewer()
    {
        GameObject prefab = Resources.Load<GameObject>("Prefabs/DebugViewer");

        if (prefab != null)
        {
            var logView = GameObject.Instantiate<GameObject>(prefab);
            if (logView != null)
            {
                logView.transform.ResetTransform();
                this.isLogView = true;
            }
        }
    }

    public void ClearList()
    {
        this.LogList.Clear();
    }
}
