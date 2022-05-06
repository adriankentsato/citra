// shader: 8B31, 7F020AB3CA0727DC

struct pica_uniforms {
    bool b[16];
    uvec4 i[4];
    vec4 f[96];
};

bool exec_shader();

#define uniforms vs_uniforms
layout (std140) uniform vs_config {
    pica_uniforms uniforms;
};

layout(location = 0) in vec4 vs_in_reg0;
layout(location = 1) in vec4 vs_in_reg1;
layout(location = 2) in vec4 vs_in_reg2;

 out vec4 vs_out_attr0;
 out vec4 vs_out_attr1;
 out vec4 vs_out_attr2;

void main() {
    vs_out_attr0 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr1 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr2 = vec4(0.0, 0.0, 0.0, 1.0);

    exec_shader();
}


#define mul_s(x, y) (x * y)
#define fma_s(x, y, z) fma(x, y, z)
#define rcp_s(x) (1.0 / x)
#define rsq_s(x) inversesqrt(x)
#define dot_s(x, y) dot(x, y)
#define dot_3(x, y) dot(x, y)

bvec2 conditional_code = bvec2(false);
ivec3 address_registers = ivec3(0);
vec4 reg_tmp0 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp1 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp2 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp3 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp4 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp5 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp6 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp7 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp8 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp9 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp10 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp11 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp12 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp13 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp14 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp15 = vec4(0.0, 0.0, 0.0, 1.0);

bool sub_0_4096();
bool sub_5_17();
bool sub_6_7();
bool sub_7_9();
bool sub_12_15();
bool sub_17_21();
bool sub_18_20();

bool exec_shader() {
    sub_0_4096();
    return true;
}

bool sub_0_4096() {
    // 0: dp4
    reg_tmp0.x = dot_s(uniforms.f[0], vs_in_reg0);
    // 1: dp4
    reg_tmp0.y = dot_s(uniforms.f[1], vs_in_reg0);
    // 2: dp4
    reg_tmp0.z = dot_s(uniforms.f[2], vs_in_reg0);
    // 3: dp4
    reg_tmp0.w = dot_s(uniforms.f[3], vs_in_reg0);
    // 4: ifu
    if (uniforms.b[0]) {
        sub_5_17();
    } else {
        sub_17_21();
    }
    // 21: mul
    vs_out_attr1 = mul_s(uniforms.f[47].wwww, vs_in_reg1);
    // 22: mov
    vs_out_attr2 = vs_in_reg2;
    // 23: end
    return true;
}
bool sub_5_17() {
    // 5: ifu
    if (uniforms.b[1]) {
        sub_6_7();
    } else {
        sub_7_9();
    }
    // 9: mul
    reg_tmp1.y = (mul_s(uniforms.f[5].xxxx, reg_tmp15.yyyy)).y;
    // 10: add
    reg_tmp1.y = (uniforms.f[5].yyyy + reg_tmp1.yyyy).y;
    // 11: ifu
    if (uniforms.b[2]) {
        sub_12_15();
    }
    // 15: add
    reg_tmp0.y = (reg_tmp0.yyyy + reg_tmp1.yyyy).y;
    // 16: mul
    vs_out_attr0 = mul_s(uniforms.f[4], reg_tmp0);
    return false;
}
bool sub_6_7() {
    // 6: rcp
    reg_tmp15 = vec4(rcp_s(vs_in_reg0.z));
    return false;
}
bool sub_7_9() {
    // 7: rcp
    reg_tmp15 = vec4(rcp_s(reg_tmp0.w));
    // 8: mul
    reg_tmp0.zw = (mul_s(reg_tmp0, reg_tmp15)).zw;
    return false;
}
bool sub_12_15() {
    // 12: add
    reg_tmp0.xy = (uniforms.f[47].zzzz + reg_tmp0).xy;
    // 13: flr
    reg_tmp1.y = (floor(reg_tmp1.yyyy)).y;
    // 14: flr
    reg_tmp0.xy = (floor(reg_tmp0)).xy;
    return false;
}
bool sub_17_21() {
    // 17: ifu
    if (uniforms.b[2]) {
        sub_18_20();
    }
    // 20: mul
    vs_out_attr0 = mul_s(uniforms.f[4], reg_tmp0);
    return false;
}
bool sub_18_20() {
    // 18: add
    reg_tmp0.xy = (uniforms.f[47].zzzz + reg_tmp0).xy;
    // 19: flr
    reg_tmp0.xy = (floor(reg_tmp0)).xy;
    return false;
}
// reference: 99D19FAC52CD28D3, 7F020AB3CA0727DC
// shader: 8DD9, 4E5317772B5CE683

layout(triangles) in;
layout(triangle_strip, max_vertices = 3) out;

out vec4 primary_color;
out vec2 texcoord0;
out vec2 texcoord1;
out vec2 texcoord2;
out float texcoord0_w;
out vec4 normquat;
out vec3 view;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

 in vec4 vs_out_attr0[];
 in vec4 vs_out_attr1[];
 in vec4 vs_out_attr2[];

struct Vertex {
    vec4 attributes[3];
};

vec4 GetVertexQuaternion(Vertex vtx) {
    return vec4(0.0, 0.0, 0.0, 0.0);
}

void EmitVtx(Vertex vtx, bool quats_opposite) {
    vec4 vtx_pos = vec4(vtx.attributes[0].x, vtx.attributes[0].y, vtx.attributes[0].z, vtx.attributes[0].w);
    gl_Position = vtx_pos;
#if !defined(CITRA_GLES) || defined(GL_EXT_clip_cull_distance)
    gl_ClipDistance[0] = -vtx_pos.z;
    gl_ClipDistance[1] = dot(clip_coef, vtx_pos);
#endif // !defined(CITRA_GLES) || defined(GL_EXT_clip_cull_distance)

    vec4 vtx_quat = GetVertexQuaternion(vtx);
    normquat = mix(vtx_quat, -vtx_quat, bvec4(quats_opposite));

    vec4 vtx_color = vec4(vtx.attributes[1].x, vtx.attributes[1].y, vtx.attributes[1].z, vtx.attributes[1].w);
    primary_color = min(abs(vtx_color), vec4(1.0));

    texcoord0 = vec2(vtx.attributes[2].x, vtx.attributes[2].y);
    texcoord1 = vec2(0.0, 0.0);

    texcoord0_w = 0.0;
    view = vec3(0.0, 0.0, 0.0);

    texcoord2 = vec2(0.0, 0.0);

    EmitVertex();
}

bool AreQuaternionsOpposite(vec4 qa, vec4 qb) {
    return (dot(qa, qb) < 0.0);
}

