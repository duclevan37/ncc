using UnityEditor;
using UnityEditor.UI;
using UnityEngine;

/// Reference : http://answers.unity.com/answers/1157876/view.html
[CanEditMultipleObjects, CustomEditor(typeof(RaycastTargetOnly), false)]
public class RaycastTargetOnlyEditor : GraphicEditor
{
    public override void OnInspectorGUI()
    {
        base.serializedObject.Update();
        EditorGUILayout.PropertyField(base.m_Script, new GUILayoutOption[0]);
        // skipping AppearanceControlsGUI
        base.RaycastControlsGUI();
        base.serializedObject.ApplyModifiedProperties();
    }
}