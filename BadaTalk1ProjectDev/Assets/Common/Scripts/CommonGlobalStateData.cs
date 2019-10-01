using Common;
using UnityEditor;
using UnityEngine;

public class CommonGlobalStateData
{
	public static string appIdentificationMid = string.Empty;
    public static int masterdata_version = 0;

	public static bool IsPopupScene
	{
		get
		{
			int count = UnityEngine.SceneManagement.SceneManager.sceneCount;
			for (int i = 0; i < count; i++)
			{
				var scene = UnityEngine.SceneManagement.SceneManager.GetSceneAt(i);
				var name = scene.name.ToLower();

				if (scene.isLoaded && name.Contains("popup"))
				{
					return true;
				}
			}

			return false;
		}
	}

    public static string KidsLoopAppID
    {
        get
        {
            return kidsloopAppID;
        }
    }

    private static string kidsloopAppID = string.Empty;
}