void EmitPrim(Vertex vtx0, Vertex vtx1, Vertex vtx2) {
    EmitVtx(vtx0, false);
    EmitVtx(vtx1, AreQuaternionsOpposite(GetVertexQuaternion(vtx0), GetVertexQuaternion(vtx1)));
    EmitVtx(vtx2, AreQuaternionsOpposite(GetVertexQuaternion(vtx0), GetVertexQuaternion(vtx2)));
    EndPrimitive();
}

void main() {
    Vertex prim_buffer[3];
    prim_buffer[0].attributes = vec4[3](vs_out_attr0[0], vs_out_attr1[0], vs_out_attr2[0]);
    prim_buffer[1].attributes = vec4[3](vs_out_attr0[1], vs_out_attr1[1], vs_out_attr2[1]);
    prim_buffer[2].attributes = vec4[3](vs_out_attr0[2], vs_out_attr1[2], vs_out_attr2[2]);
    EmitPrim(prim_buffer[0], prim_buffer[1], prim_buffer[2]);
}
// reference: 7B07DA3E334A19B0, 4E5317772B5CE683
// shader: 8B30, F6440C6D19465BDC

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 5949BCE7D40ACA34, F6440C6D19465BDC
// program: 7F020AB3CA0727DC, 4E5317772B5CE683, F6440C6D19465BDC
// reference: 4A52585552CD28D3, 7F020AB3CA0727DC
// shader: 8B31, 2334BC97E32A806E

struct pica_uniforms {
    bool b[16];
    uvec4 i[4];
    vec4 f[96];
};

bool exec_shader();

#define uniforms vs_uniforms
layout (std140) uniform vs_config {
    pica_uniforms uniforms;
};

layout(location = 0) in vec4 vs_in_reg0;
layout(location = 1) in vec4 vs_in_reg1;
layout(location = 2) in vec4 vs_in_reg2;
layout(location = 3) in vec4 vs_in_reg3;
layout(location = 4) in vec4 vs_in_reg4;
layout(location = 5) in vec4 vs_in_reg5;
layout(location = 6) in vec4 vs_in_reg6;
layout(location = 7) in vec4 vs_in_reg7;

 out vec4 vs_out_attr0;
 out vec4 vs_out_attr1;
 out vec4 vs_out_attr2;
 out vec4 vs_out_attr3;
 out vec4 vs_out_attr4;
 out vec4 vs_out_attr5;

void main() {
    vs_out_attr0 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr1 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr2 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr3 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr4 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr5 = vec4(0.0, 0.0, 0.0, 1.0);

    exec_shader();
}


#define mul_s(x, y) (x * y)
#define fma_s(x, y, z) fma(x, y, z)
#define rcp_s(x) (1.0 / x)
#define rsq_s(x) inversesqrt(x)
#define dot_s(x, y) dot(x, y)
#define dot_3(x, y) dot(x, y)

bvec2 conditional_code = bvec2(false);
ivec3 address_registers = ivec3(0);
vec4 reg_tmp0 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp1 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp2 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp3 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp4 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp5 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp6 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp7 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp8 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp9 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp10 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp11 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp12 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp13 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp14 = vec4(0.0, 0.0, 0.0, 1.0);
vec4 reg_tmp15 = vec4(0.0, 0.0, 0.0, 1.0);

bool sub_33_54();
bool sub_55_92();
bool sub_93_146();
bool sub_147_208();
bool sub_165_201();
bool sub_167_187();
bool sub_168_173();
bool sub_173_186();
bool sub_177_180();
bool sub_180_185();
bool sub_187_199();
bool sub_188_193();
bool sub_193_198();
bool sub_201_207();
bool sub_209_4096();
bool sub_210_256();
bool sub_211_232();
bool sub_212_214();
bool sub_214_224();
bool sub_232_255();
bool sub_233_235();
bool sub_235_242();
bool sub_251_253();
bool sub_253_254();
bool sub_256_265();
bool sub_257_259();
bool sub_259_263();
bool sub_273_279();
bool sub_280_284();
bool sub_297_300();
bool sub_300_301();

bool exec_shader() {
    sub_209_4096();
    return true;
}

