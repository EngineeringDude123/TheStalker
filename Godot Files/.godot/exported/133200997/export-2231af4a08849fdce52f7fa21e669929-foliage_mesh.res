RSRC                    MeshLibrary            ��������                                            I      resource_local_to_scene    resource_name    code    script    noise_type    seed 
   frequency    offset    fractal_type    fractal_octaves    fractal_lacunarity    fractal_gain    fractal_weighted_strength    fractal_ping_pong_strength    cellular_distance_function    cellular_jitter    cellular_return_type    domain_warp_enabled    domain_warp_type    domain_warp_amplitude    domain_warp_frequency    domain_warp_fractal_type    domain_warp_fractal_octaves    domain_warp_fractal_lacunarity    domain_warp_fractal_gain    width    height    invert    in_3d_space    generate_mipmaps 	   seamless    seamless_blend_skirt    as_normal_map    bump_strength 
   normalize    color_ramp    noise    render_priority 
   next_pass    shader    shader_parameter/albedo )   shader_parameter/alpha_scissor_threshold    shader_parameter/point_size    shader_parameter/roughness *   shader_parameter/metallic_texture_channel    shader_parameter/specular    shader_parameter/metallic    shader_parameter/uv1_scale    shader_parameter/uv1_offset    shader_parameter/uv2_scale    shader_parameter/uv2_offset     shader_parameter/texture_albedo "   shader_parameter/texture_metallic #   shader_parameter/texture_roughness    shader_parameter/wind_speed    shader_parameter/wind_strength    shader_parameter/noise_tex    lightmap_size_hint    _blend_shape_names 
   _surfaces    blend_shape_mode    custom_aabb    shadow_mesh    data    image    item/0/name    item/0/mesh    item/0/mesh_transform    item/0/shapes    item/0/navigation_mesh !   item/0/navigation_mesh_transform    item/0/navigation_layers    item/0/preview    
   Texture2D    res://foliage_foliage.png o�"��e	      local://Shader_duri3 �         local://FastNoiseLite_gxuk6 �         local://NoiseTexture2D_ut3a7 �         local://ShaderMaterial_jvp4i          local://ArrayMesh_fnjyc X         local://ArrayMesh_bkrmv 2         local://Image_olqrb          local://ImageTexture_bq21v �V         local://MeshLibrary_3a5jo �V         Shader          �  // NOTE: Shader automatically converted from Godot Engine 4.2.2.stable's StandardMaterial3D.

shader_type spatial;
render_mode blend_mix,depth_draw_opaque,cull_disabled,diffuse_burley,specular_schlick_ggx, world_vertex_coords;
uniform vec4 albedo : source_color;
uniform sampler2D texture_albedo : source_color,filter_nearest_mipmap,repeat_enable;
uniform float alpha_scissor_threshold;
uniform float point_size : hint_range(0,128);
uniform float roughness : hint_range(0,1);
uniform sampler2D texture_metallic : hint_default_white,filter_nearest_mipmap,repeat_enable;
uniform vec4 metallic_texture_channel;
uniform sampler2D texture_roughness : hint_roughness_r,filter_nearest_mipmap,repeat_enable;
uniform float specular;
uniform float metallic;
uniform vec3 uv1_scale;
uniform vec3 uv1_offset;
uniform vec3 uv2_scale;
uniform vec3 uv2_offset;

group_uniforms wind;
uniform sampler2D noise_tex;
uniform float wind_speed = .1;
uniform float wind_strength = .01;


void vertex() {
	UV=UV*uv1_scale.xy+uv1_offset.xy;
	
	float offset = TIME * wind_speed;
	float noise = texture(noise_tex, NODE_POSITION_WORLD.xz-offset).r;
	noise -= .5;
	noise *= wind_strength;
	VERTEX.x += noise * length(VERTEX.y - NODE_POSITION_WORLD.y);
}



