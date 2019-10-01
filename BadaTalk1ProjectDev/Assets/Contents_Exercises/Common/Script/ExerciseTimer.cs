using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ExerciseTimer : MonoBehaviour
{
    [SerializeField]
    private Animator timerAnimator = null;

    [SerializeField]
    private Text timeText = null;

    private int currentTime = 0;
    public int CurrentTime
    {
        get
        {
            return this.currentTime;
        }

        set
        {
            this.currentTime = value;

            this.timeText.text = System.TimeSpan.FromSeconds(this.currentTime).ToString("mm\\:ss");
        }
    }

    private int maxTime = 0;
    public int MaxTime
    {
        get
        {
            return this.maxTime;
        }
    }

    public bool IsDone
    {
        get
        {
            return this.currentTime >= this.maxTime;
        }
    }

    public string TimeText
    {
        get
        {
            return this.timeText.text;
        }
    }

    private Coroutine timerCoroutine = null;

    public void Initialize(int maxTime)
    {
        this.maxTime = maxTime;
        this.CurrentTime = 0;
    }

    public void StartTimer()
    {
        this.timerCoroutine = StartCoroutine(TimerTask());
        this.timerAnimator.speed = 1;
        this.timerAnimator.SetTrigger("PlayTimer");
    }

    public void StopTimer()
    {
        if (this.timerCoroutine != null)
        {
            StopCoroutine(this.timerCoroutine);
            this.timerCoroutine = null;
            this.timerAnimator.speed = 0;
        }
    }

    private IEnumerator TimerTask()
    {
        var wait = new WaitForSeconds(1f);

        while (!this.IsDone)
        {
            yield return wait;

            this.CurrentTime++;
        }

        this.CurrentTime = this.maxTime;
        this.timerCoroutine = null;
    }

#if UNITY_EDITOR
    public void InitializeTest()
    {
        this.timeText = new GameObject().AddComponent<Text>();
    }
#endif
}