bool sub_33_54() {
    // 33: flr
    reg_tmp15 = floor(vs_in_reg4);
    // 34: add
    reg_tmp15 = vs_in_reg4 + -reg_tmp15;
    // 35: add
    reg_tmp15 = reg_tmp15 + reg_tmp15;
    // 36: mova
    address_registers.xy = ivec2(vs_in_reg4.xy);
    // 37: dp4
    reg_tmp14.x = dot_s(uniforms.f[33 + address_registers.x], vs_in_reg0);
    // 38: dp4
    reg_tmp14.y = dot_s(uniforms.f[34 + address_registers.x], vs_in_reg0);
    // 39: dp4
    reg_tmp14.z = dot_s(uniforms.f[35 + address_registers.x], vs_in_reg0);
    // 40: mul
    reg_tmp0.xyz = (mul_s(reg_tmp14.xyzz, reg_tmp15.xxxx)).xyz;
    // 41: dp4
    reg_tmp14.x = dot_s(uniforms.f[33 + address_registers.y], vs_in_reg0);
    // 42: dp4
    reg_tmp14.y = dot_s(uniforms.f[34 + address_registers.y], vs_in_reg0);
    // 43: dp4
    reg_tmp14.z = dot_s(uniforms.f[35 + address_registers.y], vs_in_reg0);
    // 44: mad
    reg_tmp0.xyz = (fma_s(reg_tmp14.xyzz, reg_tmp15.yyyy, reg_tmp0.xyzz)).xyz;
    // 45: mova
    address_registers.xy = ivec2(vs_in_reg4.zw);
    // 46: dp4
    reg_tmp14.x = dot_s(uniforms.f[33 + address_registers.x], vs_in_reg0);
    // 47: dp4
    reg_tmp14.y = dot_s(uniforms.f[34 + address_registers.x], vs_in_reg0);
    // 48: dp4
    reg_tmp14.z = dot_s(uniforms.f[35 + address_registers.x], vs_in_reg0);
    // 49: mad
    reg_tmp0.xyz = (fma_s(reg_tmp14.xyzz, reg_tmp15.zzzz, reg_tmp0.xyzz)).xyz;
    // 50: dp4
    reg_tmp14.x = dot_s(uniforms.f[33 + address_registers.y], vs_in_reg0);
    // 51: dp4
    reg_tmp14.y = dot_s(uniforms.f[34 + address_registers.y], vs_in_reg0);
    // 52: dp4
    reg_tmp14.z = dot_s(uniforms.f[35 + address_registers.y], vs_in_reg0);
    // 53: mad
    reg_tmp0.xyz = (fma_s(reg_tmp14.xyzz, reg_tmp15.wwww, reg_tmp0.xyzz)).xyz;
    return false;
}
bool sub_55_92() {
    // 55: flr
    reg_tmp15 = floor(vs_in_reg4);
    // 56: add
    reg_tmp15 = vs_in_reg4 + -reg_tmp15;
    // 57: add
    reg_tmp15 = reg_tmp15 + reg_tmp15;
    // 58: mova
    address_registers.xy = ivec2(vs_in_reg4.xy);
    // 59: dp4
    reg_tmp14.x = dot_s(uniforms.f[33 + address_registers.x], vs_in_reg0);
    // 60: dp4
    reg_tmp14.y = dot_s(uniforms.f[34 + address_registers.x], vs_in_reg0);
    // 61: dp4
    reg_tmp14.z = dot_s(uniforms.f[35 + address_registers.x], vs_in_reg0);
    // 62: dp3
    reg_tmp13.x = dot_3(uniforms.f[33 + address_registers.x].xyz, vs_in_reg1.xyz);
    // 63: dp3
    reg_tmp13.y = dot_3(uniforms.f[34 + address_registers.x].xyz, vs_in_reg1.xyz);
    // 64: dp3
    reg_tmp13.z = dot_3(uniforms.f[35 + address_registers.x].xyz, vs_in_reg1.xyz);
    // 65: mul
    reg_tmp0.xyz = (mul_s(reg_tmp14.xyzz, reg_tmp15.xxxx)).xyz;
    // 66: mul
    reg_tmp1.xyz = (mul_s(reg_tmp13.xyzz, reg_tmp15.xxxx)).xyz;
    // 67: dp4
    reg_tmp14.x = dot_s(uniforms.f[33 + address_registers.y], vs_in_reg0);
    // 68: dp4
    reg_tmp14.y = dot_s(uniforms.f[34 + address_registers.y], vs_in_reg0);
    // 69: dp4
    reg_tmp14.z = dot_s(uniforms.f[35 + address_registers.y], vs_in_reg0);
    // 70: dp3
    reg_tmp13.x = dot_3(uniforms.f[33 + address_registers.y].xyz, vs_in_reg1.xyz);
    // 71: dp3
    reg_tmp13.y = dot_3(uniforms.f[34 + address_registers.y].xyz, vs_in_reg1.xyz);
    // 72: dp3
    reg_tmp13.z = dot_3(uniforms.f[35 + address_registers.y].xyz, vs_in_reg1.xyz);
    // 73: mad
    reg_tmp0.xyz = (fma_s(reg_tmp14.xyzz, reg_tmp15.yyyy, reg_tmp0.xyzz)).xyz;
    // 74: mad
    reg_tmp1.xyz = (fma_s(reg_tmp13.xyzz, reg_tmp15.yyyy, reg_tmp1.xyzz)).xyz;
    // 75: mova
    address_registers.xy = ivec2(vs_in_reg4.zw);
    // 76: dp4
    reg_tmp14.x = dot_s(uniforms.f[33 + address_registers.x], vs_in_reg0);
    // 77: dp4
    reg_tmp14.y = dot_s(uniforms.f[34 + address_registers.x], vs_in_reg0);
    // 78: dp4
    reg_tmp14.z = dot_s(uniforms.f[35 + address_registers.x], vs_in_reg0);
    // 79: dp3
    reg_tmp13.x = dot_3(uniforms.f[33 + address_registers.x].xyz, vs_in_reg1.xyz);
    // 80: dp3
    reg_tmp13.y = dot_3(uniforms.f[34 + address_registers.x].xyz, vs_in_reg1.xyz);
    // 81: dp3
    reg_tmp13.z = dot_3(uniforms.f[35 + address_registers.x].xyz, vs_in_reg1.xyz);
    // 82: mad
    reg_tmp0.xyz = (fma_s(reg_tmp14.xyzz, reg_tmp15.zzzz, reg_tmp0.xyzz)).xyz;
    // 83: mad
    reg_tmp1.xyz = (fma_s(reg_tmp13.xyzz, reg_tmp15.zzzz, reg_tmp1.xyzz)).xyz;
    // 84: dp4
    reg_tmp14.x = dot_s(uniforms.f[33 + address_registers.y], vs_in_reg0);
    // 85: dp4
    reg_tmp14.y = dot_s(uniforms.f[34 + address_registers.y], vs_in_reg0);
    // 86: dp4
    reg_tmp14.z = dot_s(uniforms.f[35 + address_registers.y], vs_in_reg0);
    // 87: dp3
    reg_tmp13.x = dot_3(uniforms.f[33 + address_registers.y].xyz, vs_in_reg1.xyz);
    // 88: dp3
    reg_tmp13.y = dot_3(uniforms.f[34 + address_registers.y].xyz, vs_in_reg1.xyz);
    // 89: dp3
    reg_tmp13.z = dot_3(uniforms.f[35 + address_registers.y].xyz, vs_in_reg1.xyz);
    // 90: mad
    reg_tmp0.xyz = (fma_s(reg_tmp14.xyzz, reg_tmp15.wwww, reg_tmp0.xyzz)).xyz;
    // 91: mad
    reg_tmp1.xyz = (fma_s(reg_tmp13.xyzz, reg_tmp15.wwww, reg_tmp1.xyzz)).xyz;
    return false;
}
bool sub_93_146() {
    // 93: flr
    reg_tmp15 = floor(vs_in_reg4);
    // 94: add
    reg_tmp15 = vs_in_reg4 + -reg_tmp15;
    // 95: add
    reg_tmp15 = reg_tmp15 + reg_tmp15;
    // 96: mova
    address_registers.xy = ivec2(vs_in_reg4.xy);
    // 97: dp4
    reg_tmp14.x = dot_s(uniforms.f[33 + address_registers.x], vs_in_reg0);
    // 98: dp4
    reg_tmp14.y = dot_s(uniforms.f[34 + address_registers.x], vs_in_reg0);
    // 99: dp4
    reg_tmp14.z = dot_s(uniforms.f[35 + address_registers.x], vs_in_reg0);
    // 100: dp3
    reg_tmp13.x = dot_3(uniforms.f[33 + address_registers.x].xyz, vs_in_reg1.xyz);
    // 101: dp3
    reg_tmp13.y = dot_3(uniforms.f[34 + address_registers.x].xyz, vs_in_reg1.xyz);
    // 102: dp3
    reg_tmp13.z = dot_3(uniforms.f[35 + address_registers.x].xyz, vs_in_reg1.xyz);
    // 103: dp3
    reg_tmp12.x = dot_3(uniforms.f[33 + address_registers.x].xyz, vs_in_reg2.xyz);
    // 104: dp3
    reg_tmp12.y = dot_3(uniforms.f[34 + address_registers.x].xyz, vs_in_reg2.xyz);
    // 105: dp3
    reg_tmp12.z = dot_3(uniforms.f[35 + address_registers.x].xyz, vs_in_reg2.xyz);
    // 106: mul
    reg_tmp0.xyz = (mul_s(reg_tmp14.xyzz, reg_tmp15.xxxx)).xyz;
    // 107: mul
    reg_tmp1.xyz = (mul_s(reg_tmp13.xyzz, reg_tmp15.xxxx)).xyz;
    // 108: mul
    reg_tmp2.xyz = (mul_s(reg_tmp12.xyzz, reg_tmp15.xxxx)).xyz;
    // 109: dp4
    reg_tmp14.x = dot_s(uniforms.f[33 + address_registers.y], vs_in_reg0);
    // 110: dp4
    reg_tmp14.y = dot_s(uniforms.f[34 + address_registers.y], vs_in_reg0);
    // 111: dp4
    reg_tmp14.z = dot_s(uniforms.f[35 + address_registers.y], vs_in_reg0);
    // 112: dp3
    reg_tmp13.x = dot_3(uniforms.f[33 + address_registers.y].xyz, vs_in_reg1.xyz);
    // 113: dp3
    reg_tmp13.y = dot_3(uniforms.f[34 + address_registers.y].xyz, vs_in_reg1.xyz);
    // 114: dp3
    reg_tmp13.z = dot_3(uniforms.f[35 + address_registers.y].xyz, vs_in_reg1.xyz);
    // 115: dp3
    reg_tmp12.x = dot_3(uniforms.f[33 + address_registers.y].xyz, vs_in_reg2.xyz);
    // 116: dp3
    reg_tmp12.y = dot_3(uniforms.f[34 + address_registers.y].xyz, vs_in_reg2.xyz);
    // 117: dp3
    reg_tmp12.z = dot_3(uniforms.f[35 + address_registers.y].xyz, vs_in_reg2.xyz);
    // 118: mad
    reg_tmp0.xyz = (fma_s(reg_tmp14.xyzz, reg_tmp15.yyyy, reg_tmp0.xyzz)).xyz;
    // 119: mad
    reg_tmp1.xyz = (fma_s(reg_tmp13.xyzz, reg_tmp15.yyyy, reg_tmp1.xyzz)).xyz;
    // 120: mad
    reg_tmp2.xyz = (fma_s(reg_tmp12.xyzz, reg_tmp15.yyyy, reg_tmp2.xyzz)).xyz;
    // 121: mova
    address_registers.xy = ivec2(vs_in_reg4.zw);
    // 122: dp4
    reg_tmp14.x = dot_s(uniforms.f[33 + address_registers.x], vs_in_reg0);
    // 123: dp4
    reg_tmp14.y = dot_s(uniforms.f[34 + address_registers.x], vs_in_reg0);
    // 124: dp4
    reg_tmp14.z = dot_s(uniforms.f[35 + address_registers.x], vs_in_reg0);
    // 125: dp3
    reg_tmp13.x = dot_3(uniforms.f[33 + address_registers.x].xyz, vs_in_reg1.xyz);
    // 126: dp3
    reg_tmp13.y = dot_3(uniforms.f[34 + address_registers.x].xyz, vs_in_reg1.xyz);
    // 127: dp3
    reg_tmp13.z = dot_3(uniforms.f[35 + address_registers.x].xyz, vs_in_reg1.xyz);
    // 128: dp3
    reg_tmp12.x = dot_3(uniforms.f[33 + address_registers.x].xyz, vs_in_reg2.xyz);
    // 129: dp3
    reg_tmp12.y = dot_3(uniforms.f[34 + address_registers.x].xyz, vs_in_reg2.xyz);
    // 130: dp3
    reg_tmp12.z = dot_3(uniforms.f[35 + address_registers.x].xyz, vs_in_reg2.xyz);
    // 131: mad
    reg_tmp0.xyz = (fma_s(reg_tmp14.xyzz, reg_tmp15.zzzz, reg_tmp0.xyzz)).xyz;
    // 132: mad
    reg_tmp1.xyz = (fma_s(reg_tmp13.xyzz, reg_tmp15.zzzz, reg_tmp1.xyzz)).xyz;
    // 133: mad
    reg_tmp2.xyz = (fma_s(reg_tmp12.xyzz, reg_tmp15.zzzz, reg_tmp2.xyzz)).xyz;
    // 134: dp4
    reg_tmp14.x = dot_s(uniforms.f[33 + address_registers.y], vs_in_reg0);
    // 135: dp4
    reg_tmp14.y = dot_s(uniforms.f[34 + address_registers.y], vs_in_reg0);
    // 136: dp4
    reg_tmp14.z = dot_s(uniforms.f[35 + address_registers.y], vs_in_reg0);
    // 137: dp3
    reg_tmp13.x = dot_3(uniforms.f[33 + address_registers.y].xyz, vs_in_reg1.xyz);
    // 138: dp3
    reg_tmp13.y = dot_3(uniforms.f[34 + address_registers.y].xyz, vs_in_reg1.xyz);
    // 139: dp3
    reg_tmp13.z = dot_3(uniforms.f[35 + address_registers.y].xyz, vs_in_reg1.xyz);
    // 140: dp3
    reg_tmp12.x = dot_3(uniforms.f[33 + address_registers.y].xyz, vs_in_reg2.xyz);
    // 141: dp3
    reg_tmp12.y = dot_3(uniforms.f[34 + address_registers.y].xyz, vs_in_reg2.xyz);
    // 142: dp3
    reg_tmp12.z = dot_3(uniforms.f[35 + address_registers.y].xyz, vs_in_reg2.xyz);
    // 143: mad
    reg_tmp0.xyz = (fma_s(reg_tmp14.xyzz, reg_tmp15.wwww, reg_tmp0.xyzz)).xyz;
    // 144: mad
    reg_tmp1.xyz = (fma_s(reg_tmp13.xyzz, reg_tmp15.wwww, reg_tmp1.xyzz)).xyz;
    // 145: mad
    reg_tmp2.xyz = (fma_s(reg_tmp12.xyzz, reg_tmp15.wwww, reg_tmp2.xyzz)).xyz;
    return false;
}
bool sub_147_208() {
    // 147: mul
    reg_tmp5 = mul_s(reg_tmp1.yzxx, reg_tmp2.zxyy);
    // 148: mad
    reg_tmp5 = fma_s(-reg_tmp2.yzxx, reg_tmp1.zxyy, reg_tmp5);
    // 149: dp3
    reg_tmp5.w = dot_3(reg_tmp5.xyz, reg_tmp5.xyz);
    // 150: rsq
    reg_tmp5.w = rsq_s(reg_tmp5.w);
    // 151: mul
    reg_tmp5 = mul_s(reg_tmp5, reg_tmp5.wwww);
    // 152: add
    reg_tmp6.w = (reg_tmp1.zzzz + reg_tmp5.yyyy).w;
    // 153: mul
    reg_tmp2 = mul_s(reg_tmp5.yzxx, reg_tmp1.zxyy);
    // 154: mad
    reg_tmp2 = fma_s(-reg_tmp1.yzxx, reg_tmp5.zxyy, reg_tmp2);
    // 155: add
    reg_tmp6.w = (reg_tmp2.xxxx + reg_tmp6.wwww).w;
    // 156: mov
    reg_tmp2.w = (reg_tmp5.zzzz).w;
    // 157: mov
    reg_tmp5.z = (reg_tmp2.xxxx).z;
    // 158: add
    reg_tmp6.w = (uniforms.f[32].xxxx + reg_tmp6.wwww).w;
    // 159: mov
    reg_tmp1.w = (reg_tmp5.xxxx).w;
    // 160: mov
    reg_tmp5.x = (reg_tmp1.zzzz).x;
    // 161: cmp
    conditional_code = lessThan(uniforms.f[31].xx, reg_tmp6.ww);
    // 162: mov
    reg_tmp6.x = (uniforms.f[32].xxxx).x;
    // 163: mov
    reg_tmp6.y = (-uniforms.f[32].xxxx).y;
    // 164: ifc
    if (!conditional_code.x) {
        sub_165_201();
    } else {
        sub_201_207();
    }
    // 207: nop
    return false;
}
bool sub_165_201() {
    // 165: cmp
    conditional_code = greaterThan(reg_tmp5.zy, reg_tmp5.yx);
    // 166: ifc
    if (conditional_code.x) {
        sub_167_187();
    } else {
        sub_187_199();
    }
    // 199: rsq
    reg_tmp6 = vec4(rsq_s(reg_tmp6.x));
    // 200: mul
    vs_out_attr2 = mul_s(reg_tmp8, reg_tmp6);
    return false;
}
bool sub_167_187() {
    // 167: ifc
    if (conditional_code.y) {
        sub_168_173();
    } else {
        sub_173_186();
    }
    // 186: dp4
    reg_tmp6 = vec4(dot_s(reg_tmp8, reg_tmp8));
    return false;
}
bool sub_168_173() {
    // 168: mul
    reg_tmp8 = mul_s(reg_tmp2.yyzw, reg_tmp6.xxxy);
    // 169: add
    reg_tmp8.x = (uniforms.f[32].xxxx + -reg_tmp5.yyyy).x;
    // 170: add
    reg_tmp9 = reg_tmp5.zzzz + -reg_tmp5.xxxx;
    // 171: add
    reg_tmp8.yzw = (reg_tmp8 + reg_tmp1.wwxy).yzw;
    // 172: add
    reg_tmp8.x = (reg_tmp9 + reg_tmp8).x;
    return false;
}
bool sub_173_186() {
    // 173: cmp
    conditional_code = greaterThan(reg_tmp5.zz, reg_tmp5.xx);
    // 174: mul
    reg_tmp8 = mul_s(reg_tmp2.yyzw, reg_tmp6.xxxy);
    // 175: add
    reg_tmp8.x = (uniforms.f[32].xxxx + -reg_tmp5.yyyy).x;
    // 176: ifc
    if (conditional_code.x) {
        sub_177_180();
    } else {
        sub_180_185();
    }
    // 185: nop
    return false;
}
bool sub_177_180() {
    // 177: add
    reg_tmp9 = reg_tmp5.zzzz + -reg_tmp5.xxxx;
    // 178: add
    reg_tmp8.yzw = (reg_tmp8 + reg_tmp1.wwxy).yzw;
    // 179: add
    reg_tmp8.x = (reg_tmp9 + reg_tmp8).x;
    return false;
}
bool sub_180_185() {
    // 180: mul
    reg_tmp8 = mul_s(reg_tmp2.zwwy, reg_tmp6.xxxy);
    // 181: add
    reg_tmp8.z = (uniforms.f[32].xxxx + -reg_tmp5.zzzz).z;
    // 182: add
    reg_tmp9 = reg_tmp5.xxxx + -reg_tmp5.yyyy;
    // 183: add
    reg_tmp8.xyw = (reg_tmp8 + reg_tmp1.xyyw).xyw;
    // 184: add
    reg_tmp8.z = (reg_tmp9 + reg_tmp8).z;
    return false;
}
bool sub_187_199() {
    // 187: ifc
    if (conditional_code.y) {
        sub_188_193();
    } else {
        sub_193_198();
    }
    // 198: dp4
    reg_tmp6 = vec4(dot_s(reg_tmp8, reg_tmp8));
    return false;
}
bool sub_188_193() {
    // 188: mul
    reg_tmp8 = mul_s(reg_tmp2.yywz, reg_tmp6.xxxy);
    // 189: add
    reg_tmp8.y = (uniforms.f[32].xxxx + -reg_tmp5.zzzz).y;
    // 190: add
    reg_tmp9 = reg_tmp5.yyyy + -reg_tmp5.xxxx;
    // 191: add
    reg_tmp8.xzw = (reg_tmp8 + reg_tmp1.wwyx).xzw;
    // 192: add
    reg_tmp8.y = (reg_tmp9 + reg_tmp8).y;
    return false;
}
bool sub_193_198() {
    // 193: mul
    reg_tmp8 = mul_s(reg_tmp2.zwwy, reg_tmp6.xxxy);
    // 194: add
    reg_tmp8.z = (uniforms.f[32].xxxx + -reg_tmp5.zzzz).z;
    // 195: add
    reg_tmp9 = reg_tmp5.xxxx + -reg_tmp5.yyyy;
    // 196: add
    reg_tmp8.xyw = (reg_tmp8 + reg_tmp1.xyyw).xyw;
    // 197: add
    reg_tmp8.z = (reg_tmp9 + reg_tmp8).z;
    return false;
}
bool sub_201_207() {
    // 201: add
    reg_tmp7.xz = (reg_tmp2.wwyy + -reg_tmp1.yyww).xz;
    // 202: add
    reg_tmp7.y = (reg_tmp1.xxxx + -reg_tmp2.zzzz).y;
    // 203: mov
    reg_tmp7.w = (reg_tmp6.wwww).w;
    // 204: dp4
    reg_tmp6 = vec4(dot_s(reg_tmp7, reg_tmp7));
    // 205: rsq
    reg_tmp6 = vec4(rsq_s(reg_tmp6.x));
    // 206: mul
    vs_out_attr2 = mul_s(reg_tmp7, reg_tmp6);
    return false;
}
bool sub_209_4096() {
    // 209: ifu
    if (uniforms.b[1]) {
        sub_210_256();
    } else {
        sub_256_265();
    }
    // 265: mul
    reg_tmp15 = mul_s(uniforms.f[12].xxxx, vs_in_reg3);
    // 266: add
    vs_out_attr1 = uniforms.f[12].yyyy + reg_tmp15;
    // 267: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp0);
    // 268: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp0);
    // 269: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp0);
    // 270: dp4
    reg_tmp10.w = dot_s(uniforms.f[3], reg_tmp0);
    // 271: mov
    reg_tmp11 = uniforms.f[32].yyyy;
    // 272: ifu
    if (uniforms.b[3]) {
        sub_273_279();
    }
    // 279: ifu
    if (uniforms.b[4]) {
        sub_280_284();
    }
    // 284: add
    vs_out_attr0 = reg_tmp10 + reg_tmp11;
    // 285: mul
    reg_tmp13 = mul_s(uniforms.f[16].xxxx, vs_in_reg5);
    // 286: mul
    reg_tmp14 = mul_s(uniforms.f[17].xxxx, vs_in_reg5);
    // 287: mul
    reg_tmp15 = mul_s(uniforms.f[18].xxxx, vs_in_reg5);
    // 288: mad
    reg_tmp13 = fma_s(vs_in_reg6, uniforms.f[16].yyyy, reg_tmp13);
    // 289: mad
    reg_tmp14 = fma_s(vs_in_reg6, uniforms.f[17].yyyy, reg_tmp14);
    // 290: mad
    reg_tmp15 = fma_s(vs_in_reg6, uniforms.f[18].yyyy, reg_tmp15);
    // 291: mad
    reg_tmp13 = fma_s(vs_in_reg7, uniforms.f[16].zzzz, reg_tmp13);
    // 292: mad
    reg_tmp14 = fma_s(vs_in_reg7, uniforms.f[17].zzzz, reg_tmp14);
    // 293: mad
    reg_tmp15 = fma_s(vs_in_reg7, uniforms.f[18].zzzz, reg_tmp15);
    // 294: add
    vs_out_attr4 = uniforms.f[12].zwzw + reg_tmp13;
    // 295: add
    vs_out_attr5.xy = (uniforms.f[13] + reg_tmp14.xyxy).xy;
    // 296: ifu
    if (uniforms.b[5]) {
        sub_297_300();
    } else {
        sub_300_301();
    }
    // 301: end
    return true;
}
bool sub_210_256() {
    // 210: ifu
    if (uniforms.b[2]) {
        sub_211_232();
    } else {
        sub_232_255();
    }
    // 255: add
    vs_out_attr3 = uniforms.f[4] + -reg_tmp0;
    return false;
}
bool sub_211_232() {
    // 211: ifu
    if (uniforms.b[0]) {
        sub_212_214();
    } else {
        sub_214_224();
    }
    // 224: dp3
    reg_tmp15.x = dot_3(reg_tmp1.xyz, reg_tmp1.xyz);
    // 225: dp3
    reg_tmp14.x = dot_3(reg_tmp2.xyz, reg_tmp2.xyz);
    // 226: rsq
    reg_tmp15.x = rsq_s(reg_tmp15.x);
    // 227: rsq
    reg_tmp14.x = rsq_s(reg_tmp14.x);
    // 228: mul
    reg_tmp1.xyz = (mul_s(reg_tmp1.xyzz, reg_tmp15.xxxx)).xyz;
    // 229: mul
    reg_tmp2.xyz = (mul_s(reg_tmp2.xyzz, reg_tmp14.xxxx)).xyz;
    // 230: call
    {
        sub_147_208();
    }
    // 231: nop
    return false;
}
bool sub_212_214() {
    // 212: call
    {
        sub_93_146();
    }
    // 213: mov
    reg_tmp0.w = (vs_in_reg0).w;
    return false;
}
bool sub_214_224() {
    // 214: dp3
    reg_tmp2.x = dot_3(uniforms.f[33].xyz, vs_in_reg2.xyz);
    // 215: dp3
    reg_tmp2.y = dot_3(uniforms.f[34].xyz, vs_in_reg2.xyz);
    // 216: dp3
    reg_tmp2.z = dot_3(uniforms.f[35].xyz, vs_in_reg2.xyz);
    // 217: dp3
    reg_tmp1.x = dot_3(uniforms.f[33].xyz, vs_in_reg1.xyz);
    // 218: dp3
    reg_tmp1.y = dot_3(uniforms.f[34].xyz, vs_in_reg1.xyz);
    // 219: dp3
    reg_tmp1.z = dot_3(uniforms.f[35].xyz, vs_in_reg1.xyz);
    // 220: dp4
    reg_tmp0.x = dot_s(uniforms.f[33], vs_in_reg0);
    // 221: dp4
    reg_tmp0.y = dot_s(uniforms.f[34], vs_in_reg0);
    // 222: dp4
    reg_tmp0.z = dot_s(uniforms.f[35], vs_in_reg0);
    // 223: mov
    reg_tmp0.w = (vs_in_reg0).w;
    return false;
}
bool sub_232_255() {
    // 232: ifu
    if (uniforms.b[0]) {
        sub_233_235();
    } else {
        sub_235_242();
    }
    // 242: dp3
    reg_tmp15.x = dot_3(reg_tmp1.xyz, reg_tmp1.xyz);
    // 243: rsq
    reg_tmp15.x = rsq_s(reg_tmp15.x);
    // 244: mul
    reg_tmp1.xyz = (mul_s(reg_tmp1.xyzz, reg_tmp15.xxxx)).xyz;
    // 245: cmp
    conditional_code = equal(-uniforms.f[32].xx, reg_tmp1.zz);
    // 246: add
    reg_tmp14 = uniforms.f[32].xxxx + reg_tmp1.zzzz;
    // 247: mul
    reg_tmp14 = mul_s(uniforms.f[32].wwww, reg_tmp14);
    // 248: rsq
    reg_tmp14 = vec4(rsq_s(reg_tmp14.x));
    // 249: mul
    reg_tmp15.xyz = (mul_s(uniforms.f[32].wwww, reg_tmp1.xyzz)).xyz;
    // 250: ifc
    if (!conditional_code.x) {
        sub_251_253();
    } else {
        sub_253_254();
    }
    // 254: mov
    vs_out_attr2.w = (uniforms.f[32].yyyy).w;
    return false;
}
bool sub_233_235() {
    // 233: call
    {
        sub_55_92();
    }
    // 234: mov
    reg_tmp0.w = (vs_in_reg0).w;
    return false;
}
bool sub_235_242() {
    // 235: dp3
    reg_tmp1.x = dot_3(uniforms.f[33].xyz, vs_in_reg1.xyz);
    // 236: dp3
    reg_tmp1.y = dot_3(uniforms.f[34].xyz, vs_in_reg1.xyz);
    // 237: dp3
    reg_tmp1.z = dot_3(uniforms.f[35].xyz, vs_in_reg1.xyz);
    // 238: dp4
    reg_tmp0.x = dot_s(uniforms.f[33], vs_in_reg0);
    // 239: dp4
    reg_tmp0.y = dot_s(uniforms.f[34], vs_in_reg0);
    // 240: dp4
    reg_tmp0.z = dot_s(uniforms.f[35], vs_in_reg0);
    // 241: mov
    reg_tmp0.w = (vs_in_reg0).w;
    return false;
}
bool sub_251_253() {
    // 251: rcp
    vs_out_attr2.z = rcp_s(reg_tmp14.x);
    // 252: mul
    vs_out_attr2.xy = (mul_s(reg_tmp15.xyyy, reg_tmp14)).xy;
    return false;
}
bool sub_253_254() {
    // 253: mov
    vs_out_attr2.xyz = (uniforms.f[32].xyyy).xyz;
    return false;
}
bool sub_256_265() {
    // 256: ifu
    if (uniforms.b[0]) {
        sub_257_259();
    } else {
        sub_259_263();
    }
    // 263: mov
    vs_out_attr2 = uniforms.f[32].xyyy;
    // 264: mov
    vs_out_attr3 = uniforms.f[32].yyxx;
    return false;
}
bool sub_257_259() {
    // 257: call
    {
        sub_33_54();
    }
    // 258: mov
    reg_tmp0.w = (vs_in_reg0).w;
    return false;
}
bool sub_259_263() {
    // 259: dp4
    reg_tmp0.x = dot_s(uniforms.f[33], vs_in_reg0);
    // 260: dp4
    reg_tmp0.y = dot_s(uniforms.f[34], vs_in_reg0);
    // 261: dp4
    reg_tmp0.z = dot_s(uniforms.f[35], vs_in_reg0);
    // 262: mov
    reg_tmp0.w = (vs_in_reg0).w;
    return false;
}
bool sub_273_279() {
    // 273: mov
    reg_tmp15.x = (uniforms.f[7].zzzz).x;
    // 274: rcp
    reg_tmp15.y = rcp_s(reg_tmp10.w);
    // 275: mul
    reg_tmp15.x = (mul_s(uniforms.f[7].wwww, reg_tmp15.xxxx)).x;
    // 276: sgei
    reg_tmp12 = vec4(greaterThanEqual(-reg_tmp10.wwww, uniforms.f[7].wwww));
    // 277: mov
    reg_tmp10.w = (uniforms.f[32].xxxx).w;
    // 278: madi
    reg_tmp11.y = (fma_s(reg_tmp15.yyyy, reg_tmp15.xxxx, uniforms.f[7].zzzz)).y;
    return false;
}
bool sub_280_284() {
    // 280: flr
    reg_tmp10.xy = (floor(reg_tmp10)).xy;
    // 281: mul
    reg_tmp10.xy = (mul_s(uniforms.f[7].xyyy, reg_tmp10)).xy;
    // 282: flr
    reg_tmp11.xy = (floor(reg_tmp11)).xy;
    // 283: mul
    reg_tmp11.xy = (mul_s(uniforms.f[7].xyyy, reg_tmp11)).xy;
    return false;
}
bool sub_297_300() {
    // 297: mad
    reg_tmp10.xy = (fma_s(reg_tmp11, reg_tmp12, reg_tmp10)).xy;
    // 298: mul
    reg_tmp10.xy = (mul_s(uniforms.f[8].xyxy, reg_tmp10.xyyy)).xy;
    // 299: add
    vs_out_attr5.zw = (uniforms.f[8].zwzw + reg_tmp10.xyxy).zw;
    return false;
}
bool sub_300_301() {
    // 300: add
    vs_out_attr5.zw = (uniforms.f[13] + reg_tmp15.xyxy).zw;
    return false;
}
// reference: FC59CA3F31A438A1, 2334BC97E32A806E
// shader: 8DD9, 6E7B8E8B357C1A8D

