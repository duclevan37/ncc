using System.Collections.Generic;
using UnityEngine.UI;
using UnityEngine;

namespace CalmUI
{
    /// <summary>
    /// Make Texts outline looks better than unity component
    /// </summary>
    [AddComponentMenu("Calm Island/UI/UI Text Outline")]
    public class UITextOutline : Shadow
    {
        #region Consts
        private const int LevelStep = 4;
        private const float AngleOfCircle = 360f;
        #endregion

        #region Fields
        [SerializeField]
        [Range(1, 30)]
        [Tooltip("The size of the outline.")]
        private float outlineSize = 1f;

        [SerializeField]
        [Range(1, 20)]
        [Tooltip("The outline quality level. Higher is better, but has worse performance.")]
        private int outLineLevel = 1;
        #endregion

        public float OutLineSize
        {
            get { return outlineSize; }
            set { outlineSize = value; }
        }

        public int OutLineLevel
        {
            get { return outLineLevel; }
            set { outLineLevel = value; }
        }


        #region Methods
        /// <summary>
        /// Override shadows function for make Outline.
        /// </summary>
        /// <param name="vh">Can control mesh information of UI</param>
        public override void ModifyMesh(VertexHelper vh)
        {
            if (!IsActive())
                return;

            List<UIVertex> verts = new List<UIVertex>();
            vh.GetUIVertexStream(verts);

            Vector2 tempPos = Vector2.zero;
            int start = 0;
            int end = verts.Count;

            int levelCount = outLineLevel * LevelStep;
            float angleStep = (float)(AngleOfCircle / levelCount);

            for (int i = 0; i < levelCount; i++)
            {
                tempPos = SetOutlinePosition(i * angleStep);
                ApplyShadowZeroAlloc(verts, effectColor, start, verts.Count, tempPos.x, tempPos.y);
                start = end;
                end = verts.Count;
            }

            vh.Clear();
            vh.AddUIVertexTriangleStream(verts);
        }

        private Vector2 SetOutlinePosition(float degree)
        {
            float sin = Mathf.Sin(Mathf.Deg2Rad * degree);
            float cos = Mathf.Cos(Mathf.Deg2Rad * degree);

            return new Vector2(sin * outlineSize, cos * outlineSize);
        }
        #endregion
    }
}
