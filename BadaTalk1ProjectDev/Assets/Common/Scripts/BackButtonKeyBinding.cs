using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.EventSystems;

public class BackButtonKeyBinding : MonoBehaviour {

    private static Stack<Button> backButtonStack = new Stack<Button>();

    private Button button = null;

    private void Awake()
    {
        this.button = this.GetComponent<Button>();
    }

    private void OnEnable()
    {
        backButtonStack.Push(this.button);
    }

    private void OnDisable()
    {
        backButtonStack.Pop();
    }

    private void LateUpdate()
    {
        if (Input.GetKeyUp(KeyCode.Escape))
        {
            var peek = backButtonStack.Peek();
            if (peek != null && peek.GetHashCode() == this.button.GetHashCode())
            {
                button.onClick.Invoke();
            }
        }        
    }
}
