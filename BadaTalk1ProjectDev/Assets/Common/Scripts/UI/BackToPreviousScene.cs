using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;

namespace Common
{
	[RequireComponent(typeof(Button))]
	public class BackToPreviousScene : MonoBehaviour
	{
		private void Awake()
		{
			AddListener(GoBackToPreviousScene);
		}

		public void AddListener(UnityAction action)
		{
			var button = GetComponent<Button>();
			if (!button)
			{
				return;
			}
			button.onClick.AddListener(action);
		}

		private void GoBackToPreviousScene()
		{
			if (!AppManager._instance)
			{
				return;
			}
			AppManager._instance.BeforeSceneChange();
		}
	}
}