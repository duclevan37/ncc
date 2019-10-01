using UnityEngine;

namespace Common
{
    public static class EmbeddedChecker
    {
        [SerializeField]
        private static bool isEmbeded = false;

        public static bool IsEmbeded
        {
            get
            {
                return isEmbeded;
            }
        }

        [RuntimeInitializeOnLoadMethod(RuntimeInitializeLoadType.BeforeSceneLoad)]
        private static void Init()
        {
#if USED_EMBEDDED_SYSTEM
            isEmbeded = true;
#endif
        }
    }
}