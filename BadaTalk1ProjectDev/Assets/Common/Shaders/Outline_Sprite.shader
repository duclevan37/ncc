//Louis 2019.05.17 from outline assets

Shader "-Calm-/Outline/Outline_Sprite"
{
    Properties
    {
		[PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
		_Alpha ("Main Alpha", Range (0, 1)) = 1

		[Header(Outline Settings)]
		[MaterialToggle] _OutlineEnabled ("Outline Enabled", Float) = 1
		_SolidOutline ("Outline Color", Color) = (1,1,1,1)
        _Thickness ("Outline Size", float) = 10
		[KeywordEnum(Dot, Low, Middle, High)] _Quality("Outline Quality", Int) = 1
		_IncludeAlpha ("Include Alpha", Range (0, 0.9)) = 0.2
    }

	SubShader
	{
		Tags
		{ 
			"Queue"="Transparent" 
			//"IgnoreProjector"="True" 
			//"RenderType"="Transparent" 
			//"PreviewType"="Plane"
			//"CanUseSpriteAtlas"="True"
		}

		Cull Off
		Lighting Off
		ZWrite Off
		Blend One OneMinusSrcAlpha

		Pass
		{
			CGPROGRAM

			#pragma vertex vert
			#pragma fragment frag
			#pragma target 3.0
			//#pragma exclude_renderers d3d11_9x
			//#pragma exclude_renderers d3d9

			#include "UnityCG.cginc"
			
			struct appdata_t
			{
				float4 vertex   : POSITION;
				float4 color    : COLOR;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex   : SV_POSITION;
				fixed4 color    : COLOR;
				float2 texcoord  : TEXCOORD0;
			};

			fixed _Alpha;
            fixed _Thickness;
            fixed _OutlineEnabled;
			fixed4 _SolidOutline;
			fixed _Quality;
            fixed _IncludeAlpha;

			v2f vert(appdata_t IN)
			{
				v2f OUT;
				OUT.vertex = UnityObjectToClipPos(IN.vertex);
				OUT.texcoord = IN.texcoord;
				OUT.color = IN.color;
				OUT.color.a = _Alpha;

				return OUT;
			}

			sampler2D _MainTex;
            uniform float4 _MainTex_TexelSize;

			fixed4 SampleSpriteTexture (float2 uv)
			{
				float2 offsets;
				if(_OutlineEnabled != 0)
				{
					offsets = float2(_Thickness*2, _Thickness*2);
				}

				float2 bigsize = float2(_MainTex_TexelSize.z, _MainTex_TexelSize.w);
				float2 smallsize = float2(_MainTex_TexelSize.z - offsets.x, _MainTex_TexelSize.w - offsets.y);

				float4 uv_changed = float4
				(
					uv.x * bigsize.x / smallsize.x - 0.5 * offsets.x / smallsize.x,
					uv.y * bigsize.y / smallsize.y - 0.5 * offsets.y / smallsize.y,
					0,
					0
				);

				if(uv_changed.x < 0 || uv_changed.x > 1 || uv_changed.y < 0 || uv_changed.y > 1)
				{
					return float4(0, 0, 0, 0);
				}

				fixed4 color = tex2Dlod (_MainTex, uv_changed);

				return color;
			}

			fixed GetQualityValue()
			{
				int steps = 1;

				if (_Quality == 0)
					steps = 8;
				else if (_Quality == 1)
					steps = 16;
				else if (_Quality == 2)
					steps = 32;
				else if (_Quality == 3)
					steps = 64;

				return steps;
			}

			bool CheckOriginalSpriteTexture (float2 uv)
			{
				float thicknessX = _Thickness / _MainTex_TexelSize.z;
				float thicknessY = _Thickness / _MainTex_TexelSize.w;
				int steps = GetQualityValue();
					
				float angle_step = 360.0 / steps;

				bool outline = false;

				for(int i = 0; i < steps; i++) 
				{
					float angle = i * angle_step * 2 * 3.14 / 360;

					if(SampleSpriteTexture(uv + fixed2(thicknessX * cos(angle), thicknessY * sin(angle))).a > 0)
					{
						outline = true;
						break;
					}
				}

				return outline;
			}

			fixed4 frag(v2f IN) : SV_Target
			{
				fixed4 c = SampleSpriteTexture (IN.texcoord) * IN.color;

				c.rgb *= c.a;

				fixed4 outlineC = fixed4(0, 0, 0, 0);

				if(_OutlineEnabled != 0 && _Thickness > 0)
				{
					outlineC = _SolidOutline;
					outlineC.a *= _Alpha;
					outlineC.rgb *= outlineC.a;

					if(c.a <= _IncludeAlpha && CheckOriginalSpriteTexture(IN.texcoord))
						return outlineC;
				}

				return c;
			}

			ENDCG
		}
	}
}