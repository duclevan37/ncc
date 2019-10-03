using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using CalmIsland;
using DG.Tweening;
using UnityEngine.Assertions;

public class CardMemoryManager : MonoBehaviour
{
    [System.Serializable]
    public class CardMemoryDataCollectionData
    {
        public List<string> randomInfo = null;
        public List<int> cardMatched = null;
        public bool isCorrect = false;
    }

    [SerializeField]
    protected Transform cardGroup = null;
    public Transform CardGroup
    {
        get
        {
            return this.cardGroup;
        }
    }

    [SerializeField]
    protected GameObject cardPrefab = null;
    public GameObject CardPrefab
    {
        get
        {
            return this.cardPrefab;
        }
    }

    [SerializeField]
    protected Animator handObject = null;
    public Animator HandObject
    {
        get
        {
            return this.handObject;
        }
    }

    [Space]
    [Header("Option Value")]
    [SerializeField]
    [Range(0, 10)]
    protected float startDelayTime = 2;
    public float StartDelayTime
    {
        get
        {
            return this.startDelayTime;
        }
    }

    [SerializeField]
    protected float cardMoveDuration = 0.5f;
    public float CardMoveDuration
    {
        get
        {
            return this.cardMoveDuration;
        }
    }

    [SerializeField]
    protected float cardMoveDelayTime = 2f;
    public float CardMoveDelayTime
    {
        get
        {
            return this.cardMoveDelayTime;
        }
    }

    [SerializeField]
    protected float successScaleValue = 1.5f;
    public float SuccessScaleValue
    {
        get
        {
            return this.successScaleValue;
        }
    }

    [SerializeField]
    protected float successScaleDuration = 0.1f;
    public float SuccessScaleDuration
    {
        get
        {
            return this.successScaleDuration;
        }
    }

    [SerializeField]
    protected float failShakeDuration = 0.5f;
    public float FailShakeDuration
    {
        get
        {
            return this.failShakeDuration;
        }
    }

    [SerializeField]
    protected float failShakeStrength = 10;
    public float FailShakeStrength
    {
        get
        {
            return this.failShakeStrength;
        }
    }

    [SerializeField]
    protected int failShakeVibrato = 10;
    public int FailShakeVibrato
    {
        get
        {
            return this.failShakeVibrato;
        }
    }

    [SerializeField]
    protected float failShakeRandomness = 0;
    public float FailShakeRandomness
    {
        get
        {
            return this.failShakeRandomness;
        }
    }

    [SerializeField]
    protected float indicatorTime = 5;
    public float IndicatorTime
    {
        get
        {
            return this.indicatorTime;
        }
    }

    [SerializeField]
    protected float finishedDealyTime = 1f;
    public float FinishedDealyTime
    {
        get
        {
            return this.finishedDealyTime;
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
            foreach (var item in this.cardMemoryCardItems)
            {
                item.IsLock = value;
            }

            this.isLock = value;
        }
    }

    public bool IsClear
    {
        get
        {
            foreach (var item in this.cardMemoryCardItems)
            {
                if (!item.IsClear)
                {
                    return false;
                }
            }

            return true;
        }
    }

    protected List<CardMemoryCardItem> cardMemoryCardItems = new List<CardMemoryCardItem>();
    protected MasterInfoRhymeCardMemory dataInfo = null;
    protected List<int> keywordIndexList = new List<int>();
    protected List<CardMemoryCardItem> selectedCardItems = new List<CardMemoryCardItem>();
    protected bool isPlay = false;
    protected float currentIndicatorTime = 0;
    protected CardMemoryDataCollectionData dataCollectionData = new CardMemoryDataCollectionData();
    protected bool isComplete = false;

    protected void Start()
    {   
        InitializeData();
    }

    protected void OnDestroy()
    {
        var req = new DataCollectionRhymeExerciseReq();
        {
            req.exercisePercentage = this.isComplete ? 1 : 0;
            req.isCompleted = this.isComplete;
            req.version = dataInfo.Version;
            req.contentAdditionalFields = string.Empty;
        }

        DataCollectionManager.LogRecord(req);
    }

    protected void InitializeData()
    {
        Assert.IsTrue(GlobalStateData.exerciseInfo.exerciseType == ExerciseType.CardMemory, string.Format("error exerciseType : {0}", GlobalStateData.exerciseInfo.exerciseType));

        this.dataInfo = MasterTableRhymeCardMemory.GetInfo(GlobalStateData.exerciseInfo.exerciseID);

        Assert.IsNotNull(this.dataInfo, string.Format("not found MasterInfoRhymeCardMemory : {0}", GlobalStateData.exerciseInfo.exerciseID));

        GlobalStateData.masterdata_version = this.dataInfo.Version;
        
        SequenceManager.SetSequence(SequenceManager.CharacterIndex.jess, this.dataInfo.IntroSentence, this.dataInfo.OutroSentence, this.dataInfo.IntroSentenceAudio, this.dataInfo.OutroSentenceAudio, () =>
        {
            StartGame();
        });
    }

    protected void StartGame()
    {
        int count = this.dataInfo.CardMemorySets;
        InitKeywordIndex();
        LoadCardItem(count);

        StartCoroutine(Intro());
    }

