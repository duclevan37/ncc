using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class ExerciseBottomBar : MonoBehaviour
{
    public enum UIType
    {
        All,
        Bar,
        Icon
    }

    [SerializeField]
    Transform[] UI_BarList = null;

    [SerializeField]
    Transform[] UI_IconList = null;

    [SerializeField]
    RectTransform startPointForBar = null;

    [SerializeField]
    RectTransform startPointForIcon = null;

    List<Vector3> resultBarPositions = new List<Vector3>();
    List<Vector3> resultIconPositions = new List<Vector3>();

    UIType currentUiType = UIType.All;

    void Start()
    {
        CollectPositions();
        InitializePositions();
    }

    void CollectPositions()
    {
        if (UI_BarList != null)
        {
            for (int i = 0; i < UI_BarList.Length; i++)
            {
                if (resultBarPositions == null)
                    resultBarPositions = new List<Vector3>();

                resultBarPositions.Add(UI_BarList[i].GetComponent<RectTransform>().localPosition);
            }
        }

        if (UI_IconList != null)
        {
            for (int i = 0; i < UI_IconList.Length; i++)
            {
                if (resultIconPositions == null)
                    resultIconPositions = new List<Vector3>();

                resultIconPositions.Add(UI_IconList[i].GetComponent<RectTransform>().localPosition);
            }
        }
    }

    public void InitializePositions(UIType uiType = ExerciseBottomBar.UIType.All)
    {
        if (uiType == UIType.All || uiType == UIType.Bar)
        {
            for (int i = 0; i < UI_BarList.Length; i++)
                UI_BarList[i].GetComponent<RectTransform>().localPosition = startPointForBar.localPosition;
        }

        if (uiType == UIType.All || uiType == UIType.Icon)
        {
            for (int i = 0; i < UI_IconList.Length; i++)
                UI_IconList[i].GetComponent<RectTransform>().localPosition = startPointForIcon.localPosition;
        }
    }

    public void ShowBottomBar(UIType uiType = ExerciseBottomBar.UIType.All)
    {
        currentUiType = uiType;

        StartCoroutine(ShowBottomBar());
    }

    IEnumerator ShowBottomBar()
    {
        if (currentUiType == UIType.All || currentUiType == UIType.Bar)
        {
            for (int i = 0; i < UI_BarList.Length; i++)
                UI_BarList[i].DOLocalMoveY(resultBarPositions[i].y, 0.8f).SetEase(Ease.OutBack);

            if (currentUiType == UIType.Bar)
                yield break;
        }

        yield return new WaitForSeconds(0.8f);

        for (int i = 0; i < UI_IconList.Length; i++)
            UI_IconList[i].DOLocalMoveX(resultIconPositions[i].x, 1.5f).SetEase(Ease.OutQuart);

        SoundManager.PlayOneShot(Resources.Load<AudioClip>("Geniussound/quiz_ui_object_4pcs"));
    }
}
