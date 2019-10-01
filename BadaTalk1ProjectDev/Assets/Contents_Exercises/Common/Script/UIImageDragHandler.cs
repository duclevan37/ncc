using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;

[RequireComponent(typeof(Rigidbody))]
public class UIImageDragHandler : MonoBehaviour, IBeginDragHandler, IDragHandler, IEndDragHandler
{
    public int eccoIdx = 0;
    private Rigidbody rigibody;
    private new Collider collider = null;

    private bool isDragging { get; set; }

    public System.Action<UIImageDragHandler, Collider> OnDragEnd = null;
    private Collider onCollider;

    private Vector3 beginPosition;

    private void Awake()
    {
        rigibody = GetComponent<Rigidbody>();
        rigibody.useGravity = false;
        rigibody.isKinematic = true;

        collider = GetComponent<Collider>();
        Initialize();
    }
    private void Start()
    {
        beginPosition = this.transform.localPosition;
        this.transform.localPosition = beginPosition;
    }
    public void Initialize()
    {
        OnDragEnd = null;
        collider.isTrigger = true;
        collider.enabled = true;
        isDragging = true;
    }
    public void SetDraggingState(bool dragging, Vector3 pos = default(Vector3))
    {
        isDragging = dragging;
        if (isDragging)
        {
            this.transform.localPosition = this.beginPosition;
        }
        else
        {
            this.transform.localPosition = pos;
            collider.enabled = false;
            onCollider = null;
            OnDragEnd = null;
        }
    }
    public void OnBeginDrag(PointerEventData eventData)
    {
        if (isDragging == false)
            return;
        //depth 최상위로 올려줌
        this.GetComponent<RectTransform>().SetSiblingIndex(1000);
        Debug.Log("############# OnBeginDrag ##########");
    }
    public void OnDrag(PointerEventData eventData)
    {
        if (isDragging == false)
            return;
        this.transform.position = eventData.position;
    }
    public void OnEndDrag(PointerEventData eventData)
    {
        if (isDragging == false)
            return;
        Debug.Log("$$$$$$$$$$$$ OnTriggerStay onCollider : " + onCollider);
        if (OnDragEnd != null)
            OnDragEnd(this, onCollider);

        //if (isTrigger)
        //{
        //    isDragging = false;
        //    if (OnTrigger != null)
        //        OnTrigger(isTrigger, triggerName);
        //}
        //else
        //{
        //    isDragging = true;
        //    this.transform.localPosition = this.beginPosition;
        //}
    }
    private void OnTriggerEnter(Collider other)
    {
        if (isDragging == false)
            return;
        Debug.Log("$$$$$$$$$$$$ OnTriggerEnter collision.name : "+ other.name);
        //onCollider = collision;
    }
    private void OnTriggerExit(Collider other)
    {
        if (isDragging == false)
            return;
        if (isDragging == false)
            return;
        Debug.Log("$$$$$$$$$$$$ OnTriggerExit other : "+ other.name);
        onCollider = null;
    }
    private void OnTriggerStay(Collider other)
    {
        if (isDragging == false)
            return;
        onCollider = other;
        Debug.Log("$$$$$$$$$$$$ OnTriggerStay other : " + other.name);
    }
}
