using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class LineDataCollection : MonoBehaviour
{
    [SerializeField]
    private RectTransform canvasRect = null;

    private List<Vector2> posList = new List<Vector2>();
    private IEnumerator coroutine = null;

    public RectTransform CanvasRect
    {
        get { return canvasRect; }
        set { canvasRect = value; }
    }

    public void StartDataCollection()
    {
        posList.Clear();
        coroutine = StartRecord();
        StartCoroutine(coroutine);
    }

    public string GetLineDataString()
    {
        string result = string.Empty;
        StopCoroutine(coroutine);

        CountData data = new CountData();

        for (int i = 0; i < posList.Count; i++)
        {
            data.line.Add(new PosData());
            data.line[i].x = GetDecimalPoint(posList[i].x);
            data.line[i].y = GetDecimalPoint(posList[i].y);
        }
        result = JsonUtility.ToJson(data);

        return result;
    }


    public List<PosData> GetLineData()
    {
        StopCoroutine(coroutine);

        List<PosData> line = new List<PosData>();

        for (int i = 0; i < posList.Count; i++)
        {
            line.Add(new PosData());
            line[i].x = GetDecimalPoint(posList[i].x);
            line[i].y = GetDecimalPoint(posList[i].y);
        }

        return line;
    }


    private IEnumerator StartRecord()
    {
        while (true)
        {
            posList.Add(ChangePos(Input.mousePosition));
            yield return new WaitForSeconds(0.2f);
        }
        yield return null;
    }

    private Vector2 ChangePos(Vector2 pos)
    {
        Vector2 resultPos;
        int wid = Screen.width;
        int hei = Screen.height;

        resultPos.x = (pos.x - (wid / 2)) / wid;
        resultPos.y = (pos.y - (hei / 2)) / hei;

        resultPos.x *= CanvasRect.rect.width;
        resultPos.y *= CanvasRect.rect.height;

        return resultPos;
    }

    public string GetDecimalPoint(float value)
    {
        return value.ToString("N2");
    }


    [System.Serializable]
    public class CountData
    {
        public List<PosData> line = new List<PosData>();
    }

    [System.Serializable]
    public class PosData
    {
        public string x = string.Empty;
        public string y = string.Empty;
    }
}
