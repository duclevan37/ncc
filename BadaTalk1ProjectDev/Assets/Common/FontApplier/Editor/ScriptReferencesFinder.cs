using System.Collections.Generic;
using UnityEditor;
using UnityEngine;

namespace Common
{
    public class ScriptReferencesFinder : EditorWindow
    {
        private Vector2 scrollPosition;
        private List<MonoBehaviour> references = new List<MonoBehaviour>();

        private static MonoScript field = null;
        private static ScriptReferencesFinder assetReferenceFinder = null;

        [MenuItem("Calm Island/Script References Finder/Find References", false, 0)]
        private static void FindReferences()
        {
            assetReferenceFinder = GetWindow<ScriptReferencesFinder>();
        }

        private static void Find()
        {
            if (field == null)
            {
                return;
            }

            var components = UnityEngine.Resources.FindObjectsOfTypeAll<MonoBehaviour>();
            if (components == null || components.Length <= 0)
            {
                return;
            }

            var matchedComponents = ArrayUtility.FindAll(components, (reference) =>
            {
                var mObj = reference as Object;
                return !EditorUtility.IsPersistent(mObj) && mObj.GetType().Name.Equals(field.GetClass().Name);
            });
            assetReferenceFinder.references.Clear();
            assetReferenceFinder.references.AddRange(matchedComponents);
        }

        private void OnGUI()
        {
            scrollPosition = EditorGUILayout.BeginScrollView(scrollPosition);

            field = EditorGUILayout.ObjectField(field, typeof(MonoScript), false) as MonoScript;

            if (GUILayout.Button("Find"))
            {
                Find();
            }

            foreach (var reference in references)
            {
                EditorGUILayout.ObjectField("Scene Object: ", reference, typeof(MonoBehaviour), true);
            }

            EditorGUILayout.EndScrollView();
        }
    }
}