    protected void InitKeywordIndex()
    {
        List<int> indexList = new List<int>();
        for (int i = 0; i < this.dataInfo.CardMemoryKeyword.Count; i++)
        {
            indexList.Add(i);
        }

        indexList.Shuffle();

        int halfCount = this.dataInfo.CardMemorySets / 2;
        this.keywordIndexList.Clear();

        for (int i = 0; i < this.dataInfo.CardMemorySets; i++)
        {
            this.keywordIndexList.Add(indexList[i % halfCount]);
        }

        this.keywordIndexList.Shuffle();
    }

    protected void LoadCardItem(int count)
    {
        for (int i = 0; i < count; i++)
        {
            var instance = Instantiate(this.cardPrefab);

            Assert.IsNotNull(instance);

            instance.transform.SetParent(this.cardGroup);
            instance.transform.ResetTransform();
            var cardItem = instance.GetComponent<CardMemoryCardItem>();

            Assert.IsNotNull(cardItem);

            this.cardMemoryCardItems.Add(cardItem);
            cardItem.InitKeyword(i, this.dataInfo, this.keywordIndexList[i]);
            cardItem.OnCompleteFlip = OnCompleteCardItem;
        }
    }

    protected void ShuffleCard()
    {
        this.keywordIndexList.Shuffle();

        this.dataCollectionData.randomInfo = new List<string>();

        for (int i = 0; i < this.cardMemoryCardItems.Count; i++)
        {
            this.cardMemoryCardItems[i].InitKeyword(i, this.dataInfo, this.keywordIndexList[i]);
            this.dataCollectionData.randomInfo.Add(this.dataInfo.CardMemoryKeyword[this.keywordIndexList[i]]);
        }
    }

    protected void OnCompleteCardItem(bool isFront, CardMemoryCardItem cardItem)
    {
        if (isPlay)
        {
            this.currentIndicatorTime = 0;
            HideIndicator();

            if (isFront && this.selectedCardItems.Count < 2)
            {
                this.selectedCardItems.Add(cardItem);
                PlayFlipSound();
            }

            if (this.selectedCardItems.Count == 2)
            {
                CheckClear();
            }
        }        
    }

    protected void CheckClear()
    {
        if (this.selectedCardItems.Count == 2)
        {
            if (this.selectedCardItems[0].KeywordIndex == this.selectedCardItems[1].KeywordIndex)
            {
                StartCoroutine(Success());
            }
            else
            {
                StartCoroutine(Fail());                
            }

            SendDataCollectionData(this.selectedCardItems[0], this.selectedCardItems[1]);
        }        
    }

    protected void ShowHand(Transform transform, Vector3 offset)
    {
        this.handObject.SetActive(true);
        this.handObject.SetInteger("type", 0);
        this.handObject.SetTrigger("fadein");
        this.handObject.transform.SetParent(transform);
        this.handObject.transform.ResetTransform();
        this.handObject.transform.localPosition = offset;
    }

    protected void HideHand()
    {
        this.handObject.SetTrigger("fadeout");

        AppManager._instance.StartDelayAction(1.5f, () =>
        {
            this.handObject.SetActive(false);
        });
    }

    protected void PlaySuffleSound()
    {
        Assert.IsTrue(this.dataInfo.SoundEffect.Count > 0);

        this.dataInfo.SoundEffect[0].PlayOneShotSound();
    }

    protected void PlayFlipSound()
    {
        Assert.IsTrue(this.dataInfo.SoundEffect.Count > 1);

        this.dataInfo.SoundEffect[1].PlayOneShotSound();
    }

    protected void PlayCompelteSound()
    {
        Assert.IsTrue(this.dataInfo.SoundEffect.Count > 2);

        this.dataInfo.SoundEffect[2].PlayOneShotSound();
    }

    protected IEnumerator Intro()
    {
        IsLock = true;

        foreach (var item in this.cardMemoryCardItems)
        {
            item.IsFront = true;
        }

        yield return new WaitForSeconds(this.startDelayTime);

        foreach (var item in this.cardMemoryCardItems)
        {
            item.IsFront = false;
        }

        PlayFlipSound();

        if (GlobalStateData.IsTutorial)
        {
            yield return Tutorial();
        }

        yield return new WaitForSeconds(1f);

        List<Vector3> posList = new List<Vector3>();
        foreach (var item in this.cardMemoryCardItems)
        {
            posList.Add(item.transform.localPosition);
            item.transform.DOLocalMove(Vector3.zero, this.cardMoveDuration);
        }

        PlaySuffleSound();

        yield return new WaitForSeconds(this.cardMoveDelayTime);

        for (int i = 0; i < this.cardMemoryCardItems.Count; i++)
        {
            this.cardMemoryCardItems[i].transform.DOLocalMove(posList[i], this.cardMoveDuration);
        }

        PlaySuffleSound();

        ShuffleCard();

        yield return new WaitForSeconds(this.cardMoveDuration);

        Debug.Log("BGM Play!!");
        this.dataInfo.SoundBG.PlaySound(true, 1);
        this.isPlay = true;
        IsLock = false;

        StartCoroutine(Indicator());
    }

