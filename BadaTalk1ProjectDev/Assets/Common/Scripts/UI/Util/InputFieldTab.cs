using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Events;
using UnityEngine.EventSystems;

public class InputFieldTab : MonoBehaviour
{
    [SerializeField]
    private InputField[] fields = null;

    [SerializeField]
    private Button button = null;

    private int current = 0;
    private bool canClick = true;

#if UNITY_EDITOR

    private void Update()
    {
        if (this.fields.IsNotNull() && this.fields.Length > 0)
        {
            if (Input.GetKeyUp(KeyCode.Tab))
            {
                if (this.fields[current].isFocused)
                {
                    if (++this.current >= this.fields.Length)
                    {
                        this.current = 0;
                    }

                    this.fields[this.current].Select();
                }
            }

            if (Input.GetKeyUp(KeyCode.Return) && this.canClick)
            {
                if (this.fields[this.fields.Length - 1].text.IsNullOrEmpty() == false)
                {
                    if (this.button.IsNotNull() && this.button.onClick.IsNotNull())
                    {
                        StartCoroutine(DelayCanClick());

                        this.button.onClick.Invoke();
                    }
                }
            }
        }
    }

    private IEnumerator DelayCanClick()
    {
        this.canClick = false;
        yield return new WaitForSeconds(1f);
        this.canClick = true;
    }

#endif

}
