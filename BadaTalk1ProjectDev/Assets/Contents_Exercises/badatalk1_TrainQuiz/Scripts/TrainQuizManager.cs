using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using CalmIsland;
using DG.Tweening;
using UnityEngine.Assertions;

public class TrainQuizManager : MonoBehaviour
{
    private int speed = 100;
    public GameObject[] listAnswer;
    [SerializeField]
    public Image testData;
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
       
        string keywordPath =  dataInfo.TrainQuizImg[0];

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
        Debug.Log(count);
        Instantiate(headTrain, trainGroup);
        LoadCabin(count);
        StartCoroutine(Intro());

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

           // Assert.IsNotNull(instance);
            var cabinItem = instance.GetComponent<TrainCabin>();

          //  Assert.IsNotNull(cabinItem);

            this.trainCabins.Add(cabinItem);
           // Debug.Log(instance.transform.position.y);
           // cabinItem.InitKeyword(i, this.dataInfo, this.keywordIndexList[i]);
          
        }
        string keywordPath = this.dataInfo.TrainQuizImg[2].ToString();
        

        //Assert.IsNotNull(keywordSprite, keywordPath);
        this.testData.ChangeSprite(Resources.Load<Sprite>(keywordPath));

     
    }
    protected void ShowHand(Transform transform, Vector3 offset)
    {
        this.handObject.SetActive(true);
      //  this.handObject.SetInteger("type", 0);
       // this.handObject.SetTrigger("fadein");
        this.handObject.transform.position=transform.position;
     /*   this.handObject.transform.ResetTransform();
        this.handObject.transform.localPosition = offset;*/
    }
    protected void HideHand()
    {
        this.handObject.SetActive(false);
    }
    protected IEnumerator Intro()
    {

        if (GlobalStateData.IsTutorial)
        {
            yield return Tutorial();
        }
    }
    protected IEnumerator Tutorial()
    {
        Transform firstTransform = null;
  

        int firstIndex = Random.Range(0, this.listAnswer.Length);
        firstTransform = this.listAnswer[firstIndex].transform;
        // Assert.IsNotNull(firstTransform);


        yield return new WaitForSeconds(10f);
        ShowHand(firstTransform, Vector3.zero);

        yield return new WaitForSeconds(1.5f);

        HideHand();

        yield return new WaitForSeconds(2f);
       this.listAnswer[firstIndex].transform.position = this.trainCabins[0].KeywordImage.transform.position;
        Debug.Log("vi tri cabin 1"+this.trainCabins[0].KeywordImage.transform.position);
        
     
    }
    public void Update()
    {
        TrainRun();
    
    }
    protected void TrainRun()
    {      if(this.trainGroup.position.x<-100)
        {
            this.trainGroup.Translate(speed * Time.deltaTime, 0f, 0f);
        }
        else
        {
            speed = 0;
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
