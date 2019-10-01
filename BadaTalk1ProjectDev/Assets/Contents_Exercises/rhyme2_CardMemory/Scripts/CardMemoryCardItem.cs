using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using DG.Tweening;
using CalmIsland;
using UnityEngine.Assertions;

public class CardMemoryCardItem : MonoBehaviour
{
    [SerializeField]
    protected GameObject backImage = null;
    public GameObject BackImage
    {
        get
        {
            return this.backImage;
        }
    }

    [SerializeField]
    protected GameObject keywordRoot = null;
    public GameObject KeywordRoot
    {
        get
        {
            return this.keywordRoot;
        }
    }

    [SerializeField]
    protected Image keywordBackground = null;
    public Image KeywordBackground
    {
        get
        {
            return this.keywordBackground;
        }
    }

    [SerializeField]
    protected Image keywordImage = null;
    public Image KeywordImage
    {
        get
        {
            return this.keywordImage;
        }
    }

    [SerializeField]
    protected Text keywordText = null;
    public Text KeywordText
    {
        get
        {
            return this.keywordText;
        }
    }

    [SerializeField]
    protected GameObject successFX = null;
    public GameObject SuccessFX
    {
        get
        {
            return this.successFX;
        }
    }

    [SerializeField]
    protected float flipDuration = 0.1f;

    [SerializeField]
    protected float touchScaleValue = 1.5f;
    public float TouchScaleValue
    {
        get
        {
            return this.touchScaleValue;
        }
    }

    [SerializeField]
    protected float touchScaleDuration = 0.1f;
    public float TouchScaleDuration
    {
        get
        {
            return this.touchScaleDuration;
        }
    }

    [SerializeField]
    protected float indicatorScaleValue = 1.5f;
    public float IndicatorScaleValue
    {
        get
        {
            return this.indicatorScaleValue;
        }
    }

    [SerializeField]
    protected float indicatorScaleDuration = 0.1f;
    public float IndicatorScaleDuration
    {
        get
        {
            return this.indicatorScaleDuration;
        }
    }

    public bool IsFront
    {
        get
        {
            return this.keywordRoot.activeInHierarchy;
        }

        set
        {
            this.transform.DOLocalRotate(new Vector3(0, 90, 0), this.flipDuration).onComplete = () =>
            {
                this.keywordRoot.SetActive(value);
                this.backImage.SetActive(!value);
                this.transform.DOLocalRotate(new Vector3(0, 0, 0), this.flipDuration).onComplete = () =>
                {
                    if (onCompleteFlip != null)
                    {
                        onCompleteFlip(value, this);
                    }
                };
            };

            DataCollectionManager.TextDisplayed(this.keywordText.text);
        }
    }

    protected System.Action<bool, CardMemoryCardItem> onCompleteFlip = null;
    public System.Action<bool, CardMemoryCardItem> OnCompleteFlip
    {
        set
        {
            this.onCompleteFlip = value;
        }
    }

    protected int positionIndex = -1;
    public int PositionIndex
    {
        get
        {
            return this.positionIndex;
        }
    }

    protected int keywordIndex = -1;
    public int KeywordIndex
    {
        get
        {
            return this.keywordIndex;
        }
    }

    protected bool isClear = false;
    public bool IsClear
    {
        get
        {
            return this.isClear;
        }

        set
        {
            this.isClear = value;
        }
    }

    protected bool isLock = false;
    public bool IsLock
    {
        get
        {
            return this.isLock;
        }

        set
        {
            this.isLock = value;
        }
    }

    protected string keywordVoice = string.Empty;
    protected Sequence indicatorSequence = null;

    public void InitKeyword(int positionIdx, MasterInfoRhymeCardMemory info, int keywordIdx)
    {
        this.positionIndex = positionIdx;
        this.keywordIndex = keywordIdx;
        string keywordBGPath = string.Format("CardMemory{0}/card_memory_img_card_{0}", info.RhymeCardMemoryMid);
        var keywordBG = Resources.Load<Sprite>(keywordBGPath);

        Assert.IsNotNull(keywordBG, keywordBGPath);
        this.keywordBackground.ChangeSprite(keywordBG);

        if (keywordIdx >= 0 && keywordIdx < info.CardMemoryImg.Count)
        {
            string keywordPath = string.Format("CardMemory{0}/{1}", info.RhymeCardMemoryMid, info.CardMemoryImg[keywordIdx]);
            var keywordSprite = Resources.Load<Sprite>(keywordPath);

            Assert.IsNotNull(keywordSprite, keywordPath);
            this.keywordImage.ChangeSprite(keywordSprite);
        }
        else
        {
            Debug.LogErrorFormat("error CardMemoryImg.Count : {0}, index : {1}", info.CardMemoryImg.Count, keywordIdx);
        }

        if (keywordIdx >= 0 && keywordIdx < info.CardMemoryKeyword.Count)
        {
            this.keywordText.text = info.CardMemoryKeyword[keywordIdx];
        }
        else
        {
            Debug.LogErrorFormat("error CardMemoryKeyword.Count : {0}, index : {1}", info.CardMemoryKeyword.Count, keywordIdx);
        }

        if (keywordIdx >= 0 && keywordIdx < info.CardMemoryKeywordAudio.Count)
        {
            this.keywordVoice = info.CardMemoryKeywordAudio[keywordIdx];
        }
        else
        {
            Debug.LogErrorFormat("error CardMemoryKeywordAudio.Count : {0}, index : {1}", info.CardMemoryKeywordAudio.Count, keywordIdx);
        }        
    }

    public void PlayKeywordVoice(System.Action onComplete = null)
    {
        this.keywordVoice.PlaySound(false, 0, onComplete);

        DataCollectionManager.AudioPlayed(this.keywordText.text);
    }

    public void ShowIndicator()
    {
        this.indicatorSequence = DOTween.Sequence();
        this.indicatorSequence.Append(this.transform.DOScale(this.indicatorScaleValue, this.indicatorScaleDuration));
        this.indicatorSequence.Append(this.transform.DOScale(1, this.indicatorScaleDuration));
        this.indicatorSequence.onComplete = () =>
        {
            this.indicatorSequence = null;
        };
    }

    public void HideIndicator()
    {
        if (this.indicatorSequence != null)
        {
            this.indicatorSequence.Kill();
            this.indicatorSequence = null;
        }
    }

    public void ShowEffect()
    {
        this.successFX.SetActive(true);
    }

    public void OnClickBackButton()
    {
        Debug.Log("OnClickBackButton");

        if (!this.isLock)
        {
            IsFront = true;
        }        
    }

    public void OnClickFrontButton()
    {
        Debug.Log("OnClickFrontButton");

        if (!this.isLock)
        {
            Sequence sequence = DOTween.Sequence();
            sequence.Append(this.transform.DOScale(this.touchScaleValue, this.touchScaleDuration));
            sequence.Append(this.transform.DOScale(1, this.touchScaleDuration));

            PlayKeywordVoice();
        }
    }
}
