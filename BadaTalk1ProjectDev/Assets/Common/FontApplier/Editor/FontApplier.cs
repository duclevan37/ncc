using System.Collections.Generic;
using UnityEditor;
using UnityEngine;
using UnityEngine.UI;

namespace Common
{
    public class FontApplier : EditorWindow
    {
        private static FontApplier assetReferenceFinder = null;
        private Vector2 scrollPosition;
        private List<Object> references = new List<Object>();

        private Font fontField = null;

        [MenuItem("Calm Island/Font Applier/Find and Apply Font", false, 0)]
        private static void FindReferences()
        {
            assetReferenceFinder = GetWindow<FontApplier>();
            Find();
        }

        private static void Find()
        {
            var textComponents = UnityEngine.Resources.FindObjectsOfTypeAll<Text>();

            var textMeshComponents = UnityEngine.Resources.FindObjectsOfTypeAll<TextMesh>();
            if (assetReferenceFinder == null || assetReferenceFinder.references == null)
            {
                return;
            }

            assetReferenceFinder.references.Clear();

            if (textComponents != null)
            {
                foreach (var text in textComponents)
                {
                    assetReferenceFinder.references.Add(text);
                }
            }

            if (textMeshComponents != null)
            {
                foreach (var textMesh in textMeshComponents)
                {
                    assetReferenceFinder.references.Add(textMesh);
                }
            }
        }

        private void ApplyFont()
        {
            if (fontField == null)
            {
                fontField = Selection.activeObject as Font ?? UnityEngine.Resources.GetBuiltinResource<Font>("Arial.ttf");
            }

            if (references == null)
            {
                return;
            }

            references.ForEach(obj =>
            {
                if (obj is Text)
                {
                    (obj as Text).font = fontField;
                }
                else if (obj is TextMesh)
                {
                    (obj as TextMesh).font = fontField;
                }
            });
        }

        private void OnGUI()
        {
            scrollPosition = EditorGUILayout.BeginScrollView(scrollPosition);

            fontField = EditorGUILayout.ObjectField(fontField, typeof(Font), false) as Font;

            if (GUILayout.Button("Find"))
            {
                Find();
            }

            if (GUILayout.Button("Apply"))
            {
                ApplyFont();
            }

            foreach (var reference in references)
            {
                EditorGUILayout.ObjectField(EditorUtility.IsPersistent(reference) ? "Asset: " : "Scene Object: ", reference, typeof(Object), true);
            }
            EditorGUILayout.EndScrollView();
        }
    }
}