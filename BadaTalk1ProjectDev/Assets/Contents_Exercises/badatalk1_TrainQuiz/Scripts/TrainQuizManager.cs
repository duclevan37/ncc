using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using CalmIsland;
using DG.Tweening;
using UnityEngine.Assertions;
using System;

public class TrainQuizManager : MonoBehaviour
{
    public GameObject trainStop;
    private int speed = 100;
    private int index = 0;
    public Text[] listAnswer;
    [SerializeField]
    public Image testData;
    [Header("Answer button")]
    [SerializeField] private Transform _buttonHolder;
    [SerializeField] private GameObject btnAnswer;

    [SerializeField]
    public class TrainQuizDataCollectionData
    {
        public List<string> randomInfo = null;
        public List<int> cabin = null;
        public bool isCorrect = false;
    }

    [SerializeField]
    protected Transform trainGroup = null;
    public Transform TrainGroup
    {
        get
        {
            return this.trainGroup;
        }
    }

    [SerializeField]
    protected GameObject cabinPrefab = null;
    public GameObject CabinPrefab
    {
        get
        {
            return this.cabinPrefab;
        }
    }
    [SerializeField]
    public GameObject headTrain = null;
    public GameObject HeadTrain
    {
        get
        {
            return this.headTrain;
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


    protected MasterInfoBandatalk1TrainQuiz dataInfo = null;
    protected List<TrainCabin> trainCabins = new List<TrainCabin>();
    protected List<int> keywordIndexList = new List<int>();
    protected List<TrainCabin> selectedCardItems = new List<TrainCabin>();
    protected bool isPlay = false;
    protected float currentIndicatorTime = 0;
    protected TrainQuizDataCollectionData dataCollectionData = new TrainQuizDataCollectionData();
    protected bool isComplete = false;
    public void Start()
    {
        InitializeData();
       
    }
    protected void InitializeData()
    {
        //Assert.IsTrue(GlobalStateData.exerciseInfo.exerciseType == ExerciseType.CardMemory, string.Format("error exerciseType : {0}", GlobalStateData.exerciseInfo.exerciseType));

        this.dataInfo = MasterTableBandatalk1TrainQuiz.GetInfo(GlobalStateData.exerciseInfo.exerciseID);

        //Assert.IsNotNull(this.dataInfo, string.Format("not found MasterInfoRhymeCardMemory : {0}", GlobalStateData.exerciseInfo.exerciseID));

        GlobalStateData.masterdata_version = this.dataInfo.Version;

        SequenceManager.SetSequence(SequenceManager.CharacterIndex.bada, this.dataInfo.IntroSentence, this.dataInfo.OutroSentence, this.dataInfo.IntroSentenceAudio, this.dataInfo.OutroSentenceAudio, () =>
        {
            StartGame();
        });
    }
    protected void StartGame()
    {
        int count = this.dataInfo.TrainQuizSets;
        InitKeywordIndex();
        Debug.Log(count);
        Instantiate(headTrain, trainGroup);
        LoadCabin(count);
        //StartCoroutine(Intro());
        GenerateAnswer(questionId: 0);
        //LoadAnswer();

    }
    protected void InitKeywordIndex()
    {
        this.keywordIndexList.Clear();
        for (int i = 0; i < this.dataInfo.TrainQuizKeyword.Count; i++)
        {
            keywordIndexList.Add(i);
        }

        this.keywordIndexList.Shuffle();
    }
    protected void LoadCabin(int count)
    {
        for (int i = 0; i < count; i++)
        {
            var  instance = Instantiate(this.cabinPrefab, this.trainGroup);

            //Assert.IsNotNull(instance);
            var cabinItem = instance.GetComponent<TrainCabin>();

            //Assert.IsNotNull(cabinItem);
/*            cabinItem.KeywordText.text = "";*/
            this.trainCabins.Add(cabinItem);
            // Debug.Log(instance.transform.position.y);
          // cabinItem.InitKeyword(i, this.dataInfo, this.keywordIndexList[i]);




        }
        for (int i=0;i< trainCabins.Count;i++)
        {
            trainCabins[i].InitKeyword(i, this.dataInfo, this.keywordIndexList[i]);
            

          
        }
     /*   string keywordPath = this.dataInfo.TrainQuizImg[2].ToString();
        

        //Assert.IsNotNull(keywordSprite, keywordPath);
        this.testData.ChangeSprite(Resources.Load<Sprite>(keywordPath));*/

     
    }
   /* protected void LoadAnswer()
    {    
        for (int i=0;i<listAnswer.Length;i++)
        {
            listAnswer[i].text=trainCabins[i].KeywordText.text;
        }


    }*/


    protected void ShowHand(Transform transform, Vector3 offset)
    {
        this.handObject.SetActive(true);
  
        this.handObject.transform.position=transform.position;
 
    }
    protected void HideHand()
    {
        this.handObject.SetActive(false);
    }
    /* protected IEnumerator Intro()
        {




        }*/
    /* protected IEnumerator Tutorial()
      {
          Transform firstTransform = null;




          int firstIndex = UnityEngine.Random.Range(0, this.listAnswer.Length);
          firstTransform = this.listAnswer[firstIndex].transform;
          // Assert.IsNotNull(firstTransform);


          yield return new WaitForSeconds(10f);
          ShowHand(firstTransform, Vector3.zero);

          yield return new WaitForSeconds(1.5f);

          HideHand();

          yield return new WaitForSeconds(2f);


      }*/
    public void Update()
    {
        TrainRun();

    }
    protected void TrainRun()
    {      if(Mathf.Abs(this.trainGroup.position.x-trainStop.transform.position.x)>60)
        {
            this.trainGroup.Translate(speed * Time.deltaTime, 0f, 0f);
        }
        else
        {
            speed = 0;
            
        }
 
    }

    private void GenerateAnswer(int questionId)
    {
        for(var i = 0; i < 3; i++)
        {
            var btn = Instantiate(btnAnswer, _buttonHolder);

            var btnScript = btn.GetComponent<Button>();
            var text = btn.GetComponentInChildren<Text>();

            var rect = btn.GetComponent<RectTransform>();
            text.text = trainCabins[i].KeywordText.text;
            btnScript.onClick.AddListener(() =>
            {
                rect.position = this.trainCabins[index].KeywordText.transform.position;
                rect.SetParent(this.trainCabins[index].transform);
                index++;
               
            });
        }
    }

    public void OnClickBackButton()
    {
        Debug.Log("OnClickBackButton");

        DataCollectionManager.UnitClose(CommonDataCollectionManager.ButtonType.back);

        SoundManager.AllStop();
        AppManager._instance.BeforeSceneChange();
    }

}
