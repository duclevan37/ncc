#if USE_SEQUENCE
using UnityEngine;
using UnityEngine.UI;
using System;
using DG.Tweening;
using System.Collections.Generic;
using System.Collections;
using UnityEngine.SceneManagement;
using System.Linq;

public class SequenceManager : MonoBehaviour
{

    private static SequenceManager instance = null;

    public enum CharacterIndex
    {
        bada = 0,
        jess,
        curly,
        pogo
    }
    public static CharacterIndex charIdx;
    public static string i_Text;
    public static string i_SoundPath;
    public static List<string> o_Texts = new List<string>();
    public static List<string> o_Sound = new List<string>();
    public static Action callback = null;

    [SerializeField]
    private Image charImage = null;

    [SerializeField]
    private Image backgroundImage = null;

    [SerializeField]
    private Image bubbleImage = null;

    [SerializeField]
    private Text speechBubbleText = null;
    private string bubbleText
    {
        set
        {
            speechBubbleText.text = value.Replace("\\n", "\n");
        }
    }

    [SerializeField]
    private GameObject ending_particle = null;

    [SerializeField]
    private GameObject backButton = null;

    [SerializeField]
    private GameObject restartButton = null;

    private Sprite[] character = new Sprite[2];

    [SerializeField]
    private string soundPath = "Sounds";

    private float timer = 0;
    private float ratio = 0;
    private int outroRand = 0;
    private bool ableButton = false;
    private static bool showStart = true;

    private CanvasGroup canvasGroup;

    public static bool ShowStart
    {
        set { showStart = value; }
    }
    private void Awake()
    {
        instance = this;
        instance.ending_particle.SetActive(false);
        canvasGroup = GetComponent<CanvasGroup>();
    }
    private void OnDestroy()
    {
        o_Texts = null;
        o_Sound = null;
        callback = null;
    }
    private void Start()
    {
        SetCharacter(charIdx);
        S_Intro();
    }
    public static void SetSequence(CharacterIndex ch, string introText, List<string> outroTexts, string introSoundPath, List<string> outroSound, Action action = null)
    {
        if (outroTexts.Count != outroSound.Count)
        {
            Debug.LogErrorFormat("outroText, outroSound count not match!   {0}   {1}", outroTexts.Count, outroSound.Count);
            return;
        }
        GameObject prefab = Resources.Load("Sequence") as GameObject;
        var curlyObj = Instantiate(prefab);
        curlyObj.name = "Sequence";
        curlyObj.transform.localPosition = Vector3.zero;

        charIdx = ch;
        i_Text = introText;
        o_Texts = outroTexts;
        i_SoundPath = introSoundPath;
        o_Sound = outroSound;
        callback = action;
    }
    public void S_Intro()
    {
        instance.charImage.sprite = instance.character[0];
        instance.charImage.rectTransform.sizeDelta = new Vector2(instance.character[0].rect.width, instance.character[0].rect.height);
        instance.bubbleText = i_Text;
        instance.timer = 0;

        if (showStart)
        {
            instance.gameObject.SetActive(true);
            instance.StartCoroutine(instance.IntroStart());
            showStart = false;
        }
        else
        {
            CallAction();
            instance.gameObject.SetActive(false);
        }
    }

    IEnumerator IntroStart()
    {
        while (true)
        {
            timer += Time.deltaTime;
            ratio = timer / 0.5f;
            charImage.transform.localPosition = Vector3.Lerp(new Vector3(-1300f, 0f, 0f), Vector3.zero, ratio);
            if (ratio > 1)
            {
                timer = 0;
                SetTween(bubbleImage.transform);
                if(i_SoundPath.IsNullOrEmpty() == false)
                {
                    CommonDataCollectionManager.TextDisplayed(i_Text);
                    CommonDataCollectionManager.AudioPlayed(i_Text);
                    i_SoundPath.PlayOneShotSound(0, () =>
                    {
                        StartCoroutine(IntroEnd());
                    });
                }
                else
                {
                    StartCoroutine(IntroEnd());
                }
                break;
            }
            yield return null;
        }
    }

    IEnumerator IntroEnd()
    {
        while (true)
        {
            timer += Time.deltaTime;
            ratio = 1 - (timer / 0.5f);

            ColorChange(ratio);

            if (ratio < 0)
            {
                CallAction();
                this.gameObject.SetActive(false);
                speechBubbleText.text = string.Empty;
                break;
            }
            yield return null;
        }
    }