void fragment() {
	vec2 base_uv = UV;
	vec4 albedo_tex = texture(texture_albedo,base_uv);
	ALBEDO = albedo.rgb * albedo_tex.rgb;
	float metallic_tex = dot(texture(texture_metallic,base_uv),metallic_texture_channel);
	METALLIC = metallic_tex * metallic;
	vec4 roughness_texture_channel = vec4(1.0,0.0,0.0,0.0);
	float roughness_tex = dot(texture(texture_roughness,base_uv),roughness_texture_channel);
	ROUGHNESS = roughness_tex * roughness;
	SPECULAR = specular;
	ALPHA *= albedo.a * albedo_tex.a;
	ALPHA_SCISSOR_THRESHOLD = alpha_scissor_threshold;
}
          FastNoiseLite          _)�;	                  NoiseTexture2D    $                     ShaderMaterial             foliage %          &          '             (        �?  �?  �?  �?)         ?*        �?+         ?,      -         ?.          /        �?  �?  �?0                  1        �?  �?  �?2                  3             4      5      6   )   �������?7   )   �������?8                  
   ArrayMesh    ;            	         format (           
   primitive             vertex_data    `     ���  �����    �    ���    ������  �?  ��  ����    �?      ��  ��  �?����  ��      �?��          vertex_count             aabb      ���]�   �   @г�?*  @   	   uv_scale 2                         index_data    0                           	  
        index_count             name       foliage <                
   ArrayMesh             foliage_Plane_001 ;                     format (           
   primitive             vertex_data    �     ������������  �  �����  ��  ������������  �  �����  �����������?  ��������  ���?    ����  �����?��������    ���?��  ����������������������������UN��UN��UN��UNU�R�U�R�U�R�U�R�      vertex_count             attribute_data    @     ������    ��    ������    ��    ������    ��    ������    ��        aabb      ���]�   �   @г�?*  @   	   uv_scale 2                         index_data    0                   	  
              index_count          	   material                name       foliage <          >                     Image    ?               width    @         height    @         format       RGBA8       mipmaps              data     @                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              ohX�                                                                                                                                                                                                                    ����                                ohX�                                                                                                                                                                                                                        ����Ƚ��õ��                    ohX�                                                                                                                                                                                                                            ����Ƚ������                ohX�                                                                                                                                                                                                                        ����        ����                c`L�oiX�                                                                                                                                                                                                                        �����������������ʧ�    ����c`L�oiX�                                                                                                                                                                                                                        ��������������������    ����c`L�oiX�                                                                                                                                                                                                                        ��������������������������������piX�������������                                                                                                                                                                                                        ��l���������������������������������daM�������������                                                                                                                                                                                                            ��u���z���z���r�����������������daM���������������������                                                                                                                                                                                                    ��u���u���z���r���r�������������daM�����������������������������������������                                                                                                                                                                                ����������u���r���v���o���q�����daM���{������{���{�������������        ����                                                                                                                                                                                �������������{]��{]��{]���l���q�����daM���u���x���x���{�����������                                                                                                                                                                                                    mjP�mjP�wsV���r�\\A���q�eaM���u���x���x������x���x�������������                                                                                                                                                                                                �{]��{]��{]�\\A�{xd�ebM�xs\�xs\�xs\���{�������u�������������                                                                                                                                                                                                                TT;�{xd�jgQ�noW�}|_���������������������������                                                                                                                                                                                                                        ceP�noW���q������������������������                                                                                                                                                                                                                            }}`���h���h���q���������������������                                                                                                                                                                                                                                ��q�zx`���q�������������������z�                                                                                                                                                                                                                                ��q�zx`���������        ����                                                                                                                                                                                                                                                ÷��                                                                                                                                                                                                                                                            ����                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         ImageTexture    @                     MeshLibrary 	   A         foliage B            C        �?              �?              �?            D          E          F        �?              �?              �?            G         H                  RSRC