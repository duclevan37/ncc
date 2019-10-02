using CalmIsland;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Assertions;
using UnityEngine.UI;

public class TrainCabin : MonoBehaviour
{
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
    // Start is called before the first frame update
  
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

    // Update is called once per frame
    void Update()
    {
        
    }
    protected string keywordVoice = string.Empty;
    public void InitKeyword(int positionIdx, MasterInfoBandatalk1TrainQuiz info, int keywordIdx)
    {
        this.positionIndex = positionIdx;
        this.keywordIndex = keywordIdx;
      
       

        if (keywordIdx >= 0 && keywordIdx < info.TrainQuizImg.Count)
        {
            string keywordPath = string.Format("TrainQuiz{0}/{1}", info.Bandatalk1TrainQuizMid, info.TrainQuizImg[keywordIdx]);
            var keywordSprite = Resources.Load<Sprite>(keywordPath);
            this.keywordImage.ChangeSprite(keywordSprite);
        }
        else
        {
            Debug.LogErrorFormat("error CardMemoryImg.Count : {0}, index : {1}", info.TrainQuizImg.Count, keywordIdx);
        }

        if (keywordIdx >= 0 && keywordIdx < info.TrainQuizKeyword.Count)
        {
            this.keywordText.text = info.TrainQuizKeyword[keywordIdx];
        }
        else
        {
            Debug.LogErrorFormat("error TrainQuizKeyword.Count : {0}, index : {1}", info.TrainQuizKeyword.Count, keywordIdx);

        }

        if (keywordIdx >= 0 && keywordIdx < info.TrainQuizKeywordAudio.Count)
        {
            this.keywordVoice = info.TrainQuizKeywordAudio[keywordIdx];
        }
        else
        {
            Debug.LogErrorFormat("error TrainQuizKeywordAudio.Count : {0}, index : {1}", info.TrainQuizKeywordAudio.Count, keywordIdx);
            Debug.Log("audio test " + info.TrainQuizKeywordAudio[0].ToString());

        }
    }
}