layout(triangles) in;
layout(triangle_strip, max_vertices = 3) out;

out vec4 primary_color;
out vec2 texcoord0;
out vec2 texcoord1;
out vec2 texcoord2;
out float texcoord0_w;
out vec4 normquat;
out vec3 view;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

 in vec4 vs_out_attr0[];
 in vec4 vs_out_attr1[];
 in vec4 vs_out_attr2[];
 in vec4 vs_out_attr3[];
 in vec4 vs_out_attr4[];
 in vec4 vs_out_attr5[];

struct Vertex {
    vec4 attributes[6];
};

vec4 GetVertexQuaternion(Vertex vtx) {
    return vec4(vtx.attributes[2].x, vtx.attributes[2].y, vtx.attributes[2].z, vtx.attributes[2].w);
}

void EmitVtx(Vertex vtx, bool quats_opposite) {
    vec4 vtx_pos = vec4(vtx.attributes[0].x, vtx.attributes[0].y, vtx.attributes[0].z, vtx.attributes[0].w);
    gl_Position = vtx_pos;
#if !defined(CITRA_GLES) || defined(GL_EXT_clip_cull_distance)
    gl_ClipDistance[0] = -vtx_pos.z;
    gl_ClipDistance[1] = dot(clip_coef, vtx_pos);
#endif // !defined(CITRA_GLES) || defined(GL_EXT_clip_cull_distance)

    vec4 vtx_quat = GetVertexQuaternion(vtx);
    normquat = mix(vtx_quat, -vtx_quat, bvec4(quats_opposite));

    vec4 vtx_color = vec4(vtx.attributes[1].x, vtx.attributes[1].y, vtx.attributes[1].z, vtx.attributes[1].w);
    primary_color = min(abs(vtx_color), vec4(1.0));

    texcoord0 = vec2(vtx.attributes[4].x, vtx.attributes[4].y);
    texcoord1 = vec2(vtx.attributes[5].x, vtx.attributes[5].y);

    texcoord0_w = 0.0;
    view = vec3(vtx.attributes[3].x, vtx.attributes[3].y, vtx.attributes[3].z);

    texcoord2 = vec2(vtx.attributes[5].z, vtx.attributes[5].w);

    EmitVertex();
}

