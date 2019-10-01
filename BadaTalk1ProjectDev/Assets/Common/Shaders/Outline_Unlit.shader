//Louis 2019.05.17

Shader "-Calm-/Outline/Outline_Unlit_Cutoff"
{
    Properties
    {
        _MainTex ("Color Texture", 2D) = "Black" {}
		[Toggle]
		_Use_CutOff ("Use Cutoff", float) = 0
        _Cutoff ("Alpha Cutoff", Range(0.001, 1)) = 0.5
    }

    SubShader
    {
        Tags
        {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        
        Lighting Off
        Cull Off

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag

			#include "UnityCG.cginc"
            
            uniform sampler2D _MainTex;
            uniform float4 _MainTex_ST;
            uniform float _Use_CutOff;
            uniform float _Cutoff;
            
            struct appdata
            {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 uv : TEXCOORD0;
            };
            
            struct v2f
            {
                float4 pos : SV_POSITION;
                float2 uv : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
            };
            
            v2f vert(appdata v)
            {
                v2f o = (v2f)0;
                o.uv = v.uv;
                o.normalDir = normalize(mul(unity_ObjectToWorld, float4(v.normal, 0)).xyz);
                o.pos = UnityObjectToClipPos(v.vertex);
                return o;
            }
            
            fixed4 frag(v2f i) : COLOR
            {
                fixed4 albedo = tex2D(_MainTex, TRANSFORM_TEX(i.uv, _MainTex));
                if (albedo.a < _Cutoff && _Use_CutOff)
                    discard;
                return albedo;
            } ENDCG
        }
    } Fallback Off
}


