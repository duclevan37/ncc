using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;

public class TouchEventSender : MonoBehaviour {

    [SerializeField]
    private UnityEvent onClick = null;

    [SerializeField]
    private Camera cameraForRaycast = null;

    private new Collider collider = null;

    private void Awake()
    {
        collider = GetComponent<Collider>();
    }

    private void Update()
    {
        if (Input.GetKeyDown(KeyCode.Mouse0))
        {
            var ray = cameraForRaycast.ScreenPointToRay(Input.mousePosition);
            RaycastHit hit;
            if (collider.Raycast(ray, out hit, 100f))
            {
                onClick.Invoke();
            }
        }
    }
}