bool AreQuaternionsOpposite(vec4 qa, vec4 qb) {
    return (dot(qa, qb) < 0.0);
}

void EmitPrim(Vertex vtx0, Vertex vtx1, Vertex vtx2) {
    EmitVtx(vtx0, false);
    EmitVtx(vtx1, AreQuaternionsOpposite(GetVertexQuaternion(vtx0), GetVertexQuaternion(vtx1)));
    EmitVtx(vtx2, AreQuaternionsOpposite(GetVertexQuaternion(vtx0), GetVertexQuaternion(vtx2)));
    EndPrimitive();
}

void main() {
    Vertex prim_buffer[3];
    prim_buffer[0].attributes = vec4[6](vs_out_attr0[0], vs_out_attr1[0], vs_out_attr2[0], vs_out_attr3[0], vs_out_attr4[0], vs_out_attr5[0]);
    prim_buffer[1].attributes = vec4[6](vs_out_attr0[1], vs_out_attr1[1], vs_out_attr2[1], vs_out_attr3[1], vs_out_attr4[1], vs_out_attr5[1]);
    prim_buffer[2].attributes = vec4[6](vs_out_attr0[2], vs_out_attr1[2], vs_out_attr2[2], vs_out_attr3[2], vs_out_attr4[2], vs_out_attr5[2]);
    EmitPrim(prim_buffer[0], prim_buffer[1], prim_buffer[2]);
}
// reference: 6B326F6AE5AB004C, 6E7B8E8B357C1A8D
// shader: 8B30, EA62258A0FBE6C7D

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (vec3(1.0) - const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) < alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 70047AE025C9B0D9, EA62258A0FBE6C7D
// program: 2334BC97E32A806E, 6E7B8E8B357C1A8D, EA62258A0FBE6C7D
// shader: 8B30, 932A1140FB871218

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (vec3(1.0) - const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) + (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: CC1B96C3423E24AF, 932A1140FB871218
// program: 2334BC97E32A806E, 6E7B8E8B357C1A8D, 932A1140FB871218
// shader: 8B30, 7EF3AD9F8795045E

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (vec3(1.0) - const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) + (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) < alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: CC1B96C325C9B0D9, 7EF3AD9F8795045E
// program: 2334BC97E32A806E, 6E7B8E8B357C1A8D, 7EF3AD9F8795045E
// reference: 2FDA0DC631A438A1, 2334BC97E32A806E
// shader: 8B30, DF5FED9B88F40541

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (vec3(1.0) - const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (const_color[5].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 70047AE0423E24AF, DF5FED9B88F40541
// program: 2334BC97E32A806E, 6E7B8E8B357C1A8D, DF5FED9B88F40541
// shader: 8B30, 96B678983558B105

precision highp int;
precision highp float;
precision highp samplerBuffer;
precision highp usampler2D;
precision highp uimage2D;
in vec4 primary_color;
in vec2 texcoord0;
in vec2 texcoord1;
in vec2 texcoord2;
in float texcoord0_w;
in vec4 normquat;
in vec3 view;

#ifndef CITRA_GLES
in vec4 gl_FragCoord;
#endif // CITRA_GLES
out vec4 color;

uniform sampler2D tex0;
uniform sampler2D tex1;
uniform sampler2D tex2;
uniform samplerCube tex_cube;
uniform samplerBuffer texture_buffer_lut_lf;
uniform samplerBuffer texture_buffer_lut_rg;
uniform samplerBuffer texture_buffer_lut_rgba;

#define NUM_TEV_STAGES 6
#define NUM_LIGHTS 8
#define NUM_LIGHTING_SAMPLERS 24

struct LightSrc {
    vec3 specular_0;
    vec3 specular_1;
    vec3 diffuse;
    vec3 ambient;
    vec3 position;
    vec3 spot_direction;
    float dist_atten_bias;
    float dist_atten_scale;
};

layout (std140) uniform shader_data {
    int alphatest_ref;
    float depth_scale;
    float depth_offset;
    float shadow_bias_constant;
    float shadow_bias_linear;
    int scissor_x1;
    int scissor_y1;
    int scissor_x2;
    int scissor_y2;
    int fog_lut_offset;
    int proctex_noise_lut_offset;
    int proctex_color_map_offset;
    int proctex_alpha_map_offset;
    int proctex_lut_offset;
    int proctex_diff_lut_offset;
    float proctex_bias;
    vec3 fog_color;
    vec2 proctex_noise_f;
    vec2 proctex_noise_a;
    vec2 proctex_noise_p;
    vec4 const_color[NUM_TEV_STAGES];
    vec4 tev_combiner_buffer_color;
    vec4 clip_coef;
};

layout (std140) uniform shader_light_data {
    ivec4 lighting_lut_offset[NUM_LIGHTING_SAMPLERS / 4];
    vec3 lighting_global_ambient;
    LightSrc light_src[NUM_LIGHTS];
    float lut_scale_d0;
    float lut_scale_d1;
    float lut_scale_sp;
    float lut_scale_fr;
    float lut_scale_rb;
    float lut_scale_rg;
    float lut_scale_rr;
    int shadow_texture_bias;
};

// Rotate the vector v by the quaternion q
vec3 quaternion_rotate(vec4 q, vec3 v) {
    return v + 2.0 * cross(q.xyz, cross(q.xyz, v) + q.w * v);
}

float LookupLightingLUT(int lut_index, int index, float delta) {
    vec2 entry = texelFetch(texture_buffer_lut_lf, lighting_lut_offset[lut_index >> 2][lut_index & 3] + index).rg;
    return entry.r + entry.g * delta;
}

float LookupLightingLUTUnsigned(int lut_index, float pos) {
    int index = clamp(int(pos * 256.0), 0, 255);
    float delta = pos * 256.0 - float(index);
    return LookupLightingLUT(lut_index, index, delta);
}

float LookupLightingLUTSigned(int lut_index, float pos) {
    int index = clamp(int(pos * 128.0), -128, 127);
    float delta = pos * 128.0 - float(index);
    if (index < 0) index += 256;
    return LookupLightingLUT(lut_index, index, delta);
}

float byteround(float x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec2 byteround(vec2 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec3 byteround(vec3 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

vec4 byteround(vec4 x) {
    return round(x * 255.0) * (1.0 / 255.0);
}

// PICA's LOD formula for 2D textures.
// This LOD formula is the same as the LOD lower limit defined in OpenGL.
// f(x, y) >= max{m_u, m_v, m_w}
// (See OpenGL 4.6 spec, 8.14.1 - Scale Factor and Level-of-Detail)
float getLod(vec2 coord) {
    vec2 d = max(abs(dFdx(coord)), abs(dFdy(coord)));
    return log2(max(d.x, d.y));
}

vec4 shadowTexture(vec2 uv, float w) {
    return vec4(1.0);
}

vec4 shadowTextureCube(vec2 uv, float w) {
    return vec4(1.0);
}

void main() {
vec4 rounded_primary_color = byteround(primary_color);
vec4 primary_fragment_color = vec4(0.0);
vec4 secondary_fragment_color = vec4(0.0);
if (!(gl_FragCoord.x >= float(scissor_x1) && gl_FragCoord.y >= float(scissor_y1) && gl_FragCoord.x < float(scissor_x2) && gl_FragCoord.y < float(scissor_y2))) discard;
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 5949BCE738BD2137, 96B678983558B105
// program: 7F020AB3CA0727DC, 4E5317772B5CE683, 96B678983558B105
