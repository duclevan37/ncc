using UnityEngine.UI;
using UnityEngine;

public class SetupExericeseInfo : MonoBehaviour
{
    [SerializeField]
    private ExerciseType exerciseType = ExerciseType.None;

    [SerializeField]
    private int exerciseID = 0;

    private void Start()
    {
        GetComponent<Button>().onClick.AddListener(() => { SetExerciseInfo(); });
    }

    void SetExerciseInfo()
    {
        GlobalStateData.exerciseInfo = new ExerciseInfo(0, this.exerciseType, this.exerciseID);
        SequenceManager.ShowStart = true;
    }
}
