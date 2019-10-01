using CalmIsland;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

public class LocalizedTextManager
{
    private static Dictionary<string, MasterInfoUIText> mstTableUiText = null;

    private static SystemLanguage systemLanguage = SystemLanguage.English;

    public static SystemLanguage Language
    {
        get
        {
            return systemLanguage;
        }

        set
        {
            systemLanguage = value;
        }
    }

    private static string GetText(MasterInfoUIText info)
    {
        string text = string.Empty;

        switch (systemLanguage)
        {
            case SystemLanguage.Korean:
                text = info.KoKr;
                break;
            case SystemLanguage.French:
                text = info.FrFr;
                break;
            case SystemLanguage.Spanish:
                text = info.EsEs;
                break;
            case SystemLanguage.ChineseSimplified:
                text = info.ZhCn;
                break;
            case SystemLanguage.English:
            default:
                text = info.EnUs;
                break;
        }

        return text.Replace("\\n", "\n");
    }

    private static void LoadTable()
    {
        if (mstTableUiText != null)
            return;

        mstTableUiText = new Dictionary<string, MasterInfoUIText>();

        string path = "Table/UI_LOCAL_MSG";
        var data = Resources.Load<TextAsset>(path);

        if (data != null)
        {
            using (StringReader reader = new StringReader(data.text))
            {
                reader.ReadLine();

                string line;
                while ((line = reader.ReadLine()) != null)
                {
                    string[] split = line.Split('\t');
                    if (split.Length >= 6)
                    {
                        MasterInfoUIText info = new MasterInfoUIText();
                        info.UITextMid = split[0];
                        info.KoKr = split[1];
                        info.EnUs = split[2];
                        info.FrFr = split[3];
                        info.EsEs = split[4];
                        info.ZhCn = split[5];

                        mstTableUiText.Add(info.UITextMid, info);
                    }
                }
            }
        }
        else
        {
            Debug.LogErrorFormat("not found LocalTable : [{0}]", path);
        }
    }

    public static string GetText(string key)
    {
        if (mstTableUiText == null)
            LoadTable();

        MasterInfoUIText info = null;

        if (mstTableUiText != null && mstTableUiText.ContainsKey(key))
        {
            info = mstTableUiText[key];
        }
        else
        {
            if (MasterTableUIText.mstTableUIText != null)
                info = MasterTableUIText.GetInfo(key);
        }

        if (info != null)
        {
            var text = GetText(info);
            if (text.IsNullOrEmpty())
            {
                Debug.LogErrorFormat("found UI text is null or empty, key : {0}", key);
                return key;
            }
            return text;
        }
        else
        {
            Debug.LogErrorFormat("not found UiText key : {0}", key);
        }

        return key;
    }
}