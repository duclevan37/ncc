using UnityEngine;
using UnityEngine.UI;

[RequireComponent(typeof(Text))]
public class UITextDisplayer : MonoBehaviour
{
    [Header("ui_text.xml(ui_text_mid)")]
    [SerializeField]
    private string uiTextKey = string.Empty;
    public string UITextKey
    {
        get
        {
            return this.uiTextKey;
        }
    }

    private void Start()
    {
        SetText();
    }

    public void SetText()
    {
        Text text = this.GetComponent<Text>();

        if (text != null)
        {
            if (this.uiTextKey.IsNullOrEmpty())
            {
                Debug.LogErrorFormat("You didn't set uiTextKey in {0} gameObject!", gameObject.name);
            }
            text.text = this.uiTextKey.ToLocalizedText();
        }
    }
}