using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using CalmIsland;

namespace Common
{
    public class CommonAppManager : MonoBehaviour
    {
        [HideInInspector]
        public bool loginFinish = false;

        [SerializeField]
        protected bool useFPS = false;

        protected Stack<SceneLevel> sceneList = new Stack<SceneLevel>();
        protected SceneLevel currentScene;
        protected Coroutine delayAction = null;

        protected virtual void Awake()
        {
            DontDestroyOnLoad(this);
            loginFinish = false;
            Screen.sleepTimeout = SleepTimeout.NeverSleep;
            Application.targetFrameRate = 60;
            QualitySettings.vSyncCount = 0;

#if UNITY_IOS
			UnityEngine.iOS.Device.hideHomeButton = true;
#endif

            var masterData = new MasterData();
            masterData.LoadAssetbundle("dev");

            if (useFPS && FindObjectOfType<FPSLabel>() == null)
            {
                GameObject fpsLabelGO = new GameObject("FPS Label");
                fpsLabelGO.AddComponent<FPSLabel>();
                DontDestroyOnLoad(fpsLabelGO);
            }

            if (Application.isEditor == false && Debug.unityLogger.logEnabled)
            {
                gameObject.AddComponent<DebugLogManager>();
            }

            gameObject.AddComponent<SoundManager>();

            sceneList.Push(currentScene);

            Input.multiTouchEnabled = false;
        }

        protected virtual void Start()
        {
            NextSceneChange(SceneLevel.ExerciseTest);
        }

        protected virtual void LoginFinish()
        {
            loginFinish = true;

            Debug.Log(loginFinish);
        }

        public virtual SceneLevel GetCurrentScene()
        {
            return currentScene;
        }

        public virtual SceneLevel PopPrevScene()
        {
            SceneLevel prevScene = GetCurrentScene();
            while (prevScene.Equals(GetCurrentScene()))
            {
                prevScene = sceneList.Pop();
                Debug.Log("############## beforeScene : " + prevScene);
            }
            return prevScene;
        }

        public virtual SceneLevel GetPrevScene()
        {
            if (sceneList == null || sceneList.Count <= 1)
            {
                return sceneList.Peek();
            }

            var sceneArray = sceneList.ToArray();
            SceneLevel prevScene = sceneArray[1];
            Debug.LogFormat("GetPrevScene - {0}", prevScene);
            return prevScene;
        }

        public virtual void NextSceneChange(SceneLevel sceneName, System.Action onLoaded = null)
        {
            currentScene = sceneName;
            StartCoroutine(LoadSceneChange(onLoaded));
        }

        public virtual void PushScene(SceneLevel sceneName)
        {
            sceneList.Push(sceneName);
        }

        public virtual void ClearScene()
        {
            sceneList.Clear();
        }

        public virtual void BeforeSceneChange(System.Action onLoaded = null)
        {
            currentScene = PopPrevScene();
            StartCoroutine(LoadSceneChange(onLoaded));
        }

        protected virtual IEnumerator LoadSceneChange(System.Action onLoaded)
        {
            sceneList.Push(currentScene);
            yield return null;
            AsyncOperation op = SceneManager.LoadSceneAsync(currentScene.ToString(), LoadSceneMode.Single);
            while (!op.isDone)
            {
                yield return null;
            }
            ActivateOnlyOneAudioListener();

            onLoaded?.Invoke();
        }

        protected virtual void ActivateOnlyOneAudioListener()
        {
            var audioListeners = FindObjectsOfType<AudioListener>();
            if (audioListeners.Length > 1)
            {
                audioListeners[0].enabled = true;
                for (int i = 1; i < audioListeners.Length; i++)
                {
                    audioListeners[i].enabled = false;
                }
            }
        }

        public virtual void ReStartApplication()
        {
            UnityEngine.SceneManagement.SceneManager.LoadScene(0);
            DestroyImmediate(this.gameObject);
        }

        public virtual void StartDelayAction(float delay, System.Action onAction)
        {
            StopDelayAction();

            this.delayAction = StartCoroutine(DelayAction(delay, onAction));
        }

        protected virtual IEnumerator DelayAction(float delay, System.Action onAction)
        {
            yield return new WaitForSeconds(delay);

            if (onAction != null)
            {
                onAction();
            }
        }

        public virtual void StopDelayAction()
        {
            if (this.delayAction != null)
            {
                StopCoroutine(this.delayAction);
                this.delayAction = null;
            }
        }
    }
}