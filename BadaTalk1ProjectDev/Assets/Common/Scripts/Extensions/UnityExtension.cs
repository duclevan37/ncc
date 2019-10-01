using UnityEngine;
using System.Collections.Generic;
using System;
using System.Collections;
using UnityEngine.UI;

public static class UnityExtension
{
	public static void SetActive(this Component component, bool isActive)
	{
		if (null == component) return;
		if (null == component.gameObject) return;

		component.gameObject.SetActive(isActive);
	}

	/// <summary> Converts given bitmask to layer number </summary>
	/// <returns> layer number </returns>
	public static int ToLayer(this LayerMask layerMask)
	{
		var bitMask = layerMask.value;
		int result = bitMask > 0 ? 0 : 31;
		while (bitMask > 1)
		{
			bitMask = bitMask >> 1;
			result++;
		}
		return result;
	}

	public static void SetLayer(this GameObject gameObject, int layer, bool recursively)
	{
		gameObject.layer = layer;

		if (recursively == false)
		{
			return;
		}

		var colliders = gameObject.transform.GetComponentsInChildren<Collider>();
		if (colliders != null)
		{
			foreach (var collider in colliders)
			{
				collider.gameObject.layer = layer;
			}
		}
		var renderers = gameObject.transform.GetComponentsInChildren<Renderer>();
		if (renderers != null)
		{
			foreach (var renderer in renderers)
			{
				renderer.gameObject.layer = layer;
			}
		}
	}

	public static void WaitForSeconds(this MonoBehaviour behaviour, float waitingTime, Action onComplete)
	{
		if (waitingTime <= 0f)
		{
			onComplete?.Invoke();
		}
		else
		{
			behaviour.StartCoroutine(WaitForSecondsCoroutine(waitingTime, onComplete));
		}
	}

	private static IEnumerator WaitForSecondsCoroutine(float waitingTime, Action onComplete)
	{
		yield return new WaitForSeconds(waitingTime);

		onComplete?.Invoke();
	}

	public static void WaitForEndOfFrame(this MonoBehaviour behaviour, Action onComplete)
	{
		behaviour.StartCoroutine(WaitForSecondsCoroutine(onComplete));
	}

	private static IEnumerator WaitForSecondsCoroutine(Action onComplete)
	{
		yield return new WaitForEndOfFrame();

		onComplete?.Invoke();
	}

	public static void WaitUntil(this MonoBehaviour behaviour, Func<bool> predicate, Action onComplete)
	{
		behaviour.StartCoroutine(WaitUntilCoroutine(predicate, onComplete));
	}

	private static IEnumerator WaitUntilCoroutine(Func<bool> predicate, Action onComplete)
	{
		yield return new WaitUntil(predicate);

		onComplete?.Invoke();
	}

	public static void WaitFor(this MonoBehaviour behaviour, IEnumerator routine, Action onComplete)
	{
		behaviour.StartCoroutine(WaitForCoroutine(routine, onComplete));
	}

	private static IEnumerator WaitForCoroutine(IEnumerator routine, Action onComplete)
	{
		yield return routine;

		onComplete?.Invoke();
	}

	public static void Activate(this GameObject gameObject)
	{
		if (gameObject != null)
		{
			gameObject.gameObject.SetActive(true);
		}
	}

	public static void Deactivate(this GameObject gameObject)
	{
		if (gameObject != null)
		{
			gameObject.gameObject.SetActive(false);
		}
	}

	public static void Activate(this Component component)
	{
		if (component != null)
		{
			component.gameObject.SetActive(true);
		}
	}

	public static void Deactivate(this Component component)
	{
		if (component != null)
		{
			component.gameObject.SetActive(false);
		}
	}

	public static bool IsNull(this UnityEngine.Object value)
	{
		return (value == null);
	}

	public static bool IsNotNull(this UnityEngine.Object value)
	{
		return (value != null);
	}

	public static T GetRandom<T>(this System.Collections.Generic.List<T> list)
	{
		return list[UnityEngine.Random.Range(0, list.Count)];
	}

	public static void AddAnimationEvent(this Animator animator, string clipName, float time)
	{
		foreach (var clip in animator.runtimeAnimatorController.animationClips)
		{
			if (clip.name == clipName)
			{
				var animationEvent = new AnimationEvent();
				animationEvent.functionName = "CallSendMessage";
				animationEvent.time = time;
				clip.AddEvent(animationEvent);

				return;
			}
		}
	}

    public static void ClearAnimationEvent(this Animator animator, string clipName)
    {
        foreach (var clip in animator.runtimeAnimatorController.animationClips)
        {
            if (clip.name == clipName)
            {
                clip.events = null;
                return;
            }
        }
    }

