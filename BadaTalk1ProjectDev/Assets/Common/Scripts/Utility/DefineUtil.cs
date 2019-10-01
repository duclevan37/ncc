using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public static class DefineUtil
{
    public static Sprite GetSprite(Sprite[] sprites, string spriteName)
    {
        return System.Array.Find<Sprite>(sprites, (sprite) => sprite.name.Equals(spriteName));
    }

    public static long GetCurrUnixTimeMilliseconds()
    {
        return System.DateTimeOffset.UtcNow.ToUnixTimeMilliseconds();
    }
}