    protected IEnumerator Tutorial()
    {
        Transform firstTransform = null;
        Transform secondTransform = null;

        int firstIndex = Random.Range(0, this.cardMemoryCardItems.Count);
        firstTransform = this.cardMemoryCardItems[firstIndex].transform;
        Assert.IsNotNull(firstTransform);

        int secondIndex = firstIndex;
        while (firstIndex == secondIndex)
        {
            secondIndex = Random.Range(0, this.cardMemoryCardItems.Count);
        }
        secondTransform = this.cardMemoryCardItems[secondIndex].transform;
        Assert.IsNotNull(secondTransform);

        ShowHand(firstTransform, Vector3.zero);

        yield return new WaitForSeconds(1.5f);

        HideHand();

        yield return new WaitForSeconds(1.5f);

        ShowHand(secondTransform, Vector3.zero);

        yield return new WaitForSeconds(1.5f);

        HideHand();

        yield return new WaitForSeconds(2f);
    }

    protected IEnumerator Indicator()
    {
        while (this.isPlay)
        {
            if (!IsLock)
            {
                this.currentIndicatorTime += Time.deltaTime;

                if (this.currentIndicatorTime > this.indicatorTime)
                {
                    yield return ShowIndicator();

                    this.currentIndicatorTime = 0;
                }
            }            

            yield return null;
        }
    }

    protected IEnumerator ShowIndicator()
    {
        var cards = this.cardMemoryCardItems.FindAll(item =>
        {
            return !item.IsFront;
        });

        if (cards.Count > 0)
        {
            float delayTime = cards[0].IndicatorScaleDuration * 2f;

            foreach (var card in cards)
            {
                card.ShowIndicator();
            }

            yield return new WaitForSeconds(delayTime);
        }        
    }

    protected void HideIndicator()
    {
        var cards = this.cardMemoryCardItems.FindAll(item =>
        {
            return !item.IsFront;
        });

        if (cards.Count > 0)
        {
            foreach (var card in cards)
            {
                card.HideIndicator();
            }
        }
    }

    protected IEnumerator Success()
    {
        IsLock = true;
        
        foreach (var item in this.selectedCardItems)
        {
            Sequence sequence = DOTween.Sequence();
            sequence.Append(item.transform.DOScale(this.successScaleValue, this.successScaleDuration));
            sequence.Append(item.transform.DOScale(1, this.successScaleDuration));

            item.IsClear = true;
            item.ShowEffect();
        }

        bool nextStep = false;
        this.dataInfo.SoundCorrect.PlaySound(false, 0, () =>
        {
            nextStep = true;
        });

        yield return new WaitUntil(() => nextStep);

        nextStep = false;
        this.selectedCardItems[1].PlayKeywordVoice(() =>
        {
            nextStep = true;
        });

        yield return new WaitUntil(() => nextStep);

        this.selectedCardItems.Clear();

        if (IsClear)
        {
            yield return Finished();
        }

        IsLock = false;
    }

    protected IEnumerator Fail()
    {
        IsLock = true;

        this.dataInfo.SoundWrong.PlaySound();

        foreach (var item in this.selectedCardItems)
        {
            item.transform.DOShakePosition(this.failShakeDuration, this.failShakeStrength, this.failShakeVibrato, this.failShakeRandomness).onComplete = () =>
            {
                item.IsFront = false;
            };
        }

        yield return new WaitForSeconds(this.failShakeDuration);

        this.selectedCardItems.Clear();

        IsLock = false;
    }

    protected IEnumerator Finished()
    {
        this.isPlay = false;
        this.isComplete = true;
        PlayCompelteSound();

        yield return new WaitForSeconds(this.finishedDealyTime);

        SequenceManager.S_Outro();        
    }

    protected void SendDataCollectionData(CardMemoryCardItem firstItem, CardMemoryCardItem secondItem)
    {
        var req = new DataCollectionCommonExerciseReq();
        {
            req.eventName = DataCollectionManager.EventType.action_response.ToString();
            
            if (this.dataCollectionData.cardMatched != null)
            {
                this.dataCollectionData.cardMatched.Clear();
            }
            else
            {
                this.dataCollectionData.cardMatched = new List<int>();
            }

            this.dataCollectionData.cardMatched.Add(firstItem.PositionIndex);
            this.dataCollectionData.cardMatched.Add(secondItem.PositionIndex);
            this.dataCollectionData.isCorrect = (firstItem.KeywordIndex == secondItem.KeywordIndex);
            req.specificField = JsonUtility.ToJson(this.dataCollectionData);

            Assert.IsTrue(this.dataCollectionData.cardMatched.Count == 2);
            Assert.IsTrue(this.dataCollectionData.randomInfo.Count == this.dataInfo.CardMemorySets);
        }

        DataCollectionManager.LogRecord(req);
    }

    public void OnClickBackButton()
    {
        Debug.Log("OnClickBackButton");

        DataCollectionManager.UnitClose(CommonDataCollectionManager.ButtonType.back);

        SoundManager.AllStop();
        AppManager._instance.BeforeSceneChange();
    }
}