	public static Vector2 WorldToCanvas(this Canvas canvas, Vector3 world_position, Camera camera = null)
	{
		if (camera == null)
		{
			camera = Camera.main;
		}

		var viewport_position = camera.WorldToViewportPoint(world_position);
		var canvas_rect = canvas.GetComponent<RectTransform>();

		return new Vector2((viewport_position.x * canvas_rect.sizeDelta.x) - (canvas_rect.sizeDelta.x * 0.5f),
						   (viewport_position.y * canvas_rect.sizeDelta.y) - (canvas_rect.sizeDelta.y * 0.5f));
	}

	public static Transform FindTrasnform(this Transform transform, string name)
	{
		for (int i = 0; i < transform.childCount; i++)
		{
			var child = transform.GetChild(i);

			if (child.name == name)
			{
				return child;
			}
			else
			{
				child = FindTrasnform(child, name);
				if (child != null)
				{
					return child;
				}
			}
		}

		return null;
	}

	public static Transform[] FindContainsAll(this Transform transform, string name)
	{
		List<Transform> list = new List<Transform>();
		var transforms = transform.GetComponentsInChildren<Transform>(true);
		if (transforms == null)
		{
			return null;
		}

		foreach (var tr in transforms)
		{
			if (tr.name.Contains(name))
			{
				list.Add(tr);
			}
		}

		return list.ToArray();
	}

	public static void GetComponentIfNull<T>(this Component that, ref T cachedT) where T : Component
	{
		if (cachedT == null)
		{
			if (null == that)
			{
				Debug.LogWarning("GetComponent of Component failed on Component");
				return;
			}

			cachedT = (T)that.GetComponent(typeof(T));
			if (cachedT == null)
			{
				Debug.LogWarning("GetComponent of type " + typeof(T) + " failed on " + that.name, that);
				return;
			}
		}
	}

	public static void ResetTransform(this Transform transform, Vector3 position, Vector3 rotation, Vector3 scale)
	{
		transform.localPosition = position;
		transform.localRotation = Quaternion.Euler(rotation);
		transform.localScale = scale;
	}

	public static void ResetTransform(this Transform transform)
	{
		ResetTransform(transform, Vector3.zero, Vector3.zero, Vector3.one);
	}

	public static void CopyLocalTransform(this Transform transform, Transform target)
	{
		transform.localPosition = target.localPosition;
		transform.localRotation = target.localRotation;
		transform.localScale = target.localScale;
	}

	public static void CopyTransform(this Transform transform, Transform target)
	{
		transform.SetPositionAndRotation(target.position, target.rotation);
		transform.localScale = target.localScale;
	}

	public static void ChangeSprite(this UnityEngine.UI.Image image, Sprite sprite)
	{
		image.sprite = null;
		image.sprite = sprite;
	}

    public static void PlaySound(this string audioPath, bool loop = false, int index = 0, System.Action onComplete = null)
    {
        string path = string.Format("Sounds/{0}", audioPath);
        if (!path.IsNullOrEmpty())
        {
            var clip = Resources.Load<AudioClip>(path);
            if (clip != null)
            {
                SoundManager.Stop();
                SoundManager.Play(clip, loop, 1, index);

                if (onComplete != null)
                {
                    AppManager._instance.StartDelayAction(clip.length, onComplete);
                }
            }
            else
            {
                Debug.LogErrorFormat("not load Resources : {0}", path);

                if (onComplete != null)
                {
                    onComplete();
                }
            }
        }
    }

    public static void PlayOneShotSound(this string audioPath, int index = 0, System.Action onComplete = null)
    {
        if (audioPath.IsNullOrEmpty())
        {
            Debug.LogWarning("audioPath is Null Or Empty");
            return;
        }

        string path = string.Format("Sounds/{0}", audioPath);
        if (!path.IsNullOrEmpty())
        {
            var clip = Resources.Load<AudioClip>(path);
            if (clip != null)
            {
                SoundManager.PlayOneShot(clip, 1, index);

                if (onComplete != null)
                {
                    AppManager._instance.StartDelayAction(clip.length, onComplete);
                }
            }
            else
            {
                Debug.LogErrorFormat("not load Resources : {0}", path);

                if (onComplete != null)
                {
                    onComplete();
                }
            }
        }
    }

    public static void LoadSprite(this string spritePath, ref SpriteRenderer sprite)
    {
        if (spritePath.IsNullOrEmpty()) return;
        if (null == sprite) return;

        sprite.sprite = Resources.Load<Sprite>(spritePath);
    }

    public static void LoadImage(this string imagePath, ref Image img)
    {
        if (imagePath.IsNullOrEmpty()) return;
        if (null == img) return;

        img.sprite = Resources.Load<Sprite>(imagePath);
    }

    public static void SetText(this string textValue, ref Text text)
    {
        if (null == text) return;

        text.text = textValue;
    }
}