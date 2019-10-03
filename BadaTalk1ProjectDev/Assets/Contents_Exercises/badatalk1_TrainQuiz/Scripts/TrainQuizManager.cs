using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using CalmIsland;
using DG.Tweening;
using UnityEngine.Assertions;
using System;
using System.Linq;

public class TrainQuizManager : MonoBehaviour
{
    [SerializeField]
    private Text Score;
    public GameObject trainStop;
    [SerializeField]
    private float Speed=0.5f;
    private  int index = 0;
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
    protected List<string> keyWordList = new List<string>();
   // protected List<TrainCabin> selectedCardItems = new List<TrainCabin>();

    protected bool isPlay = false;
    protected float currentIndicatorTime = 0;
    protected TrainQuizDataCollectionData dataCollectionData = new TrainQuizDataCollectionData();
    protected bool isComplete = false;
    public void Start()
    {
        bool nextStep = false;
        //this.trainCabins[0].PlayKeywordVoice(() =>
        //{
        //    nextStep = true;
        //});
        // RabdomAnswerQuestion();
        InitializeData();
       
    }
    protected void InitializeData()
    {
        this.dataInfo = MasterTableBandatalk1TrainQuiz.GetInfo(GlobalStateData.exerciseInfo.exerciseID);
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
        TrainQuizManager listCopy = new TrainQuizManager();
        listCopy.Listcopy(keyWordList);
        for (int i = 0; i < count; i++)
        {
            var  cabin = Instantiate(this.cabinPrefab, this.trainGroup);
            var cabinItem = cabin.GetComponent<TrainCabin>();
            //cabin.transform.Find("KeyWordText").SetActive(false);
            cabin.transform.Find("keywordImage").GetComponent<Image>().SetActive(i == 0);
            this.trainCabins.Add(cabinItem);
           // Debug.Log(listCopy);
        }
        for (int i=0;i< trainCabins.Count;i++)
        {
          
            trainCabins[i].InitKeyword(i, this.dataInfo, this.keywordIndexList[i]);
            keyWordList.Add(trainCabins[i].KeywordText.text);
       
        }

    }
    protected List<string> Listcopy(List<string> fist)
    {
        List<string> listCopyed = new List<string>();
        foreach(var i in fist)
        {
            listCopyed.Add(i);
        }
        return listCopyed;
    }


  /*  protected void ShowHand(Transform transform, Vector3 offset)
    {
        this.handObject.SetActive(true);
  
        this.handObject.transform.position=transform.position;
 
    }
    protected void HideHand()
    {
        this.handObject.SetActive(false);
    }*/
     protected IEnumerator Intro()
        {
        // var heightcabin = TrainGroup.GetComponent<GridLayoutGroup>().cellSize.x;
       StartCoroutine(TrainMove());
        Debug.Log("run GenerateAnswer");
        GenerateAnswer(questionId: 0);
        yield return new WaitForSeconds(1f);


    }
    protected IEnumerator TrainMove()
    {
        var _trainStop = trainStop.GetComponent<RectTransform>();

        var cabinPosx = trainGroup.GetComponent<GridLayoutGroup>().cellSize.x;
        var train = TrainGroup.GetComponent<RectTransform>();

        while (trainStop.transform.position.x - train.position.x > 0.1)
        {
            var temp = Vector2.Lerp(TrainGroup.position, _trainStop.position, Speed * Time.deltaTime);
            train.position = new Vector3(temp.x, train.position.y);
            yield return new WaitForEndOfFrame();
        }
    }
 

