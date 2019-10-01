using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FadeInOutScript : MonoBehaviour
{
    private string scene;
    public Color loadToColor = Color.white;

    public void GoFade(string sceneName)
    {
        scene = sceneName;
        Initiate.Fade(scene, loadToColor, 1f);
    }
}
