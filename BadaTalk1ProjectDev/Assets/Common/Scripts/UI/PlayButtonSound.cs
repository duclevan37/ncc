using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class PlayButtonSound : MonoBehaviour
{

    [SerializeField]
    private AudioClip audioClip = null;

    [Range(0, 1)]
    [SerializeField]
    private float volume = 1;

    public float Volume { get { return volume; }  set { volume = value; } }

    private void Awake()
    {
        if (this.audioClip != null)
        {
            var button = GetComponent<Button>();
            if (button != null)
            {
                button.onClick.AddListener(() =>
                {
                    SoundManager.PlayOneShot(this.audioClip, this.volume);
                });
            }

            var toggle = GetComponent<Toggle>();
            if (toggle != null)
            {
                toggle.onValueChanged.AddListener((isOn) =>
                {
                    SoundManager.PlayOneShot(this.audioClip, this.volume);
                });

            }
        }
    }
}