    public static void S_Outro(string[] str = null, float delay = 1f)
    {
        instance.gameObject.SetActive(true);
        instance.backgroundImage.SetActive(false);
        instance.StartCoroutine(instance.OutDelay(str, delay));
    }
    public IEnumerator OutDelay(string[] str = null, float delay = 1f)
    {
        yield return new WaitForSeconds(delay);
        instance.backgroundImage.SetActive(true);
        SoundManager.AllStop();
        ending_particle.SetActive(true);
        outroRand = UnityEngine.Random.Range(0, o_Texts.Count);
        if (str == null)
        {
            bubbleText = o_Texts[outroRand];
        }
        else
        {
            bubbleText = SetSpeechBubbleText(o_Texts[outroRand], str);
        }
        charImage.color = Color.white;
        charImage.transform.localPosition = new Vector3(-1300f, 0f, 0f);
        bubbleImage.transform.localScale = Vector3.zero;
        charImage.sprite = instance.character[1];
        charImage.rectTransform.sizeDelta = new Vector2(character[1].rect.width, character[1].rect.height);
        backgroundImage.color = new Color(0f, 0f, 0f, 0f);

        backButton.GetComponent<Image>().color = Color.white;
        restartButton.GetComponent<Image>().color = Color.white;

        ableButton = false;
        timer = 0;
        StartCoroutine(OutroStart());

        string path = "common_learn_end_fanfare";
        path.PlayOneShotSound(1);
    }
    IEnumerator OutroStart()
    {
        while (true)
        {
            timer += Time.deltaTime;
            ratio = (timer / 0.5f);
            charImage.transform.localPosition = Vector3.Lerp(new Vector3(-1300f, 0f, 0f), Vector3.zero, ratio);
            backgroundImage.color = new Color(0f, 0f, 0f, 0.3921569f * ratio);
            canvasGroup.alpha = ratio;
            if (ratio > 1)
            {
                timer = 0;
                SetTween(bubbleImage.transform);
                SetTween(backButton.transform);
                SetTween(restartButton.transform);
                break;
            }
            yield return null;
        }
        StartCoroutine(OutroWaitPlaySound());
    }

    IEnumerator OutroWaitPlaySound()
    {
        while (true)
        {
            timer += Time.deltaTime;
            ratio = (timer / 0.5f);
            if (ratio > 1)
            {
                ableButton = true;
                timer = 0;
                break;
            }
            yield return null;
        }
        yield return new WaitForSeconds(2.5f);
        o_Sound[outroRand].PlayOneShotSound();
        CommonDataCollectionManager.TextDisplayed(o_Texts[outroRand]);
        CommonDataCollectionManager.AudioPlayed(o_Texts[outroRand]);
    }

    private string SetSpeechBubbleText(string str, string[] strArray)
    {
        string temp = str;
        for (int i = 0; i < strArray.Length; i++)
        {
            temp = temp.Replace(string.Format("{{{0}}}", i), strArray[i]);
        }
        return temp;
    }
    private void ColorChange(float ratio)
    {
        canvasGroup.alpha = ratio;
        var colorAlpha = new Color(1f, 1f, 1f, ratio);
        backgroundImage.color = new Color(0f, 0f, 0f, 0.3921569f * ratio);
    }
    private void SetCharacter(CharacterIndex ch)
    {
        switch (ch)
        {
            case CharacterIndex.bada:
                character[0] = Resources.Load<Sprite>(string.Format("Bada/bada_in"));
                character[1] = Resources.Load<Sprite>(string.Format("Bada/bada_out"));
                break;
            case CharacterIndex.jess:
                character[0] = Resources.Load<Sprite>(string.Format("Jess/jess_in"));
                character[1] = Resources.Load<Sprite>(string.Format("Jess/jess_out"));
                break;
            case CharacterIndex.curly:
                character[0] = Resources.Load<Sprite>(string.Format("Curly/curly_in"));
                character[1] = Resources.Load<Sprite>(string.Format("Curly/curly_out"));
                break;
            case CharacterIndex.pogo:
                character[0] = Resources.Load<Sprite>(string.Format("Pogo/pogo_in"));
                character[1] = Resources.Load<Sprite>(string.Format("Pogo/pogo_out"));
                break;
        }

    }
    private void CallAction()
    {
        if (callback != null)
        {
            callback();
        }
    }
    private void SetTween(Transform trans)
    {
        trans.localScale = Vector3.zero;
        trans.DOScale(Vector3.one, 0.5f).SetEase(Ease.OutBack);
    }
    public void OnEndGameBtton()
    {
        if (ableButton)
        {
            ableButton = false;
            showStart = true;
            CommonDataCollectionManager.UnitClose(CommonDataCollectionManager.ButtonType.done);
            AppManager._instance.BeforeSceneChange();
        }
    }

    public void OnRestartGameButton()
    {
        if (ableButton)
        {
            ableButton = false;
            CommonDataCollectionManager.UnitClose(CommonDataCollectionManager.ButtonType.restart);
            if (AppManager._instance == null)
            {
                var currentScene = SceneManager.GetActiveScene().name;
                SceneManager.LoadSceneAsync(currentScene.ToString(), LoadSceneMode.Single);
            }
            else
            {
                StartCoroutine(RestartAnimation());
            }
        }
    }
    IEnumerator RestartAnimation()
    {
        while (true)
        {
            timer += Time.deltaTime;
            ratio = 1 - (timer / 0.5f);

            ColorChange(ratio);

            if (ratio < 0)
            {
                AppManager._instance.NextSceneChange(AppManager._instance.GetCurrentScene());
                break;
            }
            yield return null;
        }
    }
}
#endif
