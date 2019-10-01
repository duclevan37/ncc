//Louis 2019.05.17 from outline assets

Shader "-Calm-/Outline/Outline_Model_Mask" 
{
	Properties 
	{
		[Enum(UnityEngine.Rendering.CompareFunction)] _ZTest("ZTest", Float) = 0
	}

	SubShader 
	{
		Tags
		{
			"Queue" = "Transparent+100"
			"RenderType" = "Transparent"
		}

		Pass 
		{
			Name "Mask"
			Cull Off
			ZTest [_ZTest]
			ZWrite Off
			ColorMask 0

			Stencil 
			{
				Ref 1
				Pass Replace
			}
		}
	}
}