    private void GenerateAnswer(int questionId)
    {

        StartCoroutine(waitGenerateAnswer(2f));

      
    }
    protected IEnumerator TrainMoveOnClick(int Index) {

           
            yield return new WaitForSeconds(1.2f);
        
    }
    IEnumerator waitGenerateAnswer(float time)
    { 
        List<TrainCabin> copylist = new List<TrainCabin>();
        copylist.AddRange(trainCabins);
        var array = RabdomAnswerQuestion(copylist).ToArray();
       // Debug.Log(array[0] + "===========" + array[1] + "==========" + array[2]);
        for (var i = 0; i < 3; i++)
        {
            yield return new WaitForSeconds(time);
            var btn = Instantiate(btnAnswer, _buttonHolder);
            var btnScript = btn.GetComponent<Button>();
            var text = btn.GetComponentInChildren<Text>();
            var rect = btn.GetComponent<RectTransform>();

         

            text.text = array[i].ToString();
            btnScript.onClick.AddListener(() =>
            {
              

                rect.DOMove(trainCabins[index].KeywordText.transform.position, 1).OnComplete(()=>
                {
                    StartCoroutine(TempMoveTrain());
                });
                rect.SetParent(trainCabins[index].transform);


                if (text.text.Equals(trainCabins[index].KeywordText.text))
                {
                  
                    Debug.Log("bang nhau roi " +index);
                    index++;
                    Score.text = index + "/" + trainCabins.Count;
                  /*
                    this.dataInfo.SoundCorrect.PlaySound(false, 0, () =>
                    {
                        nextStep = true;
                    });
*/

                    StartCoroutine(TrainMoveOnClick(index));

                }
                else
                {

               /*     this.dataInfo.SoundWrong.PlaySound(false, 0, () =>
                    {
                        nextStep = true;
                    });*/

                    Destroy(btn);
                }
                foreach (Transform child in _buttonHolder.transform)
                {
                    GameObject.Destroy(child.gameObject);
                }
                GenerateAnswer(questionId: 1);

                Destroy(btnScript);
                trainCabins[index].transform.Find("keywordImage").GetComponent<Image>().SetActive(true);
            });
         //   yield return new WaitForSeconds(time);
            yield return new WaitForSeconds(1.2f);
            btn.transform.DOScaleY(2, 1);
            btn.transform.DOScaleX(2, 1);
            yield return new WaitForSeconds(1f);
            btn.transform.DOScaleY(1, 2);
            btn.transform.DOScaleX(1, 2);
            yield return new WaitForSeconds(1f);
        }

    }

    private IEnumerator TempMoveTrain()
    {
        var trainSizeX = trainGroup.gameObject.GetComponent<RectTransform>().sizeDelta.x;
        var destination = new Vector2(trainGroup.position.x + trainSizeX, trainGroup.position.y);
        while (Vector2.Distance(trainGroup.position, destination) > 0.1f)
        {
            trainGroup.position = Vector2.MoveTowards(trainGroup.position, destination, 2);
            yield return new WaitForEndOfFrame();
        }
    }

    public IEnumerator  waitAnswerPostion(Transform rect)
    {
       
        while (Vector2.Distance(rect.position, trainCabins[index].KeywordText.transform.position) > 20f)
        {
            rect.position = Vector3.MoveTowards(rect.position, trainCabins[index].KeywordText.transform.position, 1);
            yield return new WaitForEndOfFrame();
        }

    }
    public string[] RabdomAnswerQuestion( List<TrainCabin> cabinlist)
    {     
        System.Random rnd = new System.Random();
        var Fist = cabinlist[index].KeywordText.text;
        cabinlist.Remove(cabinlist[index]);

        var _secondIndex = rnd.Next(0, cabinlist.Count);
        var Second = cabinlist[_secondIndex].KeywordText.text;
        cabinlist.Remove(cabinlist[_secondIndex]);

        var _thirdIndex = rnd.Next(0, cabinlist.Count);
        var third = cabinlist[_thirdIndex].KeywordText.text;
        var myArray = new[] { Fist, Second, third };
 
        string[] MyRandomArray = myArray.OrderBy(x => rnd.Next()).ToArray();

        return MyRandomArray;
    } 

    public void OnClickBackButton()
    {
        Debug.Log("OnClickBackButton");

        DataCollectionManager.UnitClose(CommonDataCollectionManager.ButtonType.back);

        SoundManager.AllStop();
        AppManager._instance.BeforeSceneChange();
    }


}
