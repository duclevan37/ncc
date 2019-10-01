using UnityEngine;

namespace GeniusStemCommon
{
    [RequireComponent(typeof(Collider))]
    public class DragHandler : MonoBehaviour
    {
        public enum eLayer
        {
            Touch, Uppermost
        }

        [SerializeField]
        private bool workingWithLayer = true;

        public bool isDragging = false;

        private Vector3 offset = Vector3.zero;
        private float zCoord = 0f;

        private int uppermostLayer;
        private int touchLayer;

        public static System.Action<DragHandler> OnPress = null;
        public static System.Action<DragHandler, Transform> OnRelease = null;

        //public CharacterReferenceFinder CharacterRef { get; private set; }

        public bool Draggable { get; set; }
        public Vector3 OriginPosition { get; set; }

        private void Awake()
        {
            GetComponent<Collider>().isTrigger = true;

            OriginPosition = transform.position;

            touchLayer = LayerMask.NameToLayer("Touch");
            uppermostLayer = LayerMask.NameToLayer("Uppermost");

            //CharacterRef = GetComponent<CharacterReferenceFinder>();

            Draggable = false;
        }

        private void OnMouseDown()
        {
            var hit = RayCast();
            if (hit != null && hit.gameObject.Equals(this.gameObject))
            {
                if (Draggable)
                {
                    isDragging = true;
                    zCoord = Camera.main.WorldToScreenPoint(transform.position).z;
                    offset = transform.position - GetMouseAsWorldPoint();
                    if (workingWithLayer)
                    {
                        SetLayer(eLayer.Uppermost);
                    }
                    Debug.LogFormat("Set isDragging to true : {0}", this.gameObject.name);
                }

                if (OnPress != null)
                {
                    OnPress(this);
                }
            }
        }

        public void SetLayer(eLayer layer)
        {
            int iLayer = 0;
            switch (layer)
            {
                case eLayer.Touch:
                    iLayer = touchLayer;
                    break;

                case eLayer.Uppermost:
                    iLayer = uppermostLayer;
                    break;

                default:
                    break;
            }

            gameObject.SetLayer(iLayer, true);
        }

        private Vector3 GetMouseAsWorldPoint()
        {
            var mousePoint = Input.mousePosition;
            mousePoint.z = zCoord;
            return Camera.main.ScreenToWorldPoint(mousePoint);
        }

        private void OnMouseDrag()
        {
            if (isDragging)
            {
                transform.position = GetMouseAsWorldPoint() + offset;
                //Debug.LogFormat("Dragging now : {0}", this.gameObject.name);
            }
        }

        private void OnMouseUp()
        {
            if (isDragging)
            {
                if (workingWithLayer)
                {
                    SetLayer(eLayer.Touch);
                }
            }

            if (OnRelease != null)
            {
                var hit = RayCast(true);
                OnRelease(this, hit);
            }
        }

        public void GoBackToOriginPosition()
        {
            isDragging = false;
            transform.position = OriginPosition;
            Debug.LogFormat("Set isDragging to false: {0}", this.gameObject.name);
        }

        public void MoveTo(Vector3 pos)
        {
            isDragging = false;
            transform.position = pos;
            Debug.LogFormat("Set isDragging to false: {0}", this.gameObject.name);
        }

        private Transform RayCast(bool exceptTouchLayer = false)
        {
            int layerMask = (1 << touchLayer) | (1 << uppermostLayer);
            if (exceptTouchLayer)
            {
                layerMask = ~layerMask;
            }

            var ray = Camera.main.ScreenPointToRay(Input.mousePosition);
            if (Physics.Raycast(ray, out RaycastHit hit, Mathf.Infinity, layerMask))
            {
                return hit.transform;
            }

            return null;
        }
    }
}