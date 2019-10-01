using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Button))]
public class GoToNextScene : MonoBehaviour
{
    [SerializeField]
    private SceneLevel nextScene = SceneLevel.AppManagerScene;

    private void Awake()
    {
        Button button = GetComponent<Button>();
        if (button)
        {
            button.onClick.AddListener(() =>
            {
                if (AppManager._instance)
                {
                    AppManager._instance.NextSceneChange(nextScene);
                }
            });
        }
    }

    private void OnDestroy()
    {
        GlobalStateData.startExeciseTime = Time.time;
        DataCollectionManager.UnitOpen();
    }
}