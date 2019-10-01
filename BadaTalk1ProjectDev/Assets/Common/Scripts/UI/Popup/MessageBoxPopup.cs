using UnityEngine;
using UnityEngine.UI;

public class MessageBoxPopup : MonoBehaviour
{
    private static System.Action onClickYes = null;
    private static System.Action onClickNo = null;
    private static bool isMultiButton = false;
    private static string message = string.Empty;

    private static MessageBoxPopup instance;

    [SerializeField]
    private Text messageText = null;

    [SerializeField]
    private RectTransform panel = null;

    [SerializeField]
    private GameObject[] buttonGroups = null;

    [SerializeField]
    private int textLength = 30;

    public static bool IsShowing
    {
        get
        {
            return instance != null;
        }
    }

    public static bool IsNoButtonExist
    {
        get;
        private set;
    }

    public static void ShowMessageBox(string message, System.Action onClickYes)
    {
        MessageBoxPopup.IsNoButtonExist = false;
        ShowMessageBox(message, false, onClickYes, null);
    }

    public static void ShowMessageBox(string message, System.Action onClickYes, System.Action onClickNo)
    {
        MessageBoxPopup.IsNoButtonExist = true;
        ShowMessageBox(message, true, onClickYes, onClickNo);
    }

    public static void ShowMessageBox(string message, bool isMultiButton, System.Action onClickYes, System.Action onClickNo)
    {
        MessageBoxPopup.message = message;
        MessageBoxPopup.isMultiButton = isMultiButton;
        MessageBoxPopup.onClickYes = onClickYes;
        MessageBoxPopup.onClickNo = onClickNo;

        if (instance != null)
        {
            instance.Hide();
        }
        UnityEngine.SceneManagement.SceneManager.LoadScene("MessagePopupScene", UnityEngine.SceneManagement.LoadSceneMode.Additive);
    }

    public static void ClickYesButton()
    {
        if (IsShowing == false)
        {
            return;
        }

        instance.OnClickYesButton();
    }

    public static void ClickNoButton()
    {
        if (IsShowing == false)
        {
            return;
        }

        if (IsNoButtonExist)
        {
            instance.OnClickNoButton();
        }
    }

    private void Start()
    {
        this.buttonGroups[0].SetActive(!isMultiButton);
        this.buttonGroups[1].SetActive(isMultiButton);

        this.messageText.text = message;
        this.messageText.alignment = TextAnchor.MiddleLeft;

        Vector2 panelSize = this.panel.sizeDelta;
        byte[] bytes = System.Text.Encoding.UTF8.GetBytes(this.messageText.text);
        int offset = bytes.Length / this.textLength;
        panelSize.y += offset * this.messageText.fontSize;
        this.panel.sizeDelta = panelSize;

        instance = this;
    }

    private void Hide()
    {
        instance = null;

        this.gameObject.SetActive(false);
        UnityEngine.SceneManagement.SceneManager.UnloadSceneAsync("MessagePopupScene");
    }

    public void OnClickYesButton()
    {
        Debug.Log("OnClickYesButton");

        Hide();

        if (onClickYes != null)
            onClickYes();
    }

    public void OnClickNoButton()
    {
        Debug.Log("OnClickNoButton");

        Hide();

        if (onClickNo != null)
            onClickNo();
    }
}