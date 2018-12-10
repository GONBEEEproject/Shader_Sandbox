Shader "Custom/DiffuseSimple" {
	Properties{
		_MainColor("Color",Color)=(1,1,1)

	}

	SubShader{
		Tags{"RenderType"="Opaque"}

		CGPROGRAM
		#pragma surface surf Lambert

		struct Input{
			float4 color:COLOR;
		};

		float4 _MainColor;

		void surf(Input IN,inout SurfaceOutput o){
			o.Albedo=_MainColor.rgb*half3(1,0.5,0.5);
			o.Alpha=0.5;
		}

		ENDCG


	}
	Fallback "Diffuse"
}
