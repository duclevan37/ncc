// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Mobile/Illum VertexLit" {
    Properties {
        _MainTex ("Base (RGB)", 2D) = "white" {}
        _Illum ("Illum (RGB)", 2D) = "black" {}
    }
    SubShader {
        Tags { "RenderType"="Opaque" }
        LOD 80

        Pass {
            Lighting On
        
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            // Copy of ShadeVertexLights from UnityCG.cginc, modified
            // to only calculate two (instead of 4) brightest lights for efficiency

            float3 Shade2VertexLights (float4 vertex, float3 normal)
            {
                float3 viewpos = mul (UNITY_MATRIX_MV, vertex).xyz;
                float3 viewN = mul ((float3x3)UNITY_MATRIX_IT_MV, normal);
                float3 lightColor = UNITY_LIGHTMODEL_AMBIENT.xyz;
                for (int i = 0; i < 2; i++) {
                    float3 toLight = unity_LightPosition[i].xyz - viewpos.xyz * unity_LightPosition[i].w;
                    float lengthSq = dot(toLight, toLight);
                    float atten = 1.0 / (1.0 + lengthSq * unity_LightAtten[i].z);
                    float diff = max (0, dot (viewN, normalize(toLight)));
                    lightColor += unity_LightColor[i].rgb * (diff * atten);
                }
                return lightColor;
            }


            struct v2f
            {
                half2 uv_MainTex : TEXCOORD0;
                half2 uv_Illum : TEXCOORD1;
                fixed4 color : COLOR0;
                float4 pos : SV_POSITION;
            };

            float4 _MainTex_ST;
            float4 _Illum_ST;

            v2f vert (appdata_base v)
            {
                v2f o;
                o.pos = UnityObjectToClipPos(v.vertex);
                o.uv_MainTex = TRANSFORM_TEX(v.texcoord,_MainTex);
                o.uv_Illum = TRANSFORM_TEX(v.texcoord,_Illum);
                o.color = float4 (Shade2VertexLights(v.vertex, v.normal) * 2.0, 1.0);
                return o; 
            }

            sampler2D _MainTex;
            sampler2D _Illum;

            fixed4 frag (v2f i) : COLOR {
            
                // base texture
                fixed4 c = tex2D(_MainTex, i.uv_MainTex);
                // modulate with lighting
                c *= i.color;
                // add illumination texture
                c += tex2D(_Illum, i.uv_Illum);

                return c;
            }
            ENDCG
        }
    }

    Fallback "VertexLit"
}
