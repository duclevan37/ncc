using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class DebugViewer : MonoBehaviour {

    [SerializeField]
    private GameObject scrollItemPrefab = null;

    [SerializeField]
    private GameObject contentRoot = null;

    private float contentSize = 0;
    
    private void Start()
    {
        foreach (var text in DebugLogManager.Instance.LogList)
        {
            var item = CreateItem(text);
            item.transform.SetParent(contentRoot.transform);
            item.transform.ResetTransform();
        }

        RectTransform rectTransform = this.contentRoot.transform as RectTransform;
        Vector2 size = rectTransform.sizeDelta;
        size.y = this.contentSize;
        rectTransform.sizeDelta = size;

        DontDestroyOnLoad(this.gameObject);
    }

    private GameObject CreateItem(string message)
    {
        GameObject item = Instantiate<GameObject>(this.scrollItemPrefab);
        if (item != null)
        {
            item.SetActive(true);
            Text text = item.GetComponent<Text>();
            if (text != null)
            {
                text.text = message;
                item.GetComponent<ContentSizeFitter>().SetLayoutVertical();
                RectTransform rectTransform = item.transform as RectTransform;
                this.contentSize += rectTransform.sizeDelta.y;

                return item;
            }
        }

        return null;
    }

    public void OnClickCloseButton()
    {
        Destroy(this.gameObject);
        DebugLogManager.Instance.IsLogView = false;
    }

    public void OnClickClearButton()
    {
        DebugLogManager.Instance.ClearList();

        List<GameObject> childList = new List<GameObject>();
        for (int i = 0; i < this.contentRoot.transform.childCount; i++)
        {
            childList.Add(this.contentRoot.transform.GetChild(i).gameObject);
        }
        
        foreach (var child in childList)
        {
            Destroy(child);
        }
    }
}
