// shader: 8B31, 4940142D60DA9543

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

 out vec4 vs_out_attr0;
 out vec4 vs_out_attr1;
 out vec4 vs_out_attr2;
 out vec4 vs_out_attr3;
 out vec4 vs_out_attr4;

void main() {
    vs_out_attr0 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr1 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr2 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr3 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr4 = vec4(0.0, 0.0, 0.0, 1.0);

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
bool sub_22_27();
bool sub_33_35();
bool sub_35_46();
bool sub_38_39();
bool sub_40_41();
bool sub_42_43();
bool sub_44_45();
bool sub_48_51();
bool sub_52_55();
bool sub_56_59();
bool sub_60_63();
bool sub_65_99();
bool sub_67_86();
bool sub_70_73();
bool sub_74_77();
bool sub_78_81();
bool sub_82_85();
bool sub_88_98();
bool sub_90_93();
bool sub_94_97();

bool exec_shader() {
    sub_0_4096();
    return true;
}

bool sub_0_4096() {
    // 0: mova
    address_registers.x = (ivec2(vs_in_reg0.xy)).x;
    // 1: mov
    reg_tmp0 = uniforms.f[6 + address_registers.x].wzyx;
    // 2: mov
    reg_tmp1.xy = (vs_in_reg0.zwzw).xy;
    // 3: mov
    reg_tmp1.zw = (uniforms.f[5].xyxy).zw;
    // 4: mova
    address_registers.xy = ivec2(reg_tmp0.xy);
    // 5: mov
    reg_tmp2.xw = (uniforms.f[64 + address_registers.y].wwyy).xw;
    // 6: mov
    reg_tmp2.yz = (uniforms.f[5].xxxx).yz;
    // 7: dp4
    reg_tmp4.x = dot_s(reg_tmp1, reg_tmp2);
    // 8: mov
    reg_tmp2.yw = (uniforms.f[64 + address_registers.y].zzxx).yw;
    // 9: mov
    reg_tmp2.xz = (uniforms.f[5].xxxx).xz;
    // 10: dp4
    reg_tmp4.y = dot_s(reg_tmp1, reg_tmp2);
    // 11: mov
    reg_tmp4.zw = (reg_tmp1.zwzw).zw;
    // 12: dp4
    reg_tmp3.x = dot_s(uniforms.f[32 + address_registers.x].wzyx, reg_tmp4);
    // 13: dp4
    reg_tmp3.y = dot_s(uniforms.f[33 + address_registers.x].wzyx, reg_tmp4);
    // 14: dp4
    reg_tmp3.z = dot_s(uniforms.f[34 + address_registers.x].wzyx, reg_tmp4);
    // 15: mov
    reg_tmp3.w = (reg_tmp1.wwww).w;
    // 16: mov
    reg_tmp4.z = (uniforms.f[34 + address_registers.x].xxxx).z;
    // 17: max
    reg_tmp4.z = (abs(reg_tmp4.zzzz)).z;
    // 18: add
    reg_tmp4.z = (uniforms.f[4].yyyy + reg_tmp4.zzzz).z;
    // 19: mov
    reg_tmp4.x = (uniforms.f[4].wwww).x;
    // 20: cmp
    conditional_code = notEqual(uniforms.f[5].xx, reg_tmp4.xz);
    // 21: ifc
    if (all(conditional_code)) {
        sub_22_27();
    }
    // 27: dp4
    vs_out_attr0.x = dot_s(uniforms.f[0].wzyx, reg_tmp3);
    // 28: dp4
    vs_out_attr0.y = dot_s(uniforms.f[1].wzyx, reg_tmp3);
    // 29: dp4
    vs_out_attr0.z = dot_s(uniforms.f[2].wzyx, reg_tmp3);
    // 30: dp4
    vs_out_attr0.w = dot_s(uniforms.f[3].wzyx, reg_tmp3);
    // 31: cmp
    conditional_code = greaterThanEqual(uniforms.f[5].yy, reg_tmp0.ww);
    // 32: ifc
    if (all(conditional_code)) {
        sub_33_35();
    } else {
        sub_35_46();
    }
    // 46: cmp
    conditional_code = notEqual(uniforms.f[5].xx, reg_tmp1.xy);
    // 47: ifc
    if (all(not(conditional_code))) {
        sub_48_51();
    }
    // 51: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_52_55();
    }
    // 55: ifc
    if (all(bvec2(!conditional_code.x, conditional_code.y))) {
        sub_56_59();
    }
    // 59: ifc
    if (all(conditional_code)) {
        sub_60_63();
    }
    // 63: mov
    reg_tmp8 = uniforms.f[5].xxxx;
    // 64: loop
    address_registers.z = int(uniforms.i[0].y);
    for (uint loop64 = 0u; loop64 <= uniforms.i[0].x; address_registers.z += int(uniforms.i[0].z), ++loop64) {
        sub_65_99();
    }
    // 99: mov
    vs_out_attr2 = reg_tmp5;
    // 100: mov
    vs_out_attr3 = reg_tmp6;
    // 101: mov
    vs_out_attr4 = reg_tmp7;
    // 102: end
    return true;
}
bool sub_22_27() {
    // 22: mov
    reg_tmp4.x = (uniforms.f[4].wwww).x;
    // 23: add
    reg_tmp4.y = (-uniforms.f[4].zzzz + reg_tmp4.zzzz).y;
    // 24: rcp
    reg_tmp4.z = rcp_s(reg_tmp4.z);
    // 25: mul
    reg_tmp4.z = (mul_s(reg_tmp4.yyyy, reg_tmp4.zzzz)).z;
    // 26: mad
    reg_tmp3.x = (fma_s(reg_tmp4.xxxx, reg_tmp4.zzzz, reg_tmp3.xxxx)).x;
    return false;
}
bool sub_33_35() {
    // 33: mov
    vs_out_attr1.xyz = (uniforms.f[5].yyyy).xyz;
    // 34: mov
    vs_out_attr1.w = (reg_tmp0.wwww).w;
    return false;
}
bool sub_35_46() {
    // 35: mova
    address_registers.y = (ivec2(reg_tmp0.ww)).y;
    // 36: cmp
    conditional_code = notEqual(uniforms.f[5].xx, reg_tmp1.xy);
    // 37: ifc
    if (all(not(conditional_code))) {
        sub_38_39();
    }
    // 39: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_40_41();
    }
    // 41: ifc
    if (all(bvec2(!conditional_code.x, conditional_code.y))) {
        sub_42_43();
    }
    // 43: ifc
    if (all(conditional_code)) {
        sub_44_45();
    }
    // 45: nop
    return false;
}
bool sub_38_39() {
    // 38: mov
    vs_out_attr1 = uniforms.f[32 + address_registers.y].wzyx;
    return false;
}
bool sub_40_41() {
    // 40: mov
    vs_out_attr1 = uniforms.f[33 + address_registers.y].wzyx;
    return false;
}
bool sub_42_43() {
    // 42: mov
    vs_out_attr1 = uniforms.f[34 + address_registers.y].wzyx;
    return false;
}
bool sub_44_45() {
    // 44: mov
    vs_out_attr1 = uniforms.f[35 + address_registers.y].wzyx;
    return false;
}
bool sub_48_51() {
    // 48: mov
    reg_tmp5 = uniforms.f[5].xyyy;
    // 49: mov
    reg_tmp6 = uniforms.f[5].xyyy;
    // 50: mov
    reg_tmp7 = uniforms.f[5].xyyy;
    return false;
}
bool sub_52_55() {
    // 52: mov
    reg_tmp5 = uniforms.f[5].yyyy;
    // 53: mov
    reg_tmp6 = uniforms.f[5].yyyy;
    // 54: mov
    reg_tmp7 = uniforms.f[5].yyyy;
    return false;
}
bool sub_56_59() {
    // 56: mov
    reg_tmp5 = uniforms.f[5].xxyy;
    // 57: mov
    reg_tmp6 = uniforms.f[5].xxyy;
    // 58: mov
    reg_tmp7 = uniforms.f[5].xxyy;
    return false;
}
bool sub_60_63() {
    // 60: mov
    reg_tmp5 = uniforms.f[5].yxyy;
    // 61: mov
    reg_tmp6 = uniforms.f[5].yxyy;
    // 62: mov
    reg_tmp7 = uniforms.f[5].yxyy;
    return false;
}
bool sub_65_99() {
    // 65: cmp
    conditional_code = equal(uniforms.f[5].yy, reg_tmp8.xy);
    // 66: ifc
    if (all(conditional_code)) {
        sub_67_86();
    }
    // 86: cmp
    conditional_code = lessThan(uniforms.f[5].ww, reg_tmp8.xy);
    // 87: ifc
    if (all(conditional_code)) {
        sub_88_98();
    }
    // 98: add
    reg_tmp8 = uniforms.f[5].yyyy + reg_tmp8;
    return false;
}
bool sub_67_86() {
    // 67: mova
    address_registers.y = (ivec2(reg_tmp0.zz)).y;
    // 68: cmp
    conditional_code = notEqual(uniforms.f[5].xx, reg_tmp1.xy);
    // 69: ifc
    if (all(not(conditional_code))) {
        sub_70_73();
    }
    // 73: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_74_77();
    }
    // 77: ifc
    if (all(bvec2(!conditional_code.x, conditional_code.y))) {
        sub_78_81();
    }
    // 81: ifc
    if (all(conditional_code)) {
        sub_82_85();
    }
    // 85: nop
    return false;
}
bool sub_70_73() {
    // 70: mov
    reg_tmp5.xy = (uniforms.f[64 + address_registers.y].wzzz).xy;
    // 71: mov
    reg_tmp6.xy = (uniforms.f[65 + address_registers.y].wzzz).xy;
    // 72: mov
    reg_tmp7.xy = (uniforms.f[66 + address_registers.y].wzzz).xy;
    return false;
}
bool sub_74_77() {
    // 74: mov
    reg_tmp5.xy = (uniforms.f[64 + address_registers.y].yzzz).xy;
    // 75: mov
    reg_tmp6.xy = (uniforms.f[65 + address_registers.y].yzzz).xy;
    // 76: mov
    reg_tmp7.xy = (uniforms.f[66 + address_registers.y].yzzz).xy;
    return false;
}
bool sub_78_81() {
    // 78: mov
    reg_tmp5.xy = (uniforms.f[64 + address_registers.y].wxxx).xy;
    // 79: mov
    reg_tmp6.xy = (uniforms.f[65 + address_registers.y].wxxx).xy;
    // 80: mov
    reg_tmp7.xy = (uniforms.f[66 + address_registers.y].wxxx).xy;
    return false;
}
bool sub_82_85() {
    // 82: mov
    reg_tmp5.xy = (uniforms.f[64 + address_registers.y].yxxx).xy;
    // 83: mov
    reg_tmp6.xy = (uniforms.f[65 + address_registers.y].yxxx).xy;
    // 84: mov
    reg_tmp7.xy = (uniforms.f[66 + address_registers.y].yxxx).xy;
    return false;
}
bool sub_88_98() {
    // 88: cmp
    conditional_code = notEqual(uniforms.f[5].xx, reg_tmp1.xy);
    // 89: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_90_93();
    }
    // 93: ifc
    if (all(bvec2(!conditional_code.x, conditional_code.y))) {
        sub_94_97();
    }
    // 97: nop
    return false;
}
bool sub_90_93() {
    // 90: mov
    reg_tmp5.xy = (uniforms.f[67 + address_registers.y].yxxx).xy;
    // 91: mov
    reg_tmp6.xy = (uniforms.f[68 + address_registers.y].yxxx).xy;
    // 92: mov
    reg_tmp7.xy = (uniforms.f[69 + address_registers.y].yxxx).xy;
    return false;
}
bool sub_94_97() {
    // 94: mov
    reg_tmp5.xy = (uniforms.f[67 + address_registers.y].wzzz).xy;
    // 95: mov
    reg_tmp6.xy = (uniforms.f[68 + address_registers.y].wzzz).xy;
    // 96: mov
    reg_tmp7.xy = (uniforms.f[69 + address_registers.y].wzzz).xy;
    return false;
}
// reference: F2DBBDF0B2B33B49, 4940142D60DA9543
// shader: 8DD9, 5D764F9A6220D694

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

struct Vertex {
    vec4 attributes[5];
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
    texcoord1 = vec2(vtx.attributes[3].x, vtx.attributes[3].y);

    texcoord0_w = 0.0;
    view = vec3(0.0, 0.0, 0.0);

    texcoord2 = vec2(vtx.attributes[4].x, vtx.attributes[4].y);

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
    prim_buffer[0].attributes = vec4[5](vs_out_attr0[0], vs_out_attr1[0], vs_out_attr2[0], vs_out_attr3[0], vs_out_attr4[0]);
    prim_buffer[1].attributes = vec4[5](vs_out_attr0[1], vs_out_attr1[1], vs_out_attr2[1], vs_out_attr3[1], vs_out_attr4[1]);
    prim_buffer[2].attributes = vec4[5](vs_out_attr0[2], vs_out_attr1[2], vs_out_attr2[2], vs_out_attr3[2], vs_out_attr4[2]);
    EmitPrim(prim_buffer[0], prim_buffer[1], prim_buffer[2]);
}
// reference: 5DAD5699F59B3586, 5D764F9A6220D694
// shader: 8B30, C11AFEE305B9C79D

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: E13EE8783A5DBCC4, C11AFEE305B9C79D
// program: 4940142D60DA9543, 5D764F9A6220D694, C11AFEE305B9C79D
// reference: 21587A09B2B33B49, 4940142D60DA9543
// shader: 8B30, CD4515CCFFE8D17C

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 2EA60C87BBA2AA7E, CD4515CCFFE8D17C
// program: 4940142D60DA9543, 5D764F9A6220D694, CD4515CCFFE8D17C
// shader: 8B31, 6C1B11D5F726E48B

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
layout(location = 3) in vec4 vs_in_reg3;

 out vec4 vs_out_attr0;
 out vec4 vs_out_attr1;
 out vec4 vs_out_attr2;
 out vec4 vs_out_attr3;
 out vec4 vs_out_attr4;

void main() {
    vs_out_attr0 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr1 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr2 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr3 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr4 = vec4(0.0, 0.0, 0.0, 1.0);

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

bool exec_shader() {
    sub_0_4096();
    return true;
}

bool sub_0_4096() {
    // 0: mul
    reg_tmp14.xy = (mul_s(uniforms.f[12].xyyy, vs_in_reg0.xyyy)).xy;
    // 1: add
    vs_out_attr0.xy = (uniforms.f[12].zwww + reg_tmp14.xyyy).xy;
    // 2: mov
    vs_out_attr0.z = (uniforms.f[95].xxxx).z;
    // 3: mov
    vs_out_attr0.w = (uniforms.f[95].zzzz).w;
    // 4: mov
    vs_out_attr1 = uniforms.f[11];
    // 5: mul
    reg_tmp15.xy = (mul_s(uniforms.f[13].xyyy, vs_in_reg3.xyyy)).xy;
    // 6: add
    reg_tmp15.xy = (uniforms.f[13].zwww + reg_tmp15.xyyy).xy;
    // 7: mov
    vs_out_attr2.xy = (reg_tmp15.xyyy).xy;
    // 8: mov
    vs_out_attr2.z = (vs_in_reg3.zzzz).z;
    // 9: mov
    vs_out_attr2.w = (uniforms.f[95].xxxx).w;
    // 10: add
    vs_out_attr3.xy = (uniforms.f[14].xyyy + reg_tmp15.xyyy).xy;
    // 11: mov
    vs_out_attr3.zw = (uniforms.f[95].xxxx).zw;
    // 12: add
    vs_out_attr4.xy = (-uniforms.f[14].xyyy + reg_tmp15.xyyy).xy;
    // 13: mov
    vs_out_attr4.zw = (uniforms.f[95].xxxx).zw;
    // 14: end
    return true;
}
// reference: 47EA06333BCCCCAB, 6C1B11D5F726E48B
// shader: 8DD9, 51B75DB531F38248

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

struct Vertex {
    vec4 attributes[5];
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
    texcoord1 = vec2(vtx.attributes[3].x, vtx.attributes[3].y);

    texcoord0_w = vtx.attributes[2].z;
    view = vec3(0.0, 0.0, 0.0);

    texcoord2 = vec2(vtx.attributes[4].x, vtx.attributes[4].y);

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
    prim_buffer[0].attributes = vec4[5](vs_out_attr0[0], vs_out_attr1[0], vs_out_attr2[0], vs_out_attr3[0], vs_out_attr4[0]);
    prim_buffer[1].attributes = vec4[5](vs_out_attr0[1], vs_out_attr1[1], vs_out_attr2[1], vs_out_attr3[1], vs_out_attr4[1]);
    prim_buffer[2].attributes = vec4[5](vs_out_attr0[2], vs_out_attr1[2], vs_out_attr2[2], vs_out_attr3[2], vs_out_attr4[2]);
    EmitPrim(prim_buffer[0], prim_buffer[1], prim_buffer[2]);
}
// reference: 7B5ACF5FF59B3586, 51B75DB531F38248
// shader: 8B30, B335C72627F48034

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 2584B8EBD7B0A07F, B335C72627F48034
// program: 6C1B11D5F726E48B, 51B75DB531F38248, B335C72627F48034
// reference: 21587A09690A9A0E, 4940142D60DA9543
// shader: 8B30, A15CD1ED4D71039A

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 34639C167F848F22, A15CD1ED4D71039A
// program: 4940142D60DA9543, 5D764F9A6220D694, A15CD1ED4D71039A
// reference: 9469C1CAE0756DEC, 6C1B11D5F726E48B
// shader: 8B30, 26E3A1642C0501CC

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 5978E2364B861CFA, 26E3A1642C0501CC
// program: 6C1B11D5F726E48B, 51B75DB531F38248, 26E3A1642C0501CC
// shader: 8B30, 1619592DBFD3395D

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 2EA60C87E3B233A7, 1619592DBFD3395D
// program: 4940142D60DA9543, 5D764F9A6220D694, 1619592DBFD3395D
// shader: 8B30, F736535A3769F2CE

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (last_tex_env_out.rgb) + (combiner_buffer.rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (last_tex_env_out.a) + (combiner_buffer.a) * (1.0 - (last_tex_env_out.a)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: F4CD30848F5BEB5F, F736535A3769F2CE
// program: 4940142D60DA9543, 5D764F9A6220D694, F736535A3769F2CE
// shader: 8B30, 4E19BA7541C4D813

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: E13EE878624D251D, 4E19BA7541C4D813
// program: 4940142D60DA9543, 5D764F9A6220D694, 4E19BA7541C4D813
// shader: 8B31, 2B811601C66B2B58

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
layout(location = 8) in vec4 vs_in_reg8;

 out vec4 vs_out_attr0;
 out vec4 vs_out_attr1;
 out vec4 vs_out_attr2;
 out vec4 vs_out_attr3;
 out vec4 vs_out_attr4;
 out vec4 vs_out_attr5;
 out vec4 vs_out_attr6;

void main() {
    vs_out_attr0 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr1 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr2 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr3 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr4 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr5 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr6 = vec4(0.0, 0.0, 0.0, 1.0);

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
bool sub_7_12();
bool sub_12_21();
bool sub_21_34();
bool sub_34_202();
bool sub_40_140();
bool sub_47_76();
bool sub_58_62();
bool sub_76_135();
bool sub_77_109();
bool sub_88_92();
bool sub_109_134();
bool sub_120_124();
bool sub_140_201();
bool sub_143_153();
bool sub_153_158();
bool sub_159_171();
bool sub_171_196();
bool sub_172_190();
bool sub_190_195();
bool sub_202_219();
bool sub_219_295();
bool sub_258_278();
bool sub_259_264();
bool sub_264_277();
bool sub_268_271();
bool sub_271_276();
bool sub_278_291();
bool sub_279_284();
bool sub_284_290();
bool sub_295_312();
bool sub_301_306();
bool sub_303_304();
bool sub_310_311();
bool sub_312_358();
bool sub_316_357();
bool sub_321_323();
bool sub_323_347();
bool sub_326_331();
bool sub_337_346();
bool sub_341_342();
bool sub_342_345();
bool sub_349_356();
bool sub_358_368();
bool sub_365_366();
bool sub_368_395();
bool sub_370_375();
bool sub_375_394();
bool sub_378_384();
bool sub_384_393();
bool sub_385_389();
bool sub_389_392();
bool sub_395_403();
bool sub_397_398();
bool sub_398_402();
bool sub_399_400();
bool sub_400_401();
bool sub_403_410();
bool sub_410_414();
bool sub_414_440();
bool sub_416_421();
bool sub_421_439();
bool sub_422_437();
bool sub_426_433();
bool sub_433_436();
bool sub_437_438();
bool sub_440_457();
bool sub_442_447();
bool sub_447_456();
bool sub_448_454();
bool sub_454_455();

bool exec_shader() {
    sub_0_4096();
    return true;
}

bool sub_0_4096() {
    // 0: call
    {
        sub_34_202();
    }
    // 1: call
    {
        sub_295_312();
    }
    // 2: call
    {
        sub_368_395();
    }
    // 3: call
    {
        sub_414_440();
    }
    // 4: call
    {
        sub_440_457();
    }
    // 5: end
    return true;
}
bool sub_7_12() {
    // 7: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 8: dp4
    reg_tmp3.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 9: dp4
    reg_tmp3.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 10: dp4
    reg_tmp3.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 11: mad
    reg_tmp7 = fma_s(reg_tmp1.wwww, reg_tmp3, reg_tmp7);
    return false;
}
bool sub_12_21() {
    // 12: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 13: dp4
    reg_tmp3.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 14: dp4
    reg_tmp3.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 15: dp4
    reg_tmp3.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 16: dp3
    reg_tmp4.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp14.xyz);
    // 17: dp3
    reg_tmp4.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp14.xyz);
    // 18: dp3
    reg_tmp4.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp14.xyz);
    // 19: mad
    reg_tmp7 = fma_s(reg_tmp1.wwww, reg_tmp3, reg_tmp7);
    // 20: mad
    reg_tmp12 = fma_s(reg_tmp1.wwww, reg_tmp4, reg_tmp12);
    return false;
}
bool sub_21_34() {
    // 21: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 22: dp4
    reg_tmp3.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 23: dp4
    reg_tmp3.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 24: dp4
    reg_tmp3.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 25: dp3
    reg_tmp4.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp14.xyz);
    // 26: dp3
    reg_tmp4.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp14.xyz);
    // 27: dp3
    reg_tmp4.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp14.xyz);
    // 28: dp3
    reg_tmp5.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp13.xyz);
    // 29: dp3
    reg_tmp5.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp13.xyz);
    // 30: dp3
    reg_tmp5.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp13.xyz);
    // 31: mad
    reg_tmp7 = fma_s(reg_tmp1.wwww, reg_tmp3, reg_tmp7);
    // 32: mad
    reg_tmp12 = fma_s(reg_tmp1.wwww, reg_tmp4, reg_tmp12);
    // 33: mad
    reg_tmp11 = fma_s(reg_tmp1.wwww, reg_tmp5, reg_tmp11);
    return false;
}
bool sub_34_202() {
    // 34: mul
    reg_tmp15.xyz = (mul_s(uniforms.f[7].xxxx, vs_in_reg0)).xyz;
    // 35: mul
    reg_tmp14.xyz = (mul_s(uniforms.f[7].yyyy, vs_in_reg1)).xyz;
    // 36: mul
    reg_tmp13.xyz = (mul_s(uniforms.f[7].zzzz, vs_in_reg2)).xyz;
    // 37: add
    reg_tmp15.xyz = (uniforms.f[6] + reg_tmp15).xyz;
    // 38: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 39: ifu
    if (uniforms.b[1]) {
        sub_40_140();
    } else {
        sub_140_201();
    }
    // 201: nop
    return false;
}
bool sub_40_140() {
    // 40: mov
    reg_tmp0 = uniforms.f[7];
    // 41: cmp
    conditional_code = notEqual(uniforms.f[93].xx, reg_tmp0.yz);
    // 42: mov
    reg_tmp7 = uniforms.f[93].xxxx;
    // 43: mov
    reg_tmp12 = uniforms.f[93].xxxx;
    // 44: mov
    reg_tmp11 = uniforms.f[93].xxxx;
    // 45: mul
    reg_tmp2 = mul_s(uniforms.f[93].wwww, vs_in_reg7);
    // 46: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_47_76();
    } else {
        sub_76_135();
    }
    // 135: mov
    vs_out_attr2 = -reg_tmp15;
    // 136: dp4
    vs_out_attr0.x = dot_s(uniforms.f[86], reg_tmp15);
    // 137: dp4
    vs_out_attr0.y = dot_s(uniforms.f[87], reg_tmp15);
    // 138: dp4
    vs_out_attr0.z = dot_s(uniforms.f[88], reg_tmp15);
    // 139: dp4
    vs_out_attr0.w = dot_s(uniforms.f[89], reg_tmp15);
    return false;
}
bool sub_47_76() {
    // 47: cmp
    conditional_code = notEqual(uniforms.f[93].xx, vs_in_reg8.zw);
    // 48: mov
    reg_tmp1.xy = (reg_tmp2.xxxx).xy;
    // 49: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.xxxx)).w;
    // 50: call
    {
        sub_12_21();
    }
    // 51: mov
    reg_tmp1.xy = (reg_tmp2.yyyy).xy;
    // 52: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.yyyy)).w;
    // 53: call
    {
        sub_12_21();
    }
    // 54: mov
    reg_tmp1.xy = (reg_tmp2.zzzz).xy;
    // 55: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.zzzz)).w;
    // 56: callc
    if (conditional_code.x) {
        sub_12_21();
    }
    // 57: ifu
    if (uniforms.b[8]) {
        sub_58_62();
    }
    // 62: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 63: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 64: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 65: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 66: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    // 67: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 68: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 69: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 70: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 71: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 72: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 73: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 74: call
    {
        sub_202_219();
    }
    // 75: nop
    return false;
}
bool sub_58_62() {
    // 58: mov
    reg_tmp1.xy = (reg_tmp2.wwww).xy;
    // 59: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.wwww)).w;
    // 60: callc
    if (conditional_code.y) {
        sub_12_21();
    }
    // 61: nop
    return false;
}
bool sub_76_135() {
    // 76: ifc
    if (all(conditional_code)) {
        sub_77_109();
    } else {
        sub_109_134();
    }
    // 134: nop
    return false;
}
bool sub_77_109() {
    // 77: cmp
    conditional_code = notEqual(uniforms.f[93].xx, vs_in_reg8.zw);
    // 78: mov
    reg_tmp1.xy = (reg_tmp2.xxxx).xy;
    // 79: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.xxxx)).w;
    // 80: call
    {
        sub_21_34();
    }
    // 81: mov
    reg_tmp1.xy = (reg_tmp2.yyyy).xy;
    // 82: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.yyyy)).w;
    // 83: call
    {
        sub_21_34();
    }
    // 84: mov
    reg_tmp1.xy = (reg_tmp2.zzzz).xy;
    // 85: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.zzzz)).w;
    // 86: callc
    if (conditional_code.x) {
        sub_21_34();
    }
    // 87: ifu
    if (uniforms.b[8]) {
        sub_88_92();
    }
    // 92: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 93: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 94: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 95: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 96: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    // 97: dp3
    reg_tmp13.x = dot_3(uniforms.f[3].xyz, reg_tmp11.xyz);
    // 98: dp3
    reg_tmp13.y = dot_3(uniforms.f[4].xyz, reg_tmp11.xyz);
    // 99: dp3
    reg_tmp13.z = dot_3(uniforms.f[5].xyz, reg_tmp11.xyz);
    // 100: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 101: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 102: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 103: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 104: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 105: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 106: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 107: call
    {
        sub_219_295();
    }
    // 108: nop
    return false;
}
bool sub_88_92() {
    // 88: mov
    reg_tmp1.xy = (reg_tmp2.wwww).xy;
    // 89: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.wwww)).w;
    // 90: callc
    if (conditional_code.y) {
        sub_21_34();
    }
    // 91: nop
    return false;
}
bool sub_109_134() {
    // 109: cmp
    conditional_code = notEqual(uniforms.f[93].xx, vs_in_reg8.zw);
    // 110: mov
    reg_tmp1.xy = (reg_tmp2.xxxx).xy;
    // 111: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.xxxx)).w;
    // 112: call
    {
        sub_7_12();
    }
    // 113: mov
    reg_tmp1.xy = (reg_tmp2.yyyy).xy;
    // 114: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.yyyy)).w;
    // 115: call
    {
        sub_7_12();
    }
    // 116: mov
    reg_tmp1.xy = (reg_tmp2.zzzz).xy;
    // 117: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.zzzz)).w;
    // 118: callc
    if (conditional_code.x) {
        sub_7_12();
    }
    // 119: ifu
    if (uniforms.b[8]) {
        sub_120_124();
    }
    // 124: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 125: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 126: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 127: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 128: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    // 129: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 130: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 131: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 132: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 133: mov
    vs_out_attr1 = uniforms.f[93].xxxx;
    return false;
}
bool sub_120_124() {
    // 120: mov
    reg_tmp1.xy = (reg_tmp2.wwww).xy;
    // 121: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.wwww)).w;
    // 122: callc
    if (conditional_code.y) {
        sub_7_12();
    }
    // 123: nop
    return false;
}
bool sub_140_201() {
    // 140: mov
    reg_tmp0 = uniforms.f[7];
    // 141: cmp
    conditional_code = notEqual(uniforms.f[93].xx, reg_tmp0.yz);
    // 142: ifu
    if (uniforms.b[2]) {
        sub_143_153();
    } else {
        sub_153_158();
    }
    // 158: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_159_171();
    } else {
        sub_171_196();
    }
    // 196: mov
    vs_out_attr2 = -reg_tmp15;
    // 197: dp4
    vs_out_attr0.x = dot_s(uniforms.f[86], reg_tmp15);
    // 198: dp4
    vs_out_attr0.y = dot_s(uniforms.f[87], reg_tmp15);
    // 199: dp4
    vs_out_attr0.z = dot_s(uniforms.f[88], reg_tmp15);
    // 200: dp4
    vs_out_attr0.w = dot_s(uniforms.f[89], reg_tmp15);
    return false;
}
bool sub_143_153() {
    // 143: mul
    reg_tmp1.x = (mul_s(uniforms.f[93].wwww, vs_in_reg7.xxxx)).x;
    // 144: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 145: dp4
    reg_tmp7.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 146: dp4
    reg_tmp7.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 147: dp4
    reg_tmp7.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 148: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 149: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 150: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 151: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 152: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    return false;
}
bool sub_153_158() {
    // 153: mova
    address_registers.x = (ivec2(uniforms.f[93].xx)).x;
    // 154: dp4
    reg_tmp10.x = dot_s(uniforms.f[25], reg_tmp15);
    // 155: dp4
    reg_tmp10.y = dot_s(uniforms.f[26], reg_tmp15);
    // 156: dp4
    reg_tmp10.z = dot_s(uniforms.f[27], reg_tmp15);
    // 157: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    return false;
}
bool sub_159_171() {
    // 159: dp3
    reg_tmp12.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp14.xyz);
    // 160: dp3
    reg_tmp12.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp14.xyz);
    // 161: dp3
    reg_tmp12.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp14.xyz);
    // 162: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 163: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 164: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 165: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 166: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 167: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 168: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 169: call
    {
        sub_202_219();
    }
    // 170: nop
    return false;
}
bool sub_171_196() {
    // 171: ifc
    if (all(conditional_code)) {
        sub_172_190();
    } else {
        sub_190_195();
    }
    // 195: nop
    return false;
}
bool sub_172_190() {
    // 172: dp3
    reg_tmp12.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp14.xyz);
    // 173: dp3
    reg_tmp12.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp14.xyz);
    // 174: dp3
    reg_tmp12.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp14.xyz);
    // 175: dp3
    reg_tmp11.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp13.xyz);
    // 176: dp3
    reg_tmp11.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp13.xyz);
    // 177: dp3
    reg_tmp11.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp13.xyz);
    // 178: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 179: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 180: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 181: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 182: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 183: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 184: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 185: dp3
    reg_tmp13.x = dot_3(uniforms.f[3].xyz, reg_tmp11.xyz);
    // 186: dp3
    reg_tmp13.y = dot_3(uniforms.f[4].xyz, reg_tmp11.xyz);
    // 187: dp3
    reg_tmp13.z = dot_3(uniforms.f[5].xyz, reg_tmp11.xyz);
    // 188: call
    {
        sub_219_295();
    }
    // 189: nop
    return false;
}
bool sub_190_195() {
    // 190: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 191: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 192: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 193: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 194: mov
    vs_out_attr1 = uniforms.f[93].xxxx;
    return false;
}
bool sub_202_219() {
    uint jmp_to = 202u;
    while (true) {
        switch (jmp_to) {
        case 202u: {
            // 202: dp3
            reg_tmp6.x = dot_3(reg_tmp14.xyz, reg_tmp14.xyz);
            // 203: dp3
            reg_tmp7.x = dot_3(reg_tmp12.xyz, reg_tmp12.xyz);
            // 204: rsq
            reg_tmp6.x = rsq_s(reg_tmp6.x);
            // 205: rsq
            reg_tmp7.x = rsq_s(reg_tmp7.x);
            // 206: mul
            reg_tmp14.xyz = (mul_s(reg_tmp14.xyzz, reg_tmp6.xxxx)).xyz;
            // 207: mul
            reg_tmp12.xyz = (mul_s(reg_tmp12.xyzz, reg_tmp7.xxxx)).xyz;
            // 208: mov
            reg_tmp0 = uniforms.f[93].yxxx;
            // 209: jmpu
            if (!uniforms.b[15]) {
                { jmp_to = 218u; break; }
            }
            // 210: add
            reg_tmp4 = uniforms.f[93].yyyy + reg_tmp14.zzzz;
            // 211: mul
            reg_tmp4 = mul_s(uniforms.f[94].zzzz, reg_tmp4);
            // 212: cmp
            conditional_code = greaterThanEqual(uniforms.f[93].xx, reg_tmp4.xx);
            // 213: rsq
            reg_tmp4 = vec4(rsq_s(reg_tmp4.x));
            // 214: mul
            reg_tmp5 = mul_s(uniforms.f[94].zzzz, reg_tmp14);
            // 215: jmpc
            if (conditional_code.x) {
                { jmp_to = 218u; break; }
            }
            // 216: rcp
            reg_tmp0.z = rcp_s(reg_tmp4.x);
            // 217: mul
            reg_tmp0.xy = (mul_s(reg_tmp5, reg_tmp4)).xy;
        }
        case 218u: {
            // 218: mov
            vs_out_attr1 = reg_tmp0;
        }
        default: return false;
        }
    }
    return false;
}
bool sub_219_295() {
    uint jmp_to = 219u;
    while (true) {
        switch (jmp_to) {
        case 219u: {
            // 219: dp3
            reg_tmp6.x = dot_3(reg_tmp14.xyz, reg_tmp14.xyz);
            // 220: dp3
            reg_tmp7.x = dot_3(reg_tmp12.xyz, reg_tmp12.xyz);
            // 221: rsq
            reg_tmp6.x = rsq_s(reg_tmp6.x);
            // 222: rsq
            reg_tmp7.x = rsq_s(reg_tmp7.x);
            // 223: mul
            reg_tmp14.xyz = (mul_s(reg_tmp14.xyzz, reg_tmp6.xxxx)).xyz;
            // 224: mul
            reg_tmp12.xyz = (mul_s(reg_tmp12.xyzz, reg_tmp7.xxxx)).xyz;
            // 225: mul
            reg_tmp13.xyz = (mul_s(reg_tmp13.xyzz, reg_tmp6.xxxx)).xyz;
            // 226: mul
            reg_tmp11.xyz = (mul_s(reg_tmp11.xyzz, reg_tmp7.xxxx)).xyz;
            // 227: mov
            reg_tmp0 = uniforms.f[93].yxxx;
            // 228: jmpu
            if (!uniforms.b[15]) {
                { jmp_to = 294u; break; }
            }
            // 229: mul
            reg_tmp13.xyz = (mul_s(reg_tmp13.xyzz, reg_tmp6.xxxx)).xyz;
            // 230: mul
            reg_tmp11.xyz = (mul_s(reg_tmp11.xyzz, reg_tmp7.xxxx)).xyz;
            // 231: mul
            reg_tmp5 = mul_s(reg_tmp14.yzxx, reg_tmp13.zxyy);
            // 232: mad
            reg_tmp5 = fma_s(-reg_tmp13.yzxx, reg_tmp14.zxyy, reg_tmp5);
            // 233: dp3
            reg_tmp5.w = dot_3(reg_tmp5.xyz, reg_tmp5.xyz);
            // 234: rsq
            reg_tmp5.w = rsq_s(reg_tmp5.w);
            // 235: mul
            reg_tmp5 = mul_s(reg_tmp5, reg_tmp5.wwww);
            // 236: add
            reg_tmp6.w = (reg_tmp14.zzzz + reg_tmp5.yyyy).w;
            // 237: mul
            reg_tmp13 = mul_s(reg_tmp5.yzxx, reg_tmp14.zxyy);
            // 238: mad
            reg_tmp13 = fma_s(-reg_tmp14.yzxx, reg_tmp5.zxyy, reg_tmp13);
            // 239: add
            reg_tmp6.w = (reg_tmp13.xxxx + reg_tmp6).w;
            // 240: mov
            reg_tmp13.w = (reg_tmp5.zzzz).w;
            // 241: mov
            reg_tmp5.z = (reg_tmp13.xxxx).z;
            // 242: add
            reg_tmp6.w = (uniforms.f[93].yyyy + reg_tmp6).w;
            // 243: mov
            reg_tmp14.w = (reg_tmp5.xxxx).w;
            // 244: mov
            reg_tmp5.x = (reg_tmp14.zzzz).x;
            // 245: cmp
            conditional_code = lessThan(uniforms.f[94].yy, reg_tmp6.ww);
            // 246: mov
            reg_tmp6.x = (uniforms.f[93].yyyy).x;
            // 247: mov
            reg_tmp6.y = (-uniforms.f[93].yyyy).y;
            // 248: jmpc
            if (!conditional_code.x) {
                { jmp_to = 256u; break; }
            }
            // 249: add
            reg_tmp7.xz = (reg_tmp13.wwyy + -reg_tmp14.yyww).xz;
            // 250: add
            reg_tmp7.y = (reg_tmp14.xxxx + -reg_tmp13.zzzz).y;
            // 251: mov
            reg_tmp7.w = (reg_tmp6).w;
            // 252: dp4
            reg_tmp6 = vec4(dot_s(reg_tmp7, reg_tmp7));
            // 253: rsq
            reg_tmp6 = vec4(rsq_s(reg_tmp6.x));
            // 254: mul
            reg_tmp0 = mul_s(reg_tmp7, reg_tmp6);
            // 255: jmpu
            if (uniforms.b[0]) {
                { jmp_to = 294u; break; }
            }
        }
        case 256u: {
            // 256: cmp
            conditional_code = greaterThan(reg_tmp5.zy, reg_tmp5.yx);
            // 257: ifc
            if (conditional_code.x) {
                sub_258_278();
            } else {
                sub_278_291();
            }
            // 291: dp4
            reg_tmp6 = vec4(dot_s(reg_tmp8, reg_tmp8));
            // 292: rsq
            reg_tmp6 = vec4(rsq_s(reg_tmp6.x));
            // 293: mul
            reg_tmp0 = mul_s(reg_tmp8, reg_tmp6);
        }
        case 294u: {
            // 294: mov
            vs_out_attr1 = reg_tmp0;
        }
        default: return false;
        }
    }
    return false;
}
bool sub_258_278() {
    // 258: ifc
    if (conditional_code.y) {
        sub_259_264();
    } else {
        sub_264_277();
    }
    // 277: mov
    reg_tmp8.w = (-reg_tmp8).w;
    return false;
}
bool sub_259_264() {
    // 259: mul
    reg_tmp8 = mul_s(reg_tmp13.yyzw, reg_tmp6.xxxy);
    // 260: add
    reg_tmp8.x = (uniforms.f[93].yyyy + -reg_tmp5.yyyy).x;
    // 261: add
    reg_tmp9 = reg_tmp5.zzzz + -reg_tmp5.xxxx;
    // 262: add
    reg_tmp8.yzw = (reg_tmp8 + reg_tmp14.wwxy).yzw;
    // 263: add
    reg_tmp8.x = (reg_tmp9 + reg_tmp8).x;
    return false;
}
bool sub_264_277() {
    // 264: cmp
    conditional_code = greaterThan(reg_tmp5.zz, reg_tmp5.xx);
    // 265: mul
    reg_tmp8 = mul_s(reg_tmp13.yyzw, reg_tmp6.xxxy);
    // 266: add
    reg_tmp8.x = (uniforms.f[93].yyyy + -reg_tmp5.yyyy).x;
    // 267: ifc
    if (conditional_code.x) {
        sub_268_271();
    } else {
        sub_271_276();
    }
    // 276: nop
    return false;
}
bool sub_268_271() {
    // 268: add
    reg_tmp9 = reg_tmp5.zzzz + -reg_tmp5.xxxx;
    // 269: add
    reg_tmp8.yzw = (reg_tmp8 + reg_tmp14.wwxy).yzw;
    // 270: add
    reg_tmp8.x = (reg_tmp9 + reg_tmp8).x;
    return false;
}
bool sub_271_276() {
    // 271: mul
    reg_tmp8 = mul_s(reg_tmp13.zwwy, reg_tmp6.xxxy);
    // 272: add
    reg_tmp8.z = (uniforms.f[93].yyyy + -reg_tmp5.zzzz).z;
    // 273: add
    reg_tmp9 = reg_tmp5.xxxx + -reg_tmp5.yyyy;
    // 274: add
    reg_tmp8.xyw = (reg_tmp8 + reg_tmp14.xyyw).xyw;
    // 275: add
    reg_tmp8.z = (reg_tmp9 + reg_tmp8).z;
    return false;
}
bool sub_278_291() {
    // 278: ifc
    if (conditional_code.y) {
        sub_279_284();
    } else {
        sub_284_290();
    }
    // 290: nop
    return false;
}
bool sub_279_284() {
    // 279: mul
    reg_tmp8 = mul_s(reg_tmp13.yywz, reg_tmp6.xxxy);
    // 280: add
    reg_tmp8.y = (uniforms.f[93].yyyy + -reg_tmp5.zzzz).y;
    // 281: add
    reg_tmp9 = reg_tmp5.yyyy + -reg_tmp5.xxxx;
    // 282: add
    reg_tmp8.xzw = (reg_tmp8 + reg_tmp14.wwyx).xzw;
    // 283: add
    reg_tmp8.y = (reg_tmp9 + reg_tmp8).y;
    return false;
}
bool sub_284_290() {
    // 284: mul
    reg_tmp8 = mul_s(reg_tmp13.zwwy, reg_tmp6.xxxy);
    // 285: add
    reg_tmp8.z = (uniforms.f[93].yyyy + -reg_tmp5.zzzz).z;
    // 286: add
    reg_tmp9 = reg_tmp5.xxxx + -reg_tmp5.yyyy;
    // 287: add
    reg_tmp8.xyw = (reg_tmp8 + reg_tmp14.xyyw).xyw;
    // 288: add
    reg_tmp8.z = (reg_tmp9 + reg_tmp8).z;
    // 289: mov
    reg_tmp8.w = (-reg_tmp8).w;
    return false;
}
bool sub_295_312() {
    // 295: mov
    reg_tmp8.xy = (uniforms.f[93].xxxx).xy;
    // 296: mov
    reg_tmp0.y = (uniforms.f[7].wwww).y;
    // 297: cmp
    conditional_code = notEqual(uniforms.f[93].xx, reg_tmp0.xy);
    // 298: mov
    reg_tmp9.xyz = (uniforms.f[93].xxxx).xyz;
    // 299: mov
    reg_tmp9.w = (uniforms.f[21].wwww).w;
    // 300: ifc
    if (conditional_code.y) {
        sub_301_306();
    }
    // 306: callu
    if (uniforms.b[12]) {
        sub_312_358();
    }
    // 307: callu
    if (uniforms.b[5]) {
        sub_358_368();
    }
    // 308: cmp
    conditional_code = equal(uniforms.f[93].xx, reg_tmp8.xy);
    // 309: ifc
    if (all(conditional_code)) {
        sub_310_311();
    }
    // 311: max
    vs_out_attr3 = max(uniforms.f[93].xxxx, reg_tmp9);
    return false;
}
bool sub_301_306() {
    // 301: mul
    reg_tmp0 = mul_s(uniforms.f[7].wwww, vs_in_reg3);
    // 302: ifu
    if (uniforms.b[7]) {
        sub_303_304();
    }
    // 304: mul
    reg_tmp9.xyz = (mul_s(uniforms.f[20].wwww, reg_tmp0.xyzz)).xyz;
    // 305: mov
    reg_tmp8.x = (uniforms.f[93].yyyy).x;
    return false;
}
bool sub_303_304() {
    // 303: mul
    reg_tmp9.w = (mul_s(reg_tmp9.wwww, reg_tmp0.wwww)).w;
    return false;
}
bool sub_310_311() {
    // 310: mov
    reg_tmp9 = uniforms.f[21];
    return false;
}
bool sub_312_358() {
    // 312: mov
    reg_tmp1 = uniforms.f[20];
    // 313: mov
    reg_tmp2 = uniforms.f[21];
    // 314: mov
    reg_tmp3 = uniforms.f[93].xxxx;
    // 315: loop
    address_registers.z = int(uniforms.i[0].y);
    for (uint loop315 = 0u; loop315 <= uniforms.i[0].x; address_registers.z += int(uniforms.i[0].z), ++loop315) {
        sub_316_357();
    }
    // 357: mov
    reg_tmp8.x = (uniforms.f[93].yyyy).x;
    return false;
}
bool sub_316_357() {
    // 316: mova
    address_registers.x = (ivec2(reg_tmp3.xy)).x;
    // 317: mov
    reg_tmp4.x = (uniforms.f[81 + address_registers.x].wwww).x;
    // 318: mov
    reg_tmp4.y = (uniforms.f[83 + address_registers.x].wwww).y;
    // 319: cmp
    conditional_code = equal(uniforms.f[93].xy, reg_tmp4.xy);
    // 320: ifc
    if (conditional_code.x) {
        sub_321_323();
    } else {
        sub_323_347();
    }
    // 347: cmp
    conditional_code.x = uniforms.f[93].xxxx.x == reg_tmp6.xyyy.x;
    conditional_code.y = uniforms.f[93].xxxx.y < reg_tmp6.xyyy.y;
    // 348: ifc
    if (conditional_code.y) {
        sub_349_356();
    }
    // 356: add
    reg_tmp3 = -uniforms.f[95].wwww + reg_tmp3;
    return false;
}
bool sub_321_323() {
    // 321: dp3
    reg_tmp6.x = dot_3(uniforms.f[81 + address_registers.x].xyz, reg_tmp14.xyz);
    // 322: mov
    reg_tmp6.y = (uniforms.f[93].yyyy).y;
    return false;
}
bool sub_323_347() {
    // 323: add
    reg_tmp4 = uniforms.f[81 + address_registers.x] + -reg_tmp15;
    // 324: mov
    reg_tmp6.y = (uniforms.f[93].yyyy).y;
    // 325: ifc
    if (conditional_code.y) {
        sub_326_331();
    }
    // 331: mov
    reg_tmp5 = uniforms.f[82 + address_registers.x];
    // 332: cmp
    conditional_code = equal(uniforms.f[93].yy, reg_tmp5.ww);
    // 333: dp3
    reg_tmp4.w = dot_3(reg_tmp4.xyz, reg_tmp4.xyz);
    // 334: rsq
    reg_tmp4.w = rsq_s(reg_tmp4.w);
    // 335: mul
    reg_tmp4 = mul_s(reg_tmp4, reg_tmp4.wwww);
    // 336: ifc
    if (conditional_code.x) {
        sub_337_346();
    }
    // 346: dp3
    reg_tmp6.x = dot_3(reg_tmp14.xyz, reg_tmp4.xyz);
    return false;
}
bool sub_326_331() {
    // 326: mov
    reg_tmp5.x = (uniforms.f[93].yyyy).x;
    // 327: dp3
    reg_tmp5.z = dot_3(reg_tmp4.xyz, reg_tmp4.xyz);
    // 328: mul
    reg_tmp5.y = (mul_s(reg_tmp5.zzzz, reg_tmp5.zzzz)).y;
    // 329: dp3
    reg_tmp6.y = dot_3(uniforms.f[83 + address_registers.x].xyz, reg_tmp5.xyz);
    // 330: rcp
    reg_tmp6.y = rcp_s(reg_tmp6.y);
    return false;
}
bool sub_337_346() {
    // 337: dp3
    reg_tmp5.x = dot_3(uniforms.f[82 + address_registers.x].xyz, -reg_tmp4.xyz);
    // 338: slti
    reg_tmp5.y = (vec4(lessThan(reg_tmp5.xxxx, uniforms.f[84 + address_registers.x].yyyy))).y;
    // 339: cmp
    conditional_code = equal(uniforms.f[93].yy, reg_tmp5.xy);
    // 340: ifc
    if (conditional_code.y) {
        sub_341_342();
    } else {
        sub_342_345();
    }
    // 345: mul
    reg_tmp6.y = (mul_s(reg_tmp6.yyyy, reg_tmp5.xxxx)).y;
    return false;
}
bool sub_341_342() {
    // 341: mov
    reg_tmp5.x = (uniforms.f[93].xxxx).x;
    return false;
}
bool sub_342_345() {
    // 342: log
    reg_tmp5.y = log2(reg_tmp5.x);
    // 343: mul
    reg_tmp5.y = (mul_s(uniforms.f[84 + address_registers.x].xxxx, reg_tmp5.yyyy)).y;
    // 344: exp
    reg_tmp5.x = exp2(reg_tmp5.y);
    return false;
}
bool sub_349_356() {
    // 349: max
    reg_tmp6.x = (max(uniforms.f[93].xxxx, reg_tmp6.xxxx)).x;
    // 350: mad
    reg_tmp9.xyz = (fma_s(reg_tmp1.xyzz, uniforms.f[79 + address_registers.x].xyzz, reg_tmp9.xyzz)).xyz;
    // 351: mul
    reg_tmp4 = mul_s(uniforms.f[80 + address_registers.x], reg_tmp2);
    // 352: mul
    reg_tmp5.xyz = (mul_s(reg_tmp6.xxxx, reg_tmp4.xyzz)).xyz;
    // 353: mul
    reg_tmp5.xyz = (mul_s(reg_tmp6.yyyy, reg_tmp5.xyzz)).xyz;
    // 354: add
    reg_tmp9.xyz = (reg_tmp9.xyzz + reg_tmp5.xyzz).xyz;
    // 355: add
    reg_tmp9.w = (reg_tmp9.wwww + reg_tmp4.wwww).w;
    return false;
}
bool sub_358_368() {
    // 358: dp3
    reg_tmp1 = vec4(dot_3(uniforms.f[24].xyz, reg_tmp14.xyz));
    // 359: mov
    reg_tmp2 = uniforms.f[24].wwww;
    // 360: mad
    reg_tmp1 = fma_s(reg_tmp1, reg_tmp2, reg_tmp2);
    // 361: mov
    reg_tmp3 = uniforms.f[22];
    // 362: add
    reg_tmp2 = uniforms.f[23] + -reg_tmp3;
    // 363: mad
    reg_tmp4 = fma_s(reg_tmp2, reg_tmp1, reg_tmp3);
    // 364: ifu
    if (uniforms.b[6]) {
        sub_365_366();
    }
    // 366: mad
    reg_tmp9.xyz = (fma_s(reg_tmp4, uniforms.f[21], reg_tmp9)).xyz;
    // 367: mov
    reg_tmp8.x = (uniforms.f[93].yyyy).x;
    return false;
}
bool sub_365_366() {
    // 365: mul
    reg_tmp4 = mul_s(reg_tmp4, reg_tmp9.wwww);
    return false;
}
bool sub_368_395() {
    // 368: mov
    reg_tmp0.xy = (uniforms.f[10].xxxx).xy;
    // 369: ifu
    if (uniforms.b[9]) {
        sub_370_375();
    } else {
        sub_375_394();
    }
    // 394: nop
    return false;
}
bool sub_370_375() {
    // 370: call
    {
        sub_395_403();
    }
    // 371: dp4
    reg_tmp3.x = dot_s(uniforms.f[11].xywz, reg_tmp6);
    // 372: dp4
    reg_tmp3.y = dot_s(uniforms.f[12].xywz, reg_tmp6);
    // 373: mov
    reg_tmp3.zw = (uniforms.f[93].xxxx).zw;
    // 374: mov
    vs_out_attr4 = reg_tmp3;
    return false;
}
bool sub_375_394() {
    // 375: cmp
    conditional_code = equal(uniforms.f[95].xy, reg_tmp0.xy);
    // 376: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    // 377: ifc
    if (all(not(conditional_code))) {
        sub_378_384();
    } else {
        sub_384_393();
    }
    // 393: mov
    vs_out_attr4 = reg_tmp3;
    return false;
}
bool sub_378_384() {
    // 378: mov
    reg_tmp6 = reg_tmp10;
    // 379: dp4
    reg_tmp3.x = dot_s(uniforms.f[11], reg_tmp6);
    // 380: dp4
    reg_tmp3.y = dot_s(uniforms.f[12], reg_tmp6);
    // 381: dp4
    reg_tmp3.z = dot_s(uniforms.f[13], reg_tmp6);
    // 382: mul
    reg_tmp0.xy = (mul_s(uniforms.f[19].xyyy, reg_tmp3.zzzz)).xy;
    // 383: add
    reg_tmp3.xy = (reg_tmp3.xyyy + reg_tmp0.xyyy).xy;
    return false;
}
bool sub_384_393() {
    // 384: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_385_389();
    } else {
        sub_389_392();
    }
    // 392: nop
    return false;
}
bool sub_385_389() {
    // 385: call
    {
        sub_403_410();
    }
    // 386: dp3
    reg_tmp3.x = dot_3(uniforms.f[11].xyz, reg_tmp6.xyz);
    // 387: dp3
    reg_tmp3.y = dot_3(uniforms.f[12].xyz, reg_tmp6.xyz);
    // 388: dp3
    reg_tmp3.z = dot_3(uniforms.f[13].xyz, reg_tmp6.xyz);
    return false;
}
bool sub_389_392() {
    // 389: call
    {
        sub_410_414();
    }
    // 390: dp4
    reg_tmp3.x = dot_s(uniforms.f[11], reg_tmp6);
    // 391: dp4
    reg_tmp3.y = dot_s(uniforms.f[12], reg_tmp6);
    return false;
}
bool sub_395_403() {
    // 395: cmp
    conditional_code = equal(uniforms.f[93].yz, reg_tmp0.xy);
    // 396: ifc
    if (all(not(conditional_code))) {
        sub_397_398();
    } else {
        sub_398_402();
    }
    // 402: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    return false;
}
bool sub_397_398() {
    // 397: mul
    reg_tmp6.xy = (mul_s(uniforms.f[8].xxxx, vs_in_reg4.xyyy)).xy;
    return false;
}
bool sub_398_402() {
    // 398: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_399_400();
    } else {
        sub_400_401();
    }
    // 401: nop
    return false;
}
bool sub_399_400() {
    // 399: mul
    reg_tmp6.xy = (mul_s(uniforms.f[8].yyyy, vs_in_reg5.xyyy)).xy;
    return false;
}
bool sub_400_401() {
    // 400: mul
    reg_tmp6.xy = (mul_s(uniforms.f[8].zzzz, vs_in_reg6.xyyy)).xy;
    return false;
}
bool sub_403_410() {
    // 403: mov
    reg_tmp2 = -reg_tmp15;
    // 404: dp3
    reg_tmp2.w = dot_3(reg_tmp2.xyz, reg_tmp2.xyz);
    // 405: rsq
    reg_tmp2.w = rsq_s(reg_tmp2.w);
    // 406: mul
    reg_tmp2 = mul_s(reg_tmp2, reg_tmp2.wwww);
    // 407: dp3
    reg_tmp1 = vec4(dot_3(reg_tmp2.xyz, reg_tmp14.xyz));
    // 408: add
    reg_tmp1 = reg_tmp1 + reg_tmp1;
    // 409: mad
    reg_tmp6 = fma_s(reg_tmp1, reg_tmp14, -reg_tmp2);
    return false;
}
bool sub_410_414() {
    // 410: mov
    reg_tmp1.xy = (uniforms.f[94].zzzz).xy;
    // 411: mov
    reg_tmp1.zw = (uniforms.f[93].xxxx).zw;
    // 412: mad
    reg_tmp6 = fma_s(reg_tmp14, reg_tmp1, reg_tmp1);
    // 413: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    return false;
}
bool sub_414_440() {
    // 414: mov
    reg_tmp0.xy = (uniforms.f[10].yyyy).xy;
    // 415: ifu
    if (uniforms.b[10]) {
        sub_416_421();
    } else {
        sub_421_439();
    }
    // 439: nop
    return false;
}
bool sub_416_421() {
    // 416: call
    {
        sub_395_403();
    }
    // 417: dp4
    reg_tmp4.x = dot_s(uniforms.f[14].xywz, reg_tmp6);
    // 418: dp4
    reg_tmp4.y = dot_s(uniforms.f[15].xywz, reg_tmp6);
    // 419: mov
    reg_tmp4.zw = (reg_tmp6.zwww).zw;
    // 420: mov
    vs_out_attr5 = reg_tmp4;
    return false;
}
bool sub_421_439() {
    // 421: ifu
    if (uniforms.b[13]) {
        sub_422_437();
    } else {
        sub_437_438();
    }
    // 438: nop
    return false;
}
bool sub_422_437() {
    // 422: cmp
    conditional_code = equal(uniforms.f[95].xy, reg_tmp0.xy);
    // 423: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    // 424: mov
    reg_tmp4.zw = (reg_tmp6.zwww).zw;
    // 425: ifc
    if (all(not(conditional_code))) {
        sub_426_433();
    } else {
        sub_433_436();
    }
    // 436: mov
    vs_out_attr5 = reg_tmp4;
    return false;
}
bool sub_426_433() {
    // 426: mov
    reg_tmp6 = reg_tmp10;
    // 427: dp4
    reg_tmp4.x = dot_s(uniforms.f[14], reg_tmp6);
    // 428: dp4
    reg_tmp4.y = dot_s(uniforms.f[15], reg_tmp6);
    // 429: dp4
    reg_tmp4.z = dot_s(uniforms.f[16], reg_tmp6);
    // 430: rcp
    reg_tmp6.w = rcp_s(reg_tmp4.z);
    // 431: mul
    reg_tmp4.xy = (mul_s(reg_tmp4.xyyy, reg_tmp6.wwww)).xy;
    // 432: add
    reg_tmp4.xy = (uniforms.f[19].zwww + reg_tmp4.xyyy).xy;
    return false;
}
bool sub_433_436() {
    // 433: call
    {
        sub_410_414();
    }
    // 434: dp4
    reg_tmp4.x = dot_s(uniforms.f[14], reg_tmp6);
    // 435: dp4
    reg_tmp4.y = dot_s(uniforms.f[15], reg_tmp6);
    return false;
}
bool sub_437_438() {
    // 437: mov
    vs_out_attr5 = uniforms.f[93].xxxx;
    return false;
}
bool sub_440_457() {
    // 440: mov
    reg_tmp0.xy = (uniforms.f[10].zzzz).xy;
    // 441: ifu
    if (uniforms.b[11]) {
        sub_442_447();
    } else {
        sub_447_456();
    }
    // 456: nop
    return false;
}
bool sub_442_447() {
    // 442: call
    {
        sub_395_403();
    }
    // 443: dp4
    reg_tmp5.x = dot_s(uniforms.f[17].xywz, reg_tmp6);
    // 444: dp4
    reg_tmp5.y = dot_s(uniforms.f[18].xywz, reg_tmp6);
    // 445: mov
    reg_tmp5.zw = (reg_tmp6.zwww).zw;
    // 446: mov
    vs_out_attr6 = reg_tmp5;
    return false;
}
bool sub_447_456() {
    // 447: ifu
    if (uniforms.b[14]) {
        sub_448_454();
    } else {
        sub_454_455();
    }
    // 455: nop
    return false;
}
bool sub_448_454() {
    // 448: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    // 449: mov
    reg_tmp5.zw = (reg_tmp6.zwww).zw;
    // 450: call
    {
        sub_410_414();
    }
    // 451: dp4
    reg_tmp5.x = dot_s(uniforms.f[17], reg_tmp6);
    // 452: dp4
    reg_tmp5.y = dot_s(uniforms.f[18], reg_tmp6);
    // 453: mov
    vs_out_attr6 = reg_tmp5;
    return false;
}
bool sub_454_455() {
    // 454: mov
    vs_out_attr6 = uniforms.f[93].xxxx;
    return false;
}
// reference: 23974C6497464DA4, 2B811601C66B2B58
// shader: 8DD9, AD7922A63ED54CA7

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
 in vec4 vs_out_attr6[];

struct Vertex {
    vec4 attributes[7];
};

vec4 GetVertexQuaternion(Vertex vtx) {
    return vec4(vtx.attributes[1].x, vtx.attributes[1].y, vtx.attributes[1].z, vtx.attributes[1].w);
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

    vec4 vtx_color = vec4(vtx.attributes[3].x, vtx.attributes[3].y, vtx.attributes[3].z, vtx.attributes[3].w);
    primary_color = min(abs(vtx_color), vec4(1.0));

    texcoord0 = vec2(vtx.attributes[4].x, vtx.attributes[4].y);
    texcoord1 = vec2(vtx.attributes[5].x, vtx.attributes[5].y);

    texcoord0_w = vtx.attributes[4].z;
    view = vec3(vtx.attributes[2].x, vtx.attributes[2].y, vtx.attributes[2].z);

    texcoord2 = vec2(vtx.attributes[6].x, vtx.attributes[6].y);

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
    prim_buffer[0].attributes = vec4[7](vs_out_attr0[0], vs_out_attr1[0], vs_out_attr2[0], vs_out_attr3[0], vs_out_attr4[0], vs_out_attr5[0], vs_out_attr6[0]);
    prim_buffer[1].attributes = vec4[7](vs_out_attr0[1], vs_out_attr1[1], vs_out_attr2[1], vs_out_attr3[1], vs_out_attr4[1], vs_out_attr5[1], vs_out_attr6[1]);
    prim_buffer[2].attributes = vec4[7](vs_out_attr0[2], vs_out_attr1[2], vs_out_attr2[2], vs_out_attr3[2], vs_out_attr4[2], vs_out_attr5[2], vs_out_attr6[2]);
    EmitPrim(prim_buffer[0], prim_buffer[1], prim_buffer[2]);
}
// reference: FC74FA4ACA1C8C74, AD7922A63ED54CA7
// shader: 8B30, E5F3EE6EB2E8CA32

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
light_vector = normalize(light_src[1].position);
spot_dir = light_src[1].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[1].diffuse * dot_product) + light_src[1].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[1].specular_0) + (light_src[1].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((primary_fragment_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) + (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D39135A900A827A5, E5F3EE6EB2E8CA32
// program: 2B811601C66B2B58, AD7922A63ED54CA7, E5F3EE6EB2E8CA32
// reference: F0148B9D4CFFECE3, 2B811601C66B2B58
// shader: 8B30, DCE0E2013DA1E975

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
light_vector = normalize(light_src[1].position);
spot_dir = light_src[1].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[1].diffuse * dot_product) + light_src[1].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[1].specular_0) + (light_src[1].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((textureProj(tex0, vec3(texcoord0, texcoord0_w)).rgb) * (texcolor1.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (textureProj(tex0, vec3(texcoord0, texcoord0_w)).a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (texcolor2.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (textureProj(tex0, vec3(texcoord0, texcoord0_w)).rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D12C1E8F376FDAC4, DCE0E2013DA1E975
// program: 2B811601C66B2B58, AD7922A63ED54CA7, DCE0E2013DA1E975
// shader: 8B30, 80DA1EBB4019D2C1

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
light_vector = normalize(light_src[1].position);
spot_dir = light_src[1].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[1].diffuse * dot_product) + light_src[1].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[1].specular_0) + (light_src[1].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3 * 2.0, alpha_output_3 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 3739C1EE37C71F95, 80DA1EBB4019D2C1
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 80DA1EBB4019D2C1
// shader: 8B30, ADF8AEBE674FF2B1

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

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 2584B8EB7BE989CC, ADF8AEBE674FF2B1
// program: 2B811601C66B2B58, AD7922A63ED54CA7, ADF8AEBE674FF2B1
// shader: 8B30, 733594D8917F2A35

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

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 2584B8EB975E62CF, 733594D8917F2A35
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 733594D8917F2A35
// reference: 66E1B725F3984532, ADF8AEBE674FF2B1
// shader: 8B30, C6CDE1231DE12758

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor1.rgb) * (texcolor2.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (textureProj(tex0, vec3(texcoord0, texcoord0_w)).a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (textureProj(tex0, vec3(texcoord0, texcoord0_w)).rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 41D957BC4EDDEFDD, C6CDE1231DE12758
// program: 2B811601C66B2B58, AD7922A63ED54CA7, C6CDE1231DE12758
// shader: 8B30, 02F31B8319CBFDCF

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (texcolor1.rgb) + (const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: B80A2D49A2B5A8E1, 02F31B8319CBFDCF
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 02F31B8319CBFDCF
// shader: 8B30, E1C325EE8AD9AAD5

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
light_vector = normalize(light_src[1].position);
spot_dir = light_src[1].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[1].diffuse * dot_product) + light_src[1].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[1].specular_0) + (light_src[1].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((primary_fragment_color.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((secondary_fragment_color.rgb) + (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (primary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: CA0455727AFC56C4, E1C325EE8AD9AAD5
// program: 2B811601C66B2B58, AD7922A63ED54CA7, E1C325EE8AD9AAD5
// shader: 8B30, 5B8DDCC2328E1E8A

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) + (const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 9D26508BD397D9AA, 5B8DDCC2328E1E8A
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 5B8DDCC2328E1E8A
// shader: 8B30, 96D0F3BBB4B6C25D

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
light_vector = normalize(light_src[1].position);
spot_dir = light_src[1].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[1].diffuse * dot_product) + light_src[1].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[1].specular_0) + (light_src[1].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3 * 2.0, alpha_output_3 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 3739C1EE4481734B, 96D0F3BBB4B6C25D
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 96D0F3BBB4B6C25D
// shader: 8B30, 25953BF3E0597251

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: FB35E2F481DE1D70, 25953BF3E0597251
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 25953BF3E0597251
// shader: 8B30, C3BCC351674FF2B1

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rrr), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 84324ECE7BE989CC, C3BCC351674FF2B1
// program: 2B811601C66B2B58, AD7922A63ED54CA7, C3BCC351674FF2B1
// shader: 8B30, 2E44477B198AC3F7

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: E1F07265368BAE0C, 2E44477B198AC3F7
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 2E44477B198AC3F7
// shader: 8B30, 71B1C176FA5C70FE

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (texcolor1.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 2584B8EB4E0243E2, 71B1C176FA5C70FE
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 71B1C176FA5C70FE
// shader: 8B30, 9D904990C08A2C2B

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (texcolor1.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: E1F072657E0F66B5, 9D904990C08A2C2B
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 9D904990C08A2C2B
// shader: 8B30, 4AB7428D8CD3351F

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
light_vector = normalize(light_src[1].position);
spot_dir = light_src[1].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[1].diffuse * dot_product) + light_src[1].ambient) * 1.0;
specular_sum.rgb += ((light_src[1].specular_0) + (light_src[1].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((primary_fragment_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 66E1B7255805FEE3, 4AB7428D8CD3351F
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 4AB7428D8CD3351F
// shader: 8B30, ECC4377586C6AC61

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: FB35E2F46D69F673, ECC4377586C6AC61
// program: 2B811601C66B2B58, AD7922A63ED54CA7, ECC4377586C6AC61
// shader: 8B31, AA4DB1C585CA776D

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
layout(location = 8) in vec4 vs_in_reg8;

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

bool sub_7_12();
bool sub_12_21();
bool sub_21_34();
bool sub_34_202();
bool sub_40_140();
bool sub_47_76();
bool sub_58_62();
bool sub_76_135();
bool sub_77_109();
bool sub_88_92();
bool sub_109_134();
bool sub_120_124();
bool sub_140_201();
bool sub_143_153();
bool sub_153_158();
bool sub_159_171();
bool sub_171_196();
bool sub_172_190();
bool sub_190_195();
bool sub_202_219();
bool sub_219_295();
bool sub_258_278();
bool sub_259_264();
bool sub_264_277();
bool sub_268_271();
bool sub_271_276();
bool sub_278_291();
bool sub_279_284();
bool sub_284_290();
bool sub_295_312();
bool sub_301_306();
bool sub_303_304();
bool sub_310_311();
bool sub_312_358();
bool sub_316_357();
bool sub_321_323();
bool sub_323_347();
bool sub_326_331();
bool sub_337_346();
bool sub_341_342();
bool sub_342_345();
bool sub_349_356();
bool sub_358_368();
bool sub_365_366();
bool sub_368_395();
bool sub_370_375();
bool sub_375_394();
bool sub_378_384();
bool sub_384_393();
bool sub_385_389();
bool sub_389_392();
bool sub_395_403();
bool sub_397_398();
bool sub_398_402();
bool sub_399_400();
bool sub_400_401();
bool sub_403_410();
bool sub_410_414();
bool sub_414_440();
bool sub_416_421();
bool sub_421_439();
bool sub_422_437();
bool sub_426_433();
bool sub_433_436();
bool sub_437_438();
bool sub_457_4096();

bool exec_shader() {
    sub_457_4096();
    return true;
}

bool sub_7_12() {
    // 7: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 8: dp4
    reg_tmp3.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 9: dp4
    reg_tmp3.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 10: dp4
    reg_tmp3.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 11: mad
    reg_tmp7 = fma_s(reg_tmp1.wwww, reg_tmp3, reg_tmp7);
    return false;
}
bool sub_12_21() {
    // 12: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 13: dp4
    reg_tmp3.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 14: dp4
    reg_tmp3.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 15: dp4
    reg_tmp3.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 16: dp3
    reg_tmp4.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp14.xyz);
    // 17: dp3
    reg_tmp4.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp14.xyz);
    // 18: dp3
    reg_tmp4.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp14.xyz);
    // 19: mad
    reg_tmp7 = fma_s(reg_tmp1.wwww, reg_tmp3, reg_tmp7);
    // 20: mad
    reg_tmp12 = fma_s(reg_tmp1.wwww, reg_tmp4, reg_tmp12);
    return false;
}
bool sub_21_34() {
    // 21: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 22: dp4
    reg_tmp3.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 23: dp4
    reg_tmp3.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 24: dp4
    reg_tmp3.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 25: dp3
    reg_tmp4.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp14.xyz);
    // 26: dp3
    reg_tmp4.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp14.xyz);
    // 27: dp3
    reg_tmp4.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp14.xyz);
    // 28: dp3
    reg_tmp5.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp13.xyz);
    // 29: dp3
    reg_tmp5.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp13.xyz);
    // 30: dp3
    reg_tmp5.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp13.xyz);
    // 31: mad
    reg_tmp7 = fma_s(reg_tmp1.wwww, reg_tmp3, reg_tmp7);
    // 32: mad
    reg_tmp12 = fma_s(reg_tmp1.wwww, reg_tmp4, reg_tmp12);
    // 33: mad
    reg_tmp11 = fma_s(reg_tmp1.wwww, reg_tmp5, reg_tmp11);
    return false;
}
bool sub_34_202() {
    // 34: mul
    reg_tmp15.xyz = (mul_s(uniforms.f[7].xxxx, vs_in_reg0)).xyz;
    // 35: mul
    reg_tmp14.xyz = (mul_s(uniforms.f[7].yyyy, vs_in_reg1)).xyz;
    // 36: mul
    reg_tmp13.xyz = (mul_s(uniforms.f[7].zzzz, vs_in_reg2)).xyz;
    // 37: add
    reg_tmp15.xyz = (uniforms.f[6] + reg_tmp15).xyz;
    // 38: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 39: ifu
    if (uniforms.b[1]) {
        sub_40_140();
    } else {
        sub_140_201();
    }
    // 201: nop
    return false;
}
bool sub_40_140() {
    // 40: mov
    reg_tmp0 = uniforms.f[7];
    // 41: cmp
    conditional_code = notEqual(uniforms.f[93].xx, reg_tmp0.yz);
    // 42: mov
    reg_tmp7 = uniforms.f[93].xxxx;
    // 43: mov
    reg_tmp12 = uniforms.f[93].xxxx;
    // 44: mov
    reg_tmp11 = uniforms.f[93].xxxx;
    // 45: mul
    reg_tmp2 = mul_s(uniforms.f[93].wwww, vs_in_reg7);
    // 46: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_47_76();
    } else {
        sub_76_135();
    }
    // 135: mov
    vs_out_attr2 = -reg_tmp15;
    // 136: dp4
    vs_out_attr0.x = dot_s(uniforms.f[86], reg_tmp15);
    // 137: dp4
    vs_out_attr0.y = dot_s(uniforms.f[87], reg_tmp15);
    // 138: dp4
    vs_out_attr0.z = dot_s(uniforms.f[88], reg_tmp15);
    // 139: dp4
    vs_out_attr0.w = dot_s(uniforms.f[89], reg_tmp15);
    return false;
}
bool sub_47_76() {
    // 47: cmp
    conditional_code = notEqual(uniforms.f[93].xx, vs_in_reg8.zw);
    // 48: mov
    reg_tmp1.xy = (reg_tmp2.xxxx).xy;
    // 49: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.xxxx)).w;
    // 50: call
    {
        sub_12_21();
    }
    // 51: mov
    reg_tmp1.xy = (reg_tmp2.yyyy).xy;
    // 52: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.yyyy)).w;
    // 53: call
    {
        sub_12_21();
    }
    // 54: mov
    reg_tmp1.xy = (reg_tmp2.zzzz).xy;
    // 55: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.zzzz)).w;
    // 56: callc
    if (conditional_code.x) {
        sub_12_21();
    }
    // 57: ifu
    if (uniforms.b[8]) {
        sub_58_62();
    }
    // 62: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 63: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 64: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 65: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 66: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    // 67: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 68: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 69: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 70: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 71: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 72: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 73: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 74: call
    {
        sub_202_219();
    }
    // 75: nop
    return false;
}
bool sub_58_62() {
    // 58: mov
    reg_tmp1.xy = (reg_tmp2.wwww).xy;
    // 59: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.wwww)).w;
    // 60: callc
    if (conditional_code.y) {
        sub_12_21();
    }
    // 61: nop
    return false;
}
bool sub_76_135() {
    // 76: ifc
    if (all(conditional_code)) {
        sub_77_109();
    } else {
        sub_109_134();
    }
    // 134: nop
    return false;
}
bool sub_77_109() {
    // 77: cmp
    conditional_code = notEqual(uniforms.f[93].xx, vs_in_reg8.zw);
    // 78: mov
    reg_tmp1.xy = (reg_tmp2.xxxx).xy;
    // 79: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.xxxx)).w;
    // 80: call
    {
        sub_21_34();
    }
    // 81: mov
    reg_tmp1.xy = (reg_tmp2.yyyy).xy;
    // 82: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.yyyy)).w;
    // 83: call
    {
        sub_21_34();
    }
    // 84: mov
    reg_tmp1.xy = (reg_tmp2.zzzz).xy;
    // 85: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.zzzz)).w;
    // 86: callc
    if (conditional_code.x) {
        sub_21_34();
    }
    // 87: ifu
    if (uniforms.b[8]) {
        sub_88_92();
    }
    // 92: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 93: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 94: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 95: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 96: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    // 97: dp3
    reg_tmp13.x = dot_3(uniforms.f[3].xyz, reg_tmp11.xyz);
    // 98: dp3
    reg_tmp13.y = dot_3(uniforms.f[4].xyz, reg_tmp11.xyz);
    // 99: dp3
    reg_tmp13.z = dot_3(uniforms.f[5].xyz, reg_tmp11.xyz);
    // 100: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 101: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 102: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 103: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 104: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 105: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 106: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 107: call
    {
        sub_219_295();
    }
    // 108: nop
    return false;
}
bool sub_88_92() {
    // 88: mov
    reg_tmp1.xy = (reg_tmp2.wwww).xy;
    // 89: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.wwww)).w;
    // 90: callc
    if (conditional_code.y) {
        sub_21_34();
    }
    // 91: nop
    return false;
}
bool sub_109_134() {
    // 109: cmp
    conditional_code = notEqual(uniforms.f[93].xx, vs_in_reg8.zw);
    // 110: mov
    reg_tmp1.xy = (reg_tmp2.xxxx).xy;
    // 111: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.xxxx)).w;
    // 112: call
    {
        sub_7_12();
    }
    // 113: mov
    reg_tmp1.xy = (reg_tmp2.yyyy).xy;
    // 114: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.yyyy)).w;
    // 115: call
    {
        sub_7_12();
    }
    // 116: mov
    reg_tmp1.xy = (reg_tmp2.zzzz).xy;
    // 117: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.zzzz)).w;
    // 118: callc
    if (conditional_code.x) {
        sub_7_12();
    }
    // 119: ifu
    if (uniforms.b[8]) {
        sub_120_124();
    }
    // 124: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 125: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 126: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 127: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 128: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    // 129: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 130: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 131: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 132: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 133: mov
    vs_out_attr1 = uniforms.f[93].xxxx;
    return false;
}
bool sub_120_124() {
    // 120: mov
    reg_tmp1.xy = (reg_tmp2.wwww).xy;
    // 121: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.wwww)).w;
    // 122: callc
    if (conditional_code.y) {
        sub_7_12();
    }
    // 123: nop
    return false;
}
bool sub_140_201() {
    // 140: mov
    reg_tmp0 = uniforms.f[7];
    // 141: cmp
    conditional_code = notEqual(uniforms.f[93].xx, reg_tmp0.yz);
    // 142: ifu
    if (uniforms.b[2]) {
        sub_143_153();
    } else {
        sub_153_158();
    }
    // 158: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_159_171();
    } else {
        sub_171_196();
    }
    // 196: mov
    vs_out_attr2 = -reg_tmp15;
    // 197: dp4
    vs_out_attr0.x = dot_s(uniforms.f[86], reg_tmp15);
    // 198: dp4
    vs_out_attr0.y = dot_s(uniforms.f[87], reg_tmp15);
    // 199: dp4
    vs_out_attr0.z = dot_s(uniforms.f[88], reg_tmp15);
    // 200: dp4
    vs_out_attr0.w = dot_s(uniforms.f[89], reg_tmp15);
    return false;
}
bool sub_143_153() {
    // 143: mul
    reg_tmp1.x = (mul_s(uniforms.f[93].wwww, vs_in_reg7.xxxx)).x;
    // 144: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 145: dp4
    reg_tmp7.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 146: dp4
    reg_tmp7.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 147: dp4
    reg_tmp7.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 148: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 149: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 150: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 151: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 152: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    return false;
}
bool sub_153_158() {
    // 153: mova
    address_registers.x = (ivec2(uniforms.f[93].xx)).x;
    // 154: dp4
    reg_tmp10.x = dot_s(uniforms.f[25], reg_tmp15);
    // 155: dp4
    reg_tmp10.y = dot_s(uniforms.f[26], reg_tmp15);
    // 156: dp4
    reg_tmp10.z = dot_s(uniforms.f[27], reg_tmp15);
    // 157: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    return false;
}
bool sub_159_171() {
    // 159: dp3
    reg_tmp12.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp14.xyz);
    // 160: dp3
    reg_tmp12.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp14.xyz);
    // 161: dp3
    reg_tmp12.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp14.xyz);
    // 162: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 163: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 164: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 165: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 166: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 167: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 168: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 169: call
    {
        sub_202_219();
    }
    // 170: nop
    return false;
}
bool sub_171_196() {
    // 171: ifc
    if (all(conditional_code)) {
        sub_172_190();
    } else {
        sub_190_195();
    }
    // 195: nop
    return false;
}
bool sub_172_190() {
    // 172: dp3
    reg_tmp12.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp14.xyz);
    // 173: dp3
    reg_tmp12.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp14.xyz);
    // 174: dp3
    reg_tmp12.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp14.xyz);
    // 175: dp3
    reg_tmp11.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp13.xyz);
    // 176: dp3
    reg_tmp11.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp13.xyz);
    // 177: dp3
    reg_tmp11.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp13.xyz);
    // 178: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 179: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 180: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 181: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 182: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 183: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 184: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 185: dp3
    reg_tmp13.x = dot_3(uniforms.f[3].xyz, reg_tmp11.xyz);
    // 186: dp3
    reg_tmp13.y = dot_3(uniforms.f[4].xyz, reg_tmp11.xyz);
    // 187: dp3
    reg_tmp13.z = dot_3(uniforms.f[5].xyz, reg_tmp11.xyz);
    // 188: call
    {
        sub_219_295();
    }
    // 189: nop
    return false;
}
bool sub_190_195() {
    // 190: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 191: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 192: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 193: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 194: mov
    vs_out_attr1 = uniforms.f[93].xxxx;
    return false;
}
bool sub_202_219() {
    uint jmp_to = 202u;
    while (true) {
        switch (jmp_to) {
        case 202u: {
            // 202: dp3
            reg_tmp6.x = dot_3(reg_tmp14.xyz, reg_tmp14.xyz);
            // 203: dp3
            reg_tmp7.x = dot_3(reg_tmp12.xyz, reg_tmp12.xyz);
            // 204: rsq
            reg_tmp6.x = rsq_s(reg_tmp6.x);
            // 205: rsq
            reg_tmp7.x = rsq_s(reg_tmp7.x);
            // 206: mul
            reg_tmp14.xyz = (mul_s(reg_tmp14.xyzz, reg_tmp6.xxxx)).xyz;
            // 207: mul
            reg_tmp12.xyz = (mul_s(reg_tmp12.xyzz, reg_tmp7.xxxx)).xyz;
            // 208: mov
            reg_tmp0 = uniforms.f[93].yxxx;
            // 209: jmpu
            if (!uniforms.b[15]) {
                { jmp_to = 218u; break; }
            }
            // 210: add
            reg_tmp4 = uniforms.f[93].yyyy + reg_tmp14.zzzz;
            // 211: mul
            reg_tmp4 = mul_s(uniforms.f[94].zzzz, reg_tmp4);
            // 212: cmp
            conditional_code = greaterThanEqual(uniforms.f[93].xx, reg_tmp4.xx);
            // 213: rsq
            reg_tmp4 = vec4(rsq_s(reg_tmp4.x));
            // 214: mul
            reg_tmp5 = mul_s(uniforms.f[94].zzzz, reg_tmp14);
            // 215: jmpc
            if (conditional_code.x) {
                { jmp_to = 218u; break; }
            }
            // 216: rcp
            reg_tmp0.z = rcp_s(reg_tmp4.x);
            // 217: mul
            reg_tmp0.xy = (mul_s(reg_tmp5, reg_tmp4)).xy;
        }
        case 218u: {
            // 218: mov
            vs_out_attr1 = reg_tmp0;
        }
        default: return false;
        }
    }
    return false;
}
bool sub_219_295() {
    uint jmp_to = 219u;
    while (true) {
        switch (jmp_to) {
        case 219u: {
            // 219: dp3
            reg_tmp6.x = dot_3(reg_tmp14.xyz, reg_tmp14.xyz);
            // 220: dp3
            reg_tmp7.x = dot_3(reg_tmp12.xyz, reg_tmp12.xyz);
            // 221: rsq
            reg_tmp6.x = rsq_s(reg_tmp6.x);
            // 222: rsq
            reg_tmp7.x = rsq_s(reg_tmp7.x);
            // 223: mul
            reg_tmp14.xyz = (mul_s(reg_tmp14.xyzz, reg_tmp6.xxxx)).xyz;
            // 224: mul
            reg_tmp12.xyz = (mul_s(reg_tmp12.xyzz, reg_tmp7.xxxx)).xyz;
            // 225: mul
            reg_tmp13.xyz = (mul_s(reg_tmp13.xyzz, reg_tmp6.xxxx)).xyz;
            // 226: mul
            reg_tmp11.xyz = (mul_s(reg_tmp11.xyzz, reg_tmp7.xxxx)).xyz;
            // 227: mov
            reg_tmp0 = uniforms.f[93].yxxx;
            // 228: jmpu
            if (!uniforms.b[15]) {
                { jmp_to = 294u; break; }
            }
            // 229: mul
            reg_tmp13.xyz = (mul_s(reg_tmp13.xyzz, reg_tmp6.xxxx)).xyz;
            // 230: mul
            reg_tmp11.xyz = (mul_s(reg_tmp11.xyzz, reg_tmp7.xxxx)).xyz;
            // 231: mul
            reg_tmp5 = mul_s(reg_tmp14.yzxx, reg_tmp13.zxyy);
            // 232: mad
            reg_tmp5 = fma_s(-reg_tmp13.yzxx, reg_tmp14.zxyy, reg_tmp5);
            // 233: dp3
            reg_tmp5.w = dot_3(reg_tmp5.xyz, reg_tmp5.xyz);
            // 234: rsq
            reg_tmp5.w = rsq_s(reg_tmp5.w);
            // 235: mul
            reg_tmp5 = mul_s(reg_tmp5, reg_tmp5.wwww);
            // 236: add
            reg_tmp6.w = (reg_tmp14.zzzz + reg_tmp5.yyyy).w;
            // 237: mul
            reg_tmp13 = mul_s(reg_tmp5.yzxx, reg_tmp14.zxyy);
            // 238: mad
            reg_tmp13 = fma_s(-reg_tmp14.yzxx, reg_tmp5.zxyy, reg_tmp13);
            // 239: add
            reg_tmp6.w = (reg_tmp13.xxxx + reg_tmp6).w;
            // 240: mov
            reg_tmp13.w = (reg_tmp5.zzzz).w;
            // 241: mov
            reg_tmp5.z = (reg_tmp13.xxxx).z;
            // 242: add
            reg_tmp6.w = (uniforms.f[93].yyyy + reg_tmp6).w;
            // 243: mov
            reg_tmp14.w = (reg_tmp5.xxxx).w;
            // 244: mov
            reg_tmp5.x = (reg_tmp14.zzzz).x;
            // 245: cmp
            conditional_code = lessThan(uniforms.f[94].yy, reg_tmp6.ww);
            // 246: mov
            reg_tmp6.x = (uniforms.f[93].yyyy).x;
            // 247: mov
            reg_tmp6.y = (-uniforms.f[93].yyyy).y;
            // 248: jmpc
            if (!conditional_code.x) {
                { jmp_to = 256u; break; }
            }
            // 249: add
            reg_tmp7.xz = (reg_tmp13.wwyy + -reg_tmp14.yyww).xz;
            // 250: add
            reg_tmp7.y = (reg_tmp14.xxxx + -reg_tmp13.zzzz).y;
            // 251: mov
            reg_tmp7.w = (reg_tmp6).w;
            // 252: dp4
            reg_tmp6 = vec4(dot_s(reg_tmp7, reg_tmp7));
            // 253: rsq
            reg_tmp6 = vec4(rsq_s(reg_tmp6.x));
            // 254: mul
            reg_tmp0 = mul_s(reg_tmp7, reg_tmp6);
            // 255: jmpu
            if (uniforms.b[0]) {
                { jmp_to = 294u; break; }
            }
        }
        case 256u: {
            // 256: cmp
            conditional_code = greaterThan(reg_tmp5.zy, reg_tmp5.yx);
            // 257: ifc
            if (conditional_code.x) {
                sub_258_278();
            } else {
                sub_278_291();
            }
            // 291: dp4
            reg_tmp6 = vec4(dot_s(reg_tmp8, reg_tmp8));
            // 292: rsq
            reg_tmp6 = vec4(rsq_s(reg_tmp6.x));
            // 293: mul
            reg_tmp0 = mul_s(reg_tmp8, reg_tmp6);
        }
        case 294u: {
            // 294: mov
            vs_out_attr1 = reg_tmp0;
        }
        default: return false;
        }
    }
    return false;
}
bool sub_258_278() {
    // 258: ifc
    if (conditional_code.y) {
        sub_259_264();
    } else {
        sub_264_277();
    }
    // 277: mov
    reg_tmp8.w = (-reg_tmp8).w;
    return false;
}
bool sub_259_264() {
    // 259: mul
    reg_tmp8 = mul_s(reg_tmp13.yyzw, reg_tmp6.xxxy);
    // 260: add
    reg_tmp8.x = (uniforms.f[93].yyyy + -reg_tmp5.yyyy).x;
    // 261: add
    reg_tmp9 = reg_tmp5.zzzz + -reg_tmp5.xxxx;
    // 262: add
    reg_tmp8.yzw = (reg_tmp8 + reg_tmp14.wwxy).yzw;
    // 263: add
    reg_tmp8.x = (reg_tmp9 + reg_tmp8).x;
    return false;
}
bool sub_264_277() {
    // 264: cmp
    conditional_code = greaterThan(reg_tmp5.zz, reg_tmp5.xx);
    // 265: mul
    reg_tmp8 = mul_s(reg_tmp13.yyzw, reg_tmp6.xxxy);
    // 266: add
    reg_tmp8.x = (uniforms.f[93].yyyy + -reg_tmp5.yyyy).x;
    // 267: ifc
    if (conditional_code.x) {
        sub_268_271();
    } else {
        sub_271_276();
    }
    // 276: nop
    return false;
}
bool sub_268_271() {
    // 268: add
    reg_tmp9 = reg_tmp5.zzzz + -reg_tmp5.xxxx;
    // 269: add
    reg_tmp8.yzw = (reg_tmp8 + reg_tmp14.wwxy).yzw;
    // 270: add
    reg_tmp8.x = (reg_tmp9 + reg_tmp8).x;
    return false;
}
bool sub_271_276() {
    // 271: mul
    reg_tmp8 = mul_s(reg_tmp13.zwwy, reg_tmp6.xxxy);
    // 272: add
    reg_tmp8.z = (uniforms.f[93].yyyy + -reg_tmp5.zzzz).z;
    // 273: add
    reg_tmp9 = reg_tmp5.xxxx + -reg_tmp5.yyyy;
    // 274: add
    reg_tmp8.xyw = (reg_tmp8 + reg_tmp14.xyyw).xyw;
    // 275: add
    reg_tmp8.z = (reg_tmp9 + reg_tmp8).z;
    return false;
}
bool sub_278_291() {
    // 278: ifc
    if (conditional_code.y) {
        sub_279_284();
    } else {
        sub_284_290();
    }
    // 290: nop
    return false;
}
bool sub_279_284() {
    // 279: mul
    reg_tmp8 = mul_s(reg_tmp13.yywz, reg_tmp6.xxxy);
    // 280: add
    reg_tmp8.y = (uniforms.f[93].yyyy + -reg_tmp5.zzzz).y;
    // 281: add
    reg_tmp9 = reg_tmp5.yyyy + -reg_tmp5.xxxx;
    // 282: add
    reg_tmp8.xzw = (reg_tmp8 + reg_tmp14.wwyx).xzw;
    // 283: add
    reg_tmp8.y = (reg_tmp9 + reg_tmp8).y;
    return false;
}
bool sub_284_290() {
    // 284: mul
    reg_tmp8 = mul_s(reg_tmp13.zwwy, reg_tmp6.xxxy);
    // 285: add
    reg_tmp8.z = (uniforms.f[93].yyyy + -reg_tmp5.zzzz).z;
    // 286: add
    reg_tmp9 = reg_tmp5.xxxx + -reg_tmp5.yyyy;
    // 287: add
    reg_tmp8.xyw = (reg_tmp8 + reg_tmp14.xyyw).xyw;
    // 288: add
    reg_tmp8.z = (reg_tmp9 + reg_tmp8).z;
    // 289: mov
    reg_tmp8.w = (-reg_tmp8).w;
    return false;
}
bool sub_295_312() {
    // 295: mov
    reg_tmp8.xy = (uniforms.f[93].xxxx).xy;
    // 296: mov
    reg_tmp0.y = (uniforms.f[7].wwww).y;
    // 297: cmp
    conditional_code = notEqual(uniforms.f[93].xx, reg_tmp0.xy);
    // 298: mov
    reg_tmp9.xyz = (uniforms.f[93].xxxx).xyz;
    // 299: mov
    reg_tmp9.w = (uniforms.f[21].wwww).w;
    // 300: ifc
    if (conditional_code.y) {
        sub_301_306();
    }
    // 306: callu
    if (uniforms.b[12]) {
        sub_312_358();
    }
    // 307: callu
    if (uniforms.b[5]) {
        sub_358_368();
    }
    // 308: cmp
    conditional_code = equal(uniforms.f[93].xx, reg_tmp8.xy);
    // 309: ifc
    if (all(conditional_code)) {
        sub_310_311();
    }
    // 311: max
    vs_out_attr3 = max(uniforms.f[93].xxxx, reg_tmp9);
    return false;
}
bool sub_301_306() {
    // 301: mul
    reg_tmp0 = mul_s(uniforms.f[7].wwww, vs_in_reg3);
    // 302: ifu
    if (uniforms.b[7]) {
        sub_303_304();
    }
    // 304: mul
    reg_tmp9.xyz = (mul_s(uniforms.f[20].wwww, reg_tmp0.xyzz)).xyz;
    // 305: mov
    reg_tmp8.x = (uniforms.f[93].yyyy).x;
    return false;
}
bool sub_303_304() {
    // 303: mul
    reg_tmp9.w = (mul_s(reg_tmp9.wwww, reg_tmp0.wwww)).w;
    return false;
}
bool sub_310_311() {
    // 310: mov
    reg_tmp9 = uniforms.f[21];
    return false;
}
bool sub_312_358() {
    // 312: mov
    reg_tmp1 = uniforms.f[20];
    // 313: mov
    reg_tmp2 = uniforms.f[21];
    // 314: mov
    reg_tmp3 = uniforms.f[93].xxxx;
    // 315: loop
    address_registers.z = int(uniforms.i[0].y);
    for (uint loop315 = 0u; loop315 <= uniforms.i[0].x; address_registers.z += int(uniforms.i[0].z), ++loop315) {
        sub_316_357();
    }
    // 357: mov
    reg_tmp8.x = (uniforms.f[93].yyyy).x;
    return false;
}
bool sub_316_357() {
    // 316: mova
    address_registers.x = (ivec2(reg_tmp3.xy)).x;
    // 317: mov
    reg_tmp4.x = (uniforms.f[81 + address_registers.x].wwww).x;
    // 318: mov
    reg_tmp4.y = (uniforms.f[83 + address_registers.x].wwww).y;
    // 319: cmp
    conditional_code = equal(uniforms.f[93].xy, reg_tmp4.xy);
    // 320: ifc
    if (conditional_code.x) {
        sub_321_323();
    } else {
        sub_323_347();
    }
    // 347: cmp
    conditional_code.x = uniforms.f[93].xxxx.x == reg_tmp6.xyyy.x;
    conditional_code.y = uniforms.f[93].xxxx.y < reg_tmp6.xyyy.y;
    // 348: ifc
    if (conditional_code.y) {
        sub_349_356();
    }
    // 356: add
    reg_tmp3 = -uniforms.f[95].wwww + reg_tmp3;
    return false;
}
bool sub_321_323() {
    // 321: dp3
    reg_tmp6.x = dot_3(uniforms.f[81 + address_registers.x].xyz, reg_tmp14.xyz);
    // 322: mov
    reg_tmp6.y = (uniforms.f[93].yyyy).y;
    return false;
}
bool sub_323_347() {
    // 323: add
    reg_tmp4 = uniforms.f[81 + address_registers.x] + -reg_tmp15;
    // 324: mov
    reg_tmp6.y = (uniforms.f[93].yyyy).y;
    // 325: ifc
    if (conditional_code.y) {
        sub_326_331();
    }
    // 331: mov
    reg_tmp5 = uniforms.f[82 + address_registers.x];
    // 332: cmp
    conditional_code = equal(uniforms.f[93].yy, reg_tmp5.ww);
    // 333: dp3
    reg_tmp4.w = dot_3(reg_tmp4.xyz, reg_tmp4.xyz);
    // 334: rsq
    reg_tmp4.w = rsq_s(reg_tmp4.w);
    // 335: mul
    reg_tmp4 = mul_s(reg_tmp4, reg_tmp4.wwww);
    // 336: ifc
    if (conditional_code.x) {
        sub_337_346();
    }
    // 346: dp3
    reg_tmp6.x = dot_3(reg_tmp14.xyz, reg_tmp4.xyz);
    return false;
}
bool sub_326_331() {
    // 326: mov
    reg_tmp5.x = (uniforms.f[93].yyyy).x;
    // 327: dp3
    reg_tmp5.z = dot_3(reg_tmp4.xyz, reg_tmp4.xyz);
    // 328: mul
    reg_tmp5.y = (mul_s(reg_tmp5.zzzz, reg_tmp5.zzzz)).y;
    // 329: dp3
    reg_tmp6.y = dot_3(uniforms.f[83 + address_registers.x].xyz, reg_tmp5.xyz);
    // 330: rcp
    reg_tmp6.y = rcp_s(reg_tmp6.y);
    return false;
}
bool sub_337_346() {
    // 337: dp3
    reg_tmp5.x = dot_3(uniforms.f[82 + address_registers.x].xyz, -reg_tmp4.xyz);
    // 338: slti
    reg_tmp5.y = (vec4(lessThan(reg_tmp5.xxxx, uniforms.f[84 + address_registers.x].yyyy))).y;
    // 339: cmp
    conditional_code = equal(uniforms.f[93].yy, reg_tmp5.xy);
    // 340: ifc
    if (conditional_code.y) {
        sub_341_342();
    } else {
        sub_342_345();
    }
    // 345: mul
    reg_tmp6.y = (mul_s(reg_tmp6.yyyy, reg_tmp5.xxxx)).y;
    return false;
}
bool sub_341_342() {
    // 341: mov
    reg_tmp5.x = (uniforms.f[93].xxxx).x;
    return false;
}
bool sub_342_345() {
    // 342: log
    reg_tmp5.y = log2(reg_tmp5.x);
    // 343: mul
    reg_tmp5.y = (mul_s(uniforms.f[84 + address_registers.x].xxxx, reg_tmp5.yyyy)).y;
    // 344: exp
    reg_tmp5.x = exp2(reg_tmp5.y);
    return false;
}
bool sub_349_356() {
    // 349: max
    reg_tmp6.x = (max(uniforms.f[93].xxxx, reg_tmp6.xxxx)).x;
    // 350: mad
    reg_tmp9.xyz = (fma_s(reg_tmp1.xyzz, uniforms.f[79 + address_registers.x].xyzz, reg_tmp9.xyzz)).xyz;
    // 351: mul
    reg_tmp4 = mul_s(uniforms.f[80 + address_registers.x], reg_tmp2);
    // 352: mul
    reg_tmp5.xyz = (mul_s(reg_tmp6.xxxx, reg_tmp4.xyzz)).xyz;
    // 353: mul
    reg_tmp5.xyz = (mul_s(reg_tmp6.yyyy, reg_tmp5.xyzz)).xyz;
    // 354: add
    reg_tmp9.xyz = (reg_tmp9.xyzz + reg_tmp5.xyzz).xyz;
    // 355: add
    reg_tmp9.w = (reg_tmp9.wwww + reg_tmp4.wwww).w;
    return false;
}
bool sub_358_368() {
    // 358: dp3
    reg_tmp1 = vec4(dot_3(uniforms.f[24].xyz, reg_tmp14.xyz));
    // 359: mov
    reg_tmp2 = uniforms.f[24].wwww;
    // 360: mad
    reg_tmp1 = fma_s(reg_tmp1, reg_tmp2, reg_tmp2);
    // 361: mov
    reg_tmp3 = uniforms.f[22];
    // 362: add
    reg_tmp2 = uniforms.f[23] + -reg_tmp3;
    // 363: mad
    reg_tmp4 = fma_s(reg_tmp2, reg_tmp1, reg_tmp3);
    // 364: ifu
    if (uniforms.b[6]) {
        sub_365_366();
    }
    // 366: mad
    reg_tmp9.xyz = (fma_s(reg_tmp4, uniforms.f[21], reg_tmp9)).xyz;
    // 367: mov
    reg_tmp8.x = (uniforms.f[93].yyyy).x;
    return false;
}
bool sub_365_366() {
    // 365: mul
    reg_tmp4 = mul_s(reg_tmp4, reg_tmp9.wwww);
    return false;
}
bool sub_368_395() {
    // 368: mov
    reg_tmp0.xy = (uniforms.f[10].xxxx).xy;
    // 369: ifu
    if (uniforms.b[9]) {
        sub_370_375();
    } else {
        sub_375_394();
    }
    // 394: nop
    return false;
}
bool sub_370_375() {
    // 370: call
    {
        sub_395_403();
    }
    // 371: dp4
    reg_tmp3.x = dot_s(uniforms.f[11].xywz, reg_tmp6);
    // 372: dp4
    reg_tmp3.y = dot_s(uniforms.f[12].xywz, reg_tmp6);
    // 373: mov
    reg_tmp3.zw = (uniforms.f[93].xxxx).zw;
    // 374: mov
    vs_out_attr4 = reg_tmp3;
    return false;
}
bool sub_375_394() {
    // 375: cmp
    conditional_code = equal(uniforms.f[95].xy, reg_tmp0.xy);
    // 376: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    // 377: ifc
    if (all(not(conditional_code))) {
        sub_378_384();
    } else {
        sub_384_393();
    }
    // 393: mov
    vs_out_attr4 = reg_tmp3;
    return false;
}
bool sub_378_384() {
    // 378: mov
    reg_tmp6 = reg_tmp10;
    // 379: dp4
    reg_tmp3.x = dot_s(uniforms.f[11], reg_tmp6);
    // 380: dp4
    reg_tmp3.y = dot_s(uniforms.f[12], reg_tmp6);
    // 381: dp4
    reg_tmp3.z = dot_s(uniforms.f[13], reg_tmp6);
    // 382: mul
    reg_tmp0.xy = (mul_s(uniforms.f[19].xyyy, reg_tmp3.zzzz)).xy;
    // 383: add
    reg_tmp3.xy = (reg_tmp3.xyyy + reg_tmp0.xyyy).xy;
    return false;
}
bool sub_384_393() {
    // 384: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_385_389();
    } else {
        sub_389_392();
    }
    // 392: nop
    return false;
}
bool sub_385_389() {
    // 385: call
    {
        sub_403_410();
    }
    // 386: dp3
    reg_tmp3.x = dot_3(uniforms.f[11].xyz, reg_tmp6.xyz);
    // 387: dp3
    reg_tmp3.y = dot_3(uniforms.f[12].xyz, reg_tmp6.xyz);
    // 388: dp3
    reg_tmp3.z = dot_3(uniforms.f[13].xyz, reg_tmp6.xyz);
    return false;
}
bool sub_389_392() {
    // 389: call
    {
        sub_410_414();
    }
    // 390: dp4
    reg_tmp3.x = dot_s(uniforms.f[11], reg_tmp6);
    // 391: dp4
    reg_tmp3.y = dot_s(uniforms.f[12], reg_tmp6);
    return false;
}
bool sub_395_403() {
    // 395: cmp
    conditional_code = equal(uniforms.f[93].yz, reg_tmp0.xy);
    // 396: ifc
    if (all(not(conditional_code))) {
        sub_397_398();
    } else {
        sub_398_402();
    }
    // 402: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    return false;
}
bool sub_397_398() {
    // 397: mul
    reg_tmp6.xy = (mul_s(uniforms.f[8].xxxx, vs_in_reg4.xyyy)).xy;
    return false;
}
bool sub_398_402() {
    // 398: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_399_400();
    } else {
        sub_400_401();
    }
    // 401: nop
    return false;
}
bool sub_399_400() {
    // 399: mul
    reg_tmp6.xy = (mul_s(uniforms.f[8].yyyy, vs_in_reg5.xyyy)).xy;
    return false;
}
bool sub_400_401() {
    // 400: mul
    reg_tmp6.xy = (mul_s(uniforms.f[8].zzzz, vs_in_reg6.xyyy)).xy;
    return false;
}
bool sub_403_410() {
    // 403: mov
    reg_tmp2 = -reg_tmp15;
    // 404: dp3
    reg_tmp2.w = dot_3(reg_tmp2.xyz, reg_tmp2.xyz);
    // 405: rsq
    reg_tmp2.w = rsq_s(reg_tmp2.w);
    // 406: mul
    reg_tmp2 = mul_s(reg_tmp2, reg_tmp2.wwww);
    // 407: dp3
    reg_tmp1 = vec4(dot_3(reg_tmp2.xyz, reg_tmp14.xyz));
    // 408: add
    reg_tmp1 = reg_tmp1 + reg_tmp1;
    // 409: mad
    reg_tmp6 = fma_s(reg_tmp1, reg_tmp14, -reg_tmp2);
    return false;
}
bool sub_410_414() {
    // 410: mov
    reg_tmp1.xy = (uniforms.f[94].zzzz).xy;
    // 411: mov
    reg_tmp1.zw = (uniforms.f[93].xxxx).zw;
    // 412: mad
    reg_tmp6 = fma_s(reg_tmp14, reg_tmp1, reg_tmp1);
    // 413: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    return false;
}
bool sub_414_440() {
    // 414: mov
    reg_tmp0.xy = (uniforms.f[10].yyyy).xy;
    // 415: ifu
    if (uniforms.b[10]) {
        sub_416_421();
    } else {
        sub_421_439();
    }
    // 439: nop
    return false;
}
bool sub_416_421() {
    // 416: call
    {
        sub_395_403();
    }
    // 417: dp4
    reg_tmp4.x = dot_s(uniforms.f[14].xywz, reg_tmp6);
    // 418: dp4
    reg_tmp4.y = dot_s(uniforms.f[15].xywz, reg_tmp6);
    // 419: mov
    reg_tmp4.zw = (reg_tmp6.zwww).zw;
    // 420: mov
    vs_out_attr5 = reg_tmp4;
    return false;
}
bool sub_421_439() {
    // 421: ifu
    if (uniforms.b[13]) {
        sub_422_437();
    } else {
        sub_437_438();
    }
    // 438: nop
    return false;
}
bool sub_422_437() {
    // 422: cmp
    conditional_code = equal(uniforms.f[95].xy, reg_tmp0.xy);
    // 423: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    // 424: mov
    reg_tmp4.zw = (reg_tmp6.zwww).zw;
    // 425: ifc
    if (all(not(conditional_code))) {
        sub_426_433();
    } else {
        sub_433_436();
    }
    // 436: mov
    vs_out_attr5 = reg_tmp4;
    return false;
}
bool sub_426_433() {
    // 426: mov
    reg_tmp6 = reg_tmp10;
    // 427: dp4
    reg_tmp4.x = dot_s(uniforms.f[14], reg_tmp6);
    // 428: dp4
    reg_tmp4.y = dot_s(uniforms.f[15], reg_tmp6);
    // 429: dp4
    reg_tmp4.z = dot_s(uniforms.f[16], reg_tmp6);
    // 430: rcp
    reg_tmp6.w = rcp_s(reg_tmp4.z);
    // 431: mul
    reg_tmp4.xy = (mul_s(reg_tmp4.xyyy, reg_tmp6.wwww)).xy;
    // 432: add
    reg_tmp4.xy = (uniforms.f[19].zwww + reg_tmp4.xyyy).xy;
    return false;
}
bool sub_433_436() {
    // 433: call
    {
        sub_410_414();
    }
    // 434: dp4
    reg_tmp4.x = dot_s(uniforms.f[14], reg_tmp6);
    // 435: dp4
    reg_tmp4.y = dot_s(uniforms.f[15], reg_tmp6);
    return false;
}
bool sub_437_438() {
    // 437: mov
    vs_out_attr5 = uniforms.f[93].xxxx;
    return false;
}
bool sub_457_4096() {
    // 457: call
    {
        sub_34_202();
    }
    // 458: call
    {
        sub_295_312();
    }
    // 459: call
    {
        sub_368_395();
    }
    // 460: call
    {
        sub_414_440();
    }
    // 461: end
    return true;
}
// reference: 5F5019DA1C26C78C, AA4DB1C585CA776D
// shader: 8DD9, 3B3AE026C742C7D5

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
    return vec4(vtx.attributes[1].x, vtx.attributes[1].y, vtx.attributes[1].z, vtx.attributes[1].w);
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

    vec4 vtx_color = vec4(vtx.attributes[3].x, vtx.attributes[3].y, vtx.attributes[3].z, vtx.attributes[3].w);
    primary_color = min(abs(vtx_color), vec4(1.0));

    texcoord0 = vec2(vtx.attributes[4].x, vtx.attributes[4].y);
    texcoord1 = vec2(vtx.attributes[5].x, vtx.attributes[5].y);

    texcoord0_w = vtx.attributes[4].z;
    view = vec3(vtx.attributes[2].x, vtx.attributes[2].y, vtx.attributes[2].z);

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
    prim_buffer[0].attributes = vec4[6](vs_out_attr0[0], vs_out_attr1[0], vs_out_attr2[0], vs_out_attr3[0], vs_out_attr4[0], vs_out_attr5[0]);
    prim_buffer[1].attributes = vec4[6](vs_out_attr0[1], vs_out_attr1[1], vs_out_attr2[1], vs_out_attr3[1], vs_out_attr4[1], vs_out_attr5[1]);
    prim_buffer[2].attributes = vec4[6](vs_out_attr0[2], vs_out_attr1[2], vs_out_attr2[2], vs_out_attr3[2], vs_out_attr4[2], vs_out_attr5[2]);
    EmitPrim(prim_buffer[0], prim_buffer[1], prim_buffer[2]);
}
// reference: 46A0C2E6B155D5CD, 3B3AE026C742C7D5
// shader: 8B30, 8D40E9596F5E5592

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 2.0, alpha_output_1 * 2.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a) * (const_color[2].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: FD4F2F1F92C02C5E, 8D40E9596F5E5592
// program: AA4DB1C585CA776D, 3B3AE026C742C7D5, 8D40E9596F5E5592
// shader: 8B31, 5907E8A446CC70ED

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
layout(location = 8) in vec4 vs_in_reg8;

 out vec4 vs_out_attr0;
 out vec4 vs_out_attr1;
 out vec4 vs_out_attr2;
 out vec4 vs_out_attr3;
 out vec4 vs_out_attr4;

void main() {
    vs_out_attr0 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr1 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr2 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr3 = vec4(0.0, 0.0, 0.0, 1.0);
    vs_out_attr4 = vec4(0.0, 0.0, 0.0, 1.0);

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

bool sub_7_12();
bool sub_12_21();
bool sub_21_34();
bool sub_34_202();
bool sub_40_140();
bool sub_47_76();
bool sub_58_62();
bool sub_76_135();
bool sub_77_109();
bool sub_88_92();
bool sub_109_134();
bool sub_120_124();
bool sub_140_201();
bool sub_143_153();
bool sub_153_158();
bool sub_159_171();
bool sub_171_196();
bool sub_172_190();
bool sub_190_195();
bool sub_202_219();
bool sub_219_295();
bool sub_258_278();
bool sub_259_264();
bool sub_264_277();
bool sub_268_271();
bool sub_271_276();
bool sub_278_291();
bool sub_279_284();
bool sub_284_290();
bool sub_295_312();
bool sub_301_306();
bool sub_303_304();
bool sub_310_311();
bool sub_312_358();
bool sub_316_357();
bool sub_321_323();
bool sub_323_347();
bool sub_326_331();
bool sub_337_346();
bool sub_341_342();
bool sub_342_345();
bool sub_349_356();
bool sub_358_368();
bool sub_365_366();
bool sub_368_395();
bool sub_370_375();
bool sub_375_394();
bool sub_378_384();
bool sub_384_393();
bool sub_385_389();
bool sub_389_392();
bool sub_395_403();
bool sub_397_398();
bool sub_398_402();
bool sub_399_400();
bool sub_400_401();
bool sub_403_410();
bool sub_410_414();
bool sub_463_4096();

bool exec_shader() {
    sub_463_4096();
    return true;
}

bool sub_7_12() {
    // 7: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 8: dp4
    reg_tmp3.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 9: dp4
    reg_tmp3.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 10: dp4
    reg_tmp3.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 11: mad
    reg_tmp7 = fma_s(reg_tmp1.wwww, reg_tmp3, reg_tmp7);
    return false;
}
bool sub_12_21() {
    // 12: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 13: dp4
    reg_tmp3.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 14: dp4
    reg_tmp3.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 15: dp4
    reg_tmp3.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 16: dp3
    reg_tmp4.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp14.xyz);
    // 17: dp3
    reg_tmp4.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp14.xyz);
    // 18: dp3
    reg_tmp4.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp14.xyz);
    // 19: mad
    reg_tmp7 = fma_s(reg_tmp1.wwww, reg_tmp3, reg_tmp7);
    // 20: mad
    reg_tmp12 = fma_s(reg_tmp1.wwww, reg_tmp4, reg_tmp12);
    return false;
}
bool sub_21_34() {
    // 21: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 22: dp4
    reg_tmp3.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 23: dp4
    reg_tmp3.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 24: dp4
    reg_tmp3.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 25: dp3
    reg_tmp4.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp14.xyz);
    // 26: dp3
    reg_tmp4.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp14.xyz);
    // 27: dp3
    reg_tmp4.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp14.xyz);
    // 28: dp3
    reg_tmp5.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp13.xyz);
    // 29: dp3
    reg_tmp5.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp13.xyz);
    // 30: dp3
    reg_tmp5.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp13.xyz);
    // 31: mad
    reg_tmp7 = fma_s(reg_tmp1.wwww, reg_tmp3, reg_tmp7);
    // 32: mad
    reg_tmp12 = fma_s(reg_tmp1.wwww, reg_tmp4, reg_tmp12);
    // 33: mad
    reg_tmp11 = fma_s(reg_tmp1.wwww, reg_tmp5, reg_tmp11);
    return false;
}
bool sub_34_202() {
    // 34: mul
    reg_tmp15.xyz = (mul_s(uniforms.f[7].xxxx, vs_in_reg0)).xyz;
    // 35: mul
    reg_tmp14.xyz = (mul_s(uniforms.f[7].yyyy, vs_in_reg1)).xyz;
    // 36: mul
    reg_tmp13.xyz = (mul_s(uniforms.f[7].zzzz, vs_in_reg2)).xyz;
    // 37: add
    reg_tmp15.xyz = (uniforms.f[6] + reg_tmp15).xyz;
    // 38: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 39: ifu
    if (uniforms.b[1]) {
        sub_40_140();
    } else {
        sub_140_201();
    }
    // 201: nop
    return false;
}
bool sub_40_140() {
    // 40: mov
    reg_tmp0 = uniforms.f[7];
    // 41: cmp
    conditional_code = notEqual(uniforms.f[93].xx, reg_tmp0.yz);
    // 42: mov
    reg_tmp7 = uniforms.f[93].xxxx;
    // 43: mov
    reg_tmp12 = uniforms.f[93].xxxx;
    // 44: mov
    reg_tmp11 = uniforms.f[93].xxxx;
    // 45: mul
    reg_tmp2 = mul_s(uniforms.f[93].wwww, vs_in_reg7);
    // 46: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_47_76();
    } else {
        sub_76_135();
    }
    // 135: mov
    vs_out_attr2 = -reg_tmp15;
    // 136: dp4
    vs_out_attr0.x = dot_s(uniforms.f[86], reg_tmp15);
    // 137: dp4
    vs_out_attr0.y = dot_s(uniforms.f[87], reg_tmp15);
    // 138: dp4
    vs_out_attr0.z = dot_s(uniforms.f[88], reg_tmp15);
    // 139: dp4
    vs_out_attr0.w = dot_s(uniforms.f[89], reg_tmp15);
    return false;
}
bool sub_47_76() {
    // 47: cmp
    conditional_code = notEqual(uniforms.f[93].xx, vs_in_reg8.zw);
    // 48: mov
    reg_tmp1.xy = (reg_tmp2.xxxx).xy;
    // 49: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.xxxx)).w;
    // 50: call
    {
        sub_12_21();
    }
    // 51: mov
    reg_tmp1.xy = (reg_tmp2.yyyy).xy;
    // 52: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.yyyy)).w;
    // 53: call
    {
        sub_12_21();
    }
    // 54: mov
    reg_tmp1.xy = (reg_tmp2.zzzz).xy;
    // 55: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.zzzz)).w;
    // 56: callc
    if (conditional_code.x) {
        sub_12_21();
    }
    // 57: ifu
    if (uniforms.b[8]) {
        sub_58_62();
    }
    // 62: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 63: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 64: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 65: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 66: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    // 67: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 68: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 69: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 70: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 71: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 72: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 73: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 74: call
    {
        sub_202_219();
    }
    // 75: nop
    return false;
}
bool sub_58_62() {
    // 58: mov
    reg_tmp1.xy = (reg_tmp2.wwww).xy;
    // 59: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.wwww)).w;
    // 60: callc
    if (conditional_code.y) {
        sub_12_21();
    }
    // 61: nop
    return false;
}
bool sub_76_135() {
    // 76: ifc
    if (all(conditional_code)) {
        sub_77_109();
    } else {
        sub_109_134();
    }
    // 134: nop
    return false;
}
bool sub_77_109() {
    // 77: cmp
    conditional_code = notEqual(uniforms.f[93].xx, vs_in_reg8.zw);
    // 78: mov
    reg_tmp1.xy = (reg_tmp2.xxxx).xy;
    // 79: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.xxxx)).w;
    // 80: call
    {
        sub_21_34();
    }
    // 81: mov
    reg_tmp1.xy = (reg_tmp2.yyyy).xy;
    // 82: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.yyyy)).w;
    // 83: call
    {
        sub_21_34();
    }
    // 84: mov
    reg_tmp1.xy = (reg_tmp2.zzzz).xy;
    // 85: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.zzzz)).w;
    // 86: callc
    if (conditional_code.x) {
        sub_21_34();
    }
    // 87: ifu
    if (uniforms.b[8]) {
        sub_88_92();
    }
    // 92: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 93: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 94: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 95: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 96: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    // 97: dp3
    reg_tmp13.x = dot_3(uniforms.f[3].xyz, reg_tmp11.xyz);
    // 98: dp3
    reg_tmp13.y = dot_3(uniforms.f[4].xyz, reg_tmp11.xyz);
    // 99: dp3
    reg_tmp13.z = dot_3(uniforms.f[5].xyz, reg_tmp11.xyz);
    // 100: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 101: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 102: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 103: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 104: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 105: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 106: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 107: call
    {
        sub_219_295();
    }
    // 108: nop
    return false;
}
bool sub_88_92() {
    // 88: mov
    reg_tmp1.xy = (reg_tmp2.wwww).xy;
    // 89: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.wwww)).w;
    // 90: callc
    if (conditional_code.y) {
        sub_21_34();
    }
    // 91: nop
    return false;
}
bool sub_109_134() {
    // 109: cmp
    conditional_code = notEqual(uniforms.f[93].xx, vs_in_reg8.zw);
    // 110: mov
    reg_tmp1.xy = (reg_tmp2.xxxx).xy;
    // 111: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.xxxx)).w;
    // 112: call
    {
        sub_7_12();
    }
    // 113: mov
    reg_tmp1.xy = (reg_tmp2.yyyy).xy;
    // 114: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.yyyy)).w;
    // 115: call
    {
        sub_7_12();
    }
    // 116: mov
    reg_tmp1.xy = (reg_tmp2.zzzz).xy;
    // 117: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.zzzz)).w;
    // 118: callc
    if (conditional_code.x) {
        sub_7_12();
    }
    // 119: ifu
    if (uniforms.b[8]) {
        sub_120_124();
    }
    // 124: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 125: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 126: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 127: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 128: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    // 129: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 130: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 131: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 132: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 133: mov
    vs_out_attr1 = uniforms.f[93].xxxx;
    return false;
}
bool sub_120_124() {
    // 120: mov
    reg_tmp1.xy = (reg_tmp2.wwww).xy;
    // 121: mul
    reg_tmp1.w = (mul_s(uniforms.f[8].wwww, vs_in_reg8.wwww)).w;
    // 122: callc
    if (conditional_code.y) {
        sub_7_12();
    }
    // 123: nop
    return false;
}
bool sub_140_201() {
    // 140: mov
    reg_tmp0 = uniforms.f[7];
    // 141: cmp
    conditional_code = notEqual(uniforms.f[93].xx, reg_tmp0.yz);
    // 142: ifu
    if (uniforms.b[2]) {
        sub_143_153();
    } else {
        sub_153_158();
    }
    // 158: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_159_171();
    } else {
        sub_171_196();
    }
    // 196: mov
    vs_out_attr2 = -reg_tmp15;
    // 197: dp4
    vs_out_attr0.x = dot_s(uniforms.f[86], reg_tmp15);
    // 198: dp4
    vs_out_attr0.y = dot_s(uniforms.f[87], reg_tmp15);
    // 199: dp4
    vs_out_attr0.z = dot_s(uniforms.f[88], reg_tmp15);
    // 200: dp4
    vs_out_attr0.w = dot_s(uniforms.f[89], reg_tmp15);
    return false;
}
bool sub_143_153() {
    // 143: mul
    reg_tmp1.x = (mul_s(uniforms.f[93].wwww, vs_in_reg7.xxxx)).x;
    // 144: mova
    address_registers.x = (ivec2(reg_tmp1.xx)).x;
    // 145: dp4
    reg_tmp7.x = dot_s(uniforms.f[25 + address_registers.x], reg_tmp15);
    // 146: dp4
    reg_tmp7.y = dot_s(uniforms.f[26 + address_registers.x], reg_tmp15);
    // 147: dp4
    reg_tmp7.z = dot_s(uniforms.f[27 + address_registers.x], reg_tmp15);
    // 148: mov
    reg_tmp7.w = (uniforms.f[93].yyyy).w;
    // 149: dp4
    reg_tmp10.x = dot_s(uniforms.f[0], reg_tmp7);
    // 150: dp4
    reg_tmp10.y = dot_s(uniforms.f[1], reg_tmp7);
    // 151: dp4
    reg_tmp10.z = dot_s(uniforms.f[2], reg_tmp7);
    // 152: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    return false;
}
bool sub_153_158() {
    // 153: mova
    address_registers.x = (ivec2(uniforms.f[93].xx)).x;
    // 154: dp4
    reg_tmp10.x = dot_s(uniforms.f[25], reg_tmp15);
    // 155: dp4
    reg_tmp10.y = dot_s(uniforms.f[26], reg_tmp15);
    // 156: dp4
    reg_tmp10.z = dot_s(uniforms.f[27], reg_tmp15);
    // 157: mov
    reg_tmp10.w = (uniforms.f[93].yyyy).w;
    return false;
}
bool sub_159_171() {
    // 159: dp3
    reg_tmp12.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp14.xyz);
    // 160: dp3
    reg_tmp12.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp14.xyz);
    // 161: dp3
    reg_tmp12.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp14.xyz);
    // 162: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 163: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 164: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 165: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 166: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 167: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 168: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 169: call
    {
        sub_202_219();
    }
    // 170: nop
    return false;
}
bool sub_171_196() {
    // 171: ifc
    if (all(conditional_code)) {
        sub_172_190();
    } else {
        sub_190_195();
    }
    // 195: nop
    return false;
}
bool sub_172_190() {
    // 172: dp3
    reg_tmp12.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp14.xyz);
    // 173: dp3
    reg_tmp12.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp14.xyz);
    // 174: dp3
    reg_tmp12.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp14.xyz);
    // 175: dp3
    reg_tmp11.x = dot_3(uniforms.f[25 + address_registers.x].xyz, reg_tmp13.xyz);
    // 176: dp3
    reg_tmp11.y = dot_3(uniforms.f[26 + address_registers.x].xyz, reg_tmp13.xyz);
    // 177: dp3
    reg_tmp11.z = dot_3(uniforms.f[27 + address_registers.x].xyz, reg_tmp13.xyz);
    // 178: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 179: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 180: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 181: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 182: dp3
    reg_tmp14.x = dot_3(uniforms.f[3].xyz, reg_tmp12.xyz);
    // 183: dp3
    reg_tmp14.y = dot_3(uniforms.f[4].xyz, reg_tmp12.xyz);
    // 184: dp3
    reg_tmp14.z = dot_3(uniforms.f[5].xyz, reg_tmp12.xyz);
    // 185: dp3
    reg_tmp13.x = dot_3(uniforms.f[3].xyz, reg_tmp11.xyz);
    // 186: dp3
    reg_tmp13.y = dot_3(uniforms.f[4].xyz, reg_tmp11.xyz);
    // 187: dp3
    reg_tmp13.z = dot_3(uniforms.f[5].xyz, reg_tmp11.xyz);
    // 188: call
    {
        sub_219_295();
    }
    // 189: nop
    return false;
}
bool sub_190_195() {
    // 190: dp4
    reg_tmp15.x = dot_s(uniforms.f[90], reg_tmp10);
    // 191: dp4
    reg_tmp15.y = dot_s(uniforms.f[91], reg_tmp10);
    // 192: dp4
    reg_tmp15.z = dot_s(uniforms.f[92], reg_tmp10);
    // 193: mov
    reg_tmp15.w = (uniforms.f[93].yyyy).w;
    // 194: mov
    vs_out_attr1 = uniforms.f[93].xxxx;
    return false;
}
bool sub_202_219() {
    uint jmp_to = 202u;
    while (true) {
        switch (jmp_to) {
        case 202u: {
            // 202: dp3
            reg_tmp6.x = dot_3(reg_tmp14.xyz, reg_tmp14.xyz);
            // 203: dp3
            reg_tmp7.x = dot_3(reg_tmp12.xyz, reg_tmp12.xyz);
            // 204: rsq
            reg_tmp6.x = rsq_s(reg_tmp6.x);
            // 205: rsq
            reg_tmp7.x = rsq_s(reg_tmp7.x);
            // 206: mul
            reg_tmp14.xyz = (mul_s(reg_tmp14.xyzz, reg_tmp6.xxxx)).xyz;
            // 207: mul
            reg_tmp12.xyz = (mul_s(reg_tmp12.xyzz, reg_tmp7.xxxx)).xyz;
            // 208: mov
            reg_tmp0 = uniforms.f[93].yxxx;
            // 209: jmpu
            if (!uniforms.b[15]) {
                { jmp_to = 218u; break; }
            }
            // 210: add
            reg_tmp4 = uniforms.f[93].yyyy + reg_tmp14.zzzz;
            // 211: mul
            reg_tmp4 = mul_s(uniforms.f[94].zzzz, reg_tmp4);
            // 212: cmp
            conditional_code = greaterThanEqual(uniforms.f[93].xx, reg_tmp4.xx);
            // 213: rsq
            reg_tmp4 = vec4(rsq_s(reg_tmp4.x));
            // 214: mul
            reg_tmp5 = mul_s(uniforms.f[94].zzzz, reg_tmp14);
            // 215: jmpc
            if (conditional_code.x) {
                { jmp_to = 218u; break; }
            }
            // 216: rcp
            reg_tmp0.z = rcp_s(reg_tmp4.x);
            // 217: mul
            reg_tmp0.xy = (mul_s(reg_tmp5, reg_tmp4)).xy;
        }
        case 218u: {
            // 218: mov
            vs_out_attr1 = reg_tmp0;
        }
        default: return false;
        }
    }
    return false;
}
bool sub_219_295() {
    uint jmp_to = 219u;
    while (true) {
        switch (jmp_to) {
        case 219u: {
            // 219: dp3
            reg_tmp6.x = dot_3(reg_tmp14.xyz, reg_tmp14.xyz);
            // 220: dp3
            reg_tmp7.x = dot_3(reg_tmp12.xyz, reg_tmp12.xyz);
            // 221: rsq
            reg_tmp6.x = rsq_s(reg_tmp6.x);
            // 222: rsq
            reg_tmp7.x = rsq_s(reg_tmp7.x);
            // 223: mul
            reg_tmp14.xyz = (mul_s(reg_tmp14.xyzz, reg_tmp6.xxxx)).xyz;
            // 224: mul
            reg_tmp12.xyz = (mul_s(reg_tmp12.xyzz, reg_tmp7.xxxx)).xyz;
            // 225: mul
            reg_tmp13.xyz = (mul_s(reg_tmp13.xyzz, reg_tmp6.xxxx)).xyz;
            // 226: mul
            reg_tmp11.xyz = (mul_s(reg_tmp11.xyzz, reg_tmp7.xxxx)).xyz;
            // 227: mov
            reg_tmp0 = uniforms.f[93].yxxx;
            // 228: jmpu
            if (!uniforms.b[15]) {
                { jmp_to = 294u; break; }
            }
            // 229: mul
            reg_tmp13.xyz = (mul_s(reg_tmp13.xyzz, reg_tmp6.xxxx)).xyz;
            // 230: mul
            reg_tmp11.xyz = (mul_s(reg_tmp11.xyzz, reg_tmp7.xxxx)).xyz;
            // 231: mul
            reg_tmp5 = mul_s(reg_tmp14.yzxx, reg_tmp13.zxyy);
            // 232: mad
            reg_tmp5 = fma_s(-reg_tmp13.yzxx, reg_tmp14.zxyy, reg_tmp5);
            // 233: dp3
            reg_tmp5.w = dot_3(reg_tmp5.xyz, reg_tmp5.xyz);
            // 234: rsq
            reg_tmp5.w = rsq_s(reg_tmp5.w);
            // 235: mul
            reg_tmp5 = mul_s(reg_tmp5, reg_tmp5.wwww);
            // 236: add
            reg_tmp6.w = (reg_tmp14.zzzz + reg_tmp5.yyyy).w;
            // 237: mul
            reg_tmp13 = mul_s(reg_tmp5.yzxx, reg_tmp14.zxyy);
            // 238: mad
            reg_tmp13 = fma_s(-reg_tmp14.yzxx, reg_tmp5.zxyy, reg_tmp13);
            // 239: add
            reg_tmp6.w = (reg_tmp13.xxxx + reg_tmp6).w;
            // 240: mov
            reg_tmp13.w = (reg_tmp5.zzzz).w;
            // 241: mov
            reg_tmp5.z = (reg_tmp13.xxxx).z;
            // 242: add
            reg_tmp6.w = (uniforms.f[93].yyyy + reg_tmp6).w;
            // 243: mov
            reg_tmp14.w = (reg_tmp5.xxxx).w;
            // 244: mov
            reg_tmp5.x = (reg_tmp14.zzzz).x;
            // 245: cmp
            conditional_code = lessThan(uniforms.f[94].yy, reg_tmp6.ww);
            // 246: mov
            reg_tmp6.x = (uniforms.f[93].yyyy).x;
            // 247: mov
            reg_tmp6.y = (-uniforms.f[93].yyyy).y;
            // 248: jmpc
            if (!conditional_code.x) {
                { jmp_to = 256u; break; }
            }
            // 249: add
            reg_tmp7.xz = (reg_tmp13.wwyy + -reg_tmp14.yyww).xz;
            // 250: add
            reg_tmp7.y = (reg_tmp14.xxxx + -reg_tmp13.zzzz).y;
            // 251: mov
            reg_tmp7.w = (reg_tmp6).w;
            // 252: dp4
            reg_tmp6 = vec4(dot_s(reg_tmp7, reg_tmp7));
            // 253: rsq
            reg_tmp6 = vec4(rsq_s(reg_tmp6.x));
            // 254: mul
            reg_tmp0 = mul_s(reg_tmp7, reg_tmp6);
            // 255: jmpu
            if (uniforms.b[0]) {
                { jmp_to = 294u; break; }
            }
        }
        case 256u: {
            // 256: cmp
            conditional_code = greaterThan(reg_tmp5.zy, reg_tmp5.yx);
            // 257: ifc
            if (conditional_code.x) {
                sub_258_278();
            } else {
                sub_278_291();
            }
            // 291: dp4
            reg_tmp6 = vec4(dot_s(reg_tmp8, reg_tmp8));
            // 292: rsq
            reg_tmp6 = vec4(rsq_s(reg_tmp6.x));
            // 293: mul
            reg_tmp0 = mul_s(reg_tmp8, reg_tmp6);
        }
        case 294u: {
            // 294: mov
            vs_out_attr1 = reg_tmp0;
        }
        default: return false;
        }
    }
    return false;
}
bool sub_258_278() {
    // 258: ifc
    if (conditional_code.y) {
        sub_259_264();
    } else {
        sub_264_277();
    }
    // 277: mov
    reg_tmp8.w = (-reg_tmp8).w;
    return false;
}
bool sub_259_264() {
    // 259: mul
    reg_tmp8 = mul_s(reg_tmp13.yyzw, reg_tmp6.xxxy);
    // 260: add
    reg_tmp8.x = (uniforms.f[93].yyyy + -reg_tmp5.yyyy).x;
    // 261: add
    reg_tmp9 = reg_tmp5.zzzz + -reg_tmp5.xxxx;
    // 262: add
    reg_tmp8.yzw = (reg_tmp8 + reg_tmp14.wwxy).yzw;
    // 263: add
    reg_tmp8.x = (reg_tmp9 + reg_tmp8).x;
    return false;
}
bool sub_264_277() {
    // 264: cmp
    conditional_code = greaterThan(reg_tmp5.zz, reg_tmp5.xx);
    // 265: mul
    reg_tmp8 = mul_s(reg_tmp13.yyzw, reg_tmp6.xxxy);
    // 266: add
    reg_tmp8.x = (uniforms.f[93].yyyy + -reg_tmp5.yyyy).x;
    // 267: ifc
    if (conditional_code.x) {
        sub_268_271();
    } else {
        sub_271_276();
    }
    // 276: nop
    return false;
}
bool sub_268_271() {
    // 268: add
    reg_tmp9 = reg_tmp5.zzzz + -reg_tmp5.xxxx;
    // 269: add
    reg_tmp8.yzw = (reg_tmp8 + reg_tmp14.wwxy).yzw;
    // 270: add
    reg_tmp8.x = (reg_tmp9 + reg_tmp8).x;
    return false;
}
bool sub_271_276() {
    // 271: mul
    reg_tmp8 = mul_s(reg_tmp13.zwwy, reg_tmp6.xxxy);
    // 272: add
    reg_tmp8.z = (uniforms.f[93].yyyy + -reg_tmp5.zzzz).z;
    // 273: add
    reg_tmp9 = reg_tmp5.xxxx + -reg_tmp5.yyyy;
    // 274: add
    reg_tmp8.xyw = (reg_tmp8 + reg_tmp14.xyyw).xyw;
    // 275: add
    reg_tmp8.z = (reg_tmp9 + reg_tmp8).z;
    return false;
}
bool sub_278_291() {
    // 278: ifc
    if (conditional_code.y) {
        sub_279_284();
    } else {
        sub_284_290();
    }
    // 290: nop
    return false;
}
bool sub_279_284() {
    // 279: mul
    reg_tmp8 = mul_s(reg_tmp13.yywz, reg_tmp6.xxxy);
    // 280: add
    reg_tmp8.y = (uniforms.f[93].yyyy + -reg_tmp5.zzzz).y;
    // 281: add
    reg_tmp9 = reg_tmp5.yyyy + -reg_tmp5.xxxx;
    // 282: add
    reg_tmp8.xzw = (reg_tmp8 + reg_tmp14.wwyx).xzw;
    // 283: add
    reg_tmp8.y = (reg_tmp9 + reg_tmp8).y;
    return false;
}
bool sub_284_290() {
    // 284: mul
    reg_tmp8 = mul_s(reg_tmp13.zwwy, reg_tmp6.xxxy);
    // 285: add
    reg_tmp8.z = (uniforms.f[93].yyyy + -reg_tmp5.zzzz).z;
    // 286: add
    reg_tmp9 = reg_tmp5.xxxx + -reg_tmp5.yyyy;
    // 287: add
    reg_tmp8.xyw = (reg_tmp8 + reg_tmp14.xyyw).xyw;
    // 288: add
    reg_tmp8.z = (reg_tmp9 + reg_tmp8).z;
    // 289: mov
    reg_tmp8.w = (-reg_tmp8).w;
    return false;
}
bool sub_295_312() {
    // 295: mov
    reg_tmp8.xy = (uniforms.f[93].xxxx).xy;
    // 296: mov
    reg_tmp0.y = (uniforms.f[7].wwww).y;
    // 297: cmp
    conditional_code = notEqual(uniforms.f[93].xx, reg_tmp0.xy);
    // 298: mov
    reg_tmp9.xyz = (uniforms.f[93].xxxx).xyz;
    // 299: mov
    reg_tmp9.w = (uniforms.f[21].wwww).w;
    // 300: ifc
    if (conditional_code.y) {
        sub_301_306();
    }
    // 306: callu
    if (uniforms.b[12]) {
        sub_312_358();
    }
    // 307: callu
    if (uniforms.b[5]) {
        sub_358_368();
    }
    // 308: cmp
    conditional_code = equal(uniforms.f[93].xx, reg_tmp8.xy);
    // 309: ifc
    if (all(conditional_code)) {
        sub_310_311();
    }
    // 311: max
    vs_out_attr3 = max(uniforms.f[93].xxxx, reg_tmp9);
    return false;
}
bool sub_301_306() {
    // 301: mul
    reg_tmp0 = mul_s(uniforms.f[7].wwww, vs_in_reg3);
    // 302: ifu
    if (uniforms.b[7]) {
        sub_303_304();
    }
    // 304: mul
    reg_tmp9.xyz = (mul_s(uniforms.f[20].wwww, reg_tmp0.xyzz)).xyz;
    // 305: mov
    reg_tmp8.x = (uniforms.f[93].yyyy).x;
    return false;
}
bool sub_303_304() {
    // 303: mul
    reg_tmp9.w = (mul_s(reg_tmp9.wwww, reg_tmp0.wwww)).w;
    return false;
}
bool sub_310_311() {
    // 310: mov
    reg_tmp9 = uniforms.f[21];
    return false;
}
bool sub_312_358() {
    // 312: mov
    reg_tmp1 = uniforms.f[20];
    // 313: mov
    reg_tmp2 = uniforms.f[21];
    // 314: mov
    reg_tmp3 = uniforms.f[93].xxxx;
    // 315: loop
    address_registers.z = int(uniforms.i[0].y);
    for (uint loop315 = 0u; loop315 <= uniforms.i[0].x; address_registers.z += int(uniforms.i[0].z), ++loop315) {
        sub_316_357();
    }
    // 357: mov
    reg_tmp8.x = (uniforms.f[93].yyyy).x;
    return false;
}
bool sub_316_357() {
    // 316: mova
    address_registers.x = (ivec2(reg_tmp3.xy)).x;
    // 317: mov
    reg_tmp4.x = (uniforms.f[81 + address_registers.x].wwww).x;
    // 318: mov
    reg_tmp4.y = (uniforms.f[83 + address_registers.x].wwww).y;
    // 319: cmp
    conditional_code = equal(uniforms.f[93].xy, reg_tmp4.xy);
    // 320: ifc
    if (conditional_code.x) {
        sub_321_323();
    } else {
        sub_323_347();
    }
    // 347: cmp
    conditional_code.x = uniforms.f[93].xxxx.x == reg_tmp6.xyyy.x;
    conditional_code.y = uniforms.f[93].xxxx.y < reg_tmp6.xyyy.y;
    // 348: ifc
    if (conditional_code.y) {
        sub_349_356();
    }
    // 356: add
    reg_tmp3 = -uniforms.f[95].wwww + reg_tmp3;
    return false;
}
bool sub_321_323() {
    // 321: dp3
    reg_tmp6.x = dot_3(uniforms.f[81 + address_registers.x].xyz, reg_tmp14.xyz);
    // 322: mov
    reg_tmp6.y = (uniforms.f[93].yyyy).y;
    return false;
}
bool sub_323_347() {
    // 323: add
    reg_tmp4 = uniforms.f[81 + address_registers.x] + -reg_tmp15;
    // 324: mov
    reg_tmp6.y = (uniforms.f[93].yyyy).y;
    // 325: ifc
    if (conditional_code.y) {
        sub_326_331();
    }
    // 331: mov
    reg_tmp5 = uniforms.f[82 + address_registers.x];
    // 332: cmp
    conditional_code = equal(uniforms.f[93].yy, reg_tmp5.ww);
    // 333: dp3
    reg_tmp4.w = dot_3(reg_tmp4.xyz, reg_tmp4.xyz);
    // 334: rsq
    reg_tmp4.w = rsq_s(reg_tmp4.w);
    // 335: mul
    reg_tmp4 = mul_s(reg_tmp4, reg_tmp4.wwww);
    // 336: ifc
    if (conditional_code.x) {
        sub_337_346();
    }
    // 346: dp3
    reg_tmp6.x = dot_3(reg_tmp14.xyz, reg_tmp4.xyz);
    return false;
}
bool sub_326_331() {
    // 326: mov
    reg_tmp5.x = (uniforms.f[93].yyyy).x;
    // 327: dp3
    reg_tmp5.z = dot_3(reg_tmp4.xyz, reg_tmp4.xyz);
    // 328: mul
    reg_tmp5.y = (mul_s(reg_tmp5.zzzz, reg_tmp5.zzzz)).y;
    // 329: dp3
    reg_tmp6.y = dot_3(uniforms.f[83 + address_registers.x].xyz, reg_tmp5.xyz);
    // 330: rcp
    reg_tmp6.y = rcp_s(reg_tmp6.y);
    return false;
}
bool sub_337_346() {
    // 337: dp3
    reg_tmp5.x = dot_3(uniforms.f[82 + address_registers.x].xyz, -reg_tmp4.xyz);
    // 338: slti
    reg_tmp5.y = (vec4(lessThan(reg_tmp5.xxxx, uniforms.f[84 + address_registers.x].yyyy))).y;
    // 339: cmp
    conditional_code = equal(uniforms.f[93].yy, reg_tmp5.xy);
    // 340: ifc
    if (conditional_code.y) {
        sub_341_342();
    } else {
        sub_342_345();
    }
    // 345: mul
    reg_tmp6.y = (mul_s(reg_tmp6.yyyy, reg_tmp5.xxxx)).y;
    return false;
}
bool sub_341_342() {
    // 341: mov
    reg_tmp5.x = (uniforms.f[93].xxxx).x;
    return false;
}
bool sub_342_345() {
    // 342: log
    reg_tmp5.y = log2(reg_tmp5.x);
    // 343: mul
    reg_tmp5.y = (mul_s(uniforms.f[84 + address_registers.x].xxxx, reg_tmp5.yyyy)).y;
    // 344: exp
    reg_tmp5.x = exp2(reg_tmp5.y);
    return false;
}
bool sub_349_356() {
    // 349: max
    reg_tmp6.x = (max(uniforms.f[93].xxxx, reg_tmp6.xxxx)).x;
    // 350: mad
    reg_tmp9.xyz = (fma_s(reg_tmp1.xyzz, uniforms.f[79 + address_registers.x].xyzz, reg_tmp9.xyzz)).xyz;
    // 351: mul
    reg_tmp4 = mul_s(uniforms.f[80 + address_registers.x], reg_tmp2);
    // 352: mul
    reg_tmp5.xyz = (mul_s(reg_tmp6.xxxx, reg_tmp4.xyzz)).xyz;
    // 353: mul
    reg_tmp5.xyz = (mul_s(reg_tmp6.yyyy, reg_tmp5.xyzz)).xyz;
    // 354: add
    reg_tmp9.xyz = (reg_tmp9.xyzz + reg_tmp5.xyzz).xyz;
    // 355: add
    reg_tmp9.w = (reg_tmp9.wwww + reg_tmp4.wwww).w;
    return false;
}
bool sub_358_368() {
    // 358: dp3
    reg_tmp1 = vec4(dot_3(uniforms.f[24].xyz, reg_tmp14.xyz));
    // 359: mov
    reg_tmp2 = uniforms.f[24].wwww;
    // 360: mad
    reg_tmp1 = fma_s(reg_tmp1, reg_tmp2, reg_tmp2);
    // 361: mov
    reg_tmp3 = uniforms.f[22];
    // 362: add
    reg_tmp2 = uniforms.f[23] + -reg_tmp3;
    // 363: mad
    reg_tmp4 = fma_s(reg_tmp2, reg_tmp1, reg_tmp3);
    // 364: ifu
    if (uniforms.b[6]) {
        sub_365_366();
    }
    // 366: mad
    reg_tmp9.xyz = (fma_s(reg_tmp4, uniforms.f[21], reg_tmp9)).xyz;
    // 367: mov
    reg_tmp8.x = (uniforms.f[93].yyyy).x;
    return false;
}
bool sub_365_366() {
    // 365: mul
    reg_tmp4 = mul_s(reg_tmp4, reg_tmp9.wwww);
    return false;
}
bool sub_368_395() {
    // 368: mov
    reg_tmp0.xy = (uniforms.f[10].xxxx).xy;
    // 369: ifu
    if (uniforms.b[9]) {
        sub_370_375();
    } else {
        sub_375_394();
    }
    // 394: nop
    return false;
}
bool sub_370_375() {
    // 370: call
    {
        sub_395_403();
    }
    // 371: dp4
    reg_tmp3.x = dot_s(uniforms.f[11].xywz, reg_tmp6);
    // 372: dp4
    reg_tmp3.y = dot_s(uniforms.f[12].xywz, reg_tmp6);
    // 373: mov
    reg_tmp3.zw = (uniforms.f[93].xxxx).zw;
    // 374: mov
    vs_out_attr4 = reg_tmp3;
    return false;
}
bool sub_375_394() {
    // 375: cmp
    conditional_code = equal(uniforms.f[95].xy, reg_tmp0.xy);
    // 376: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    // 377: ifc
    if (all(not(conditional_code))) {
        sub_378_384();
    } else {
        sub_384_393();
    }
    // 393: mov
    vs_out_attr4 = reg_tmp3;
    return false;
}
bool sub_378_384() {
    // 378: mov
    reg_tmp6 = reg_tmp10;
    // 379: dp4
    reg_tmp3.x = dot_s(uniforms.f[11], reg_tmp6);
    // 380: dp4
    reg_tmp3.y = dot_s(uniforms.f[12], reg_tmp6);
    // 381: dp4
    reg_tmp3.z = dot_s(uniforms.f[13], reg_tmp6);
    // 382: mul
    reg_tmp0.xy = (mul_s(uniforms.f[19].xyyy, reg_tmp3.zzzz)).xy;
    // 383: add
    reg_tmp3.xy = (reg_tmp3.xyyy + reg_tmp0.xyyy).xy;
    return false;
}
bool sub_384_393() {
    // 384: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_385_389();
    } else {
        sub_389_392();
    }
    // 392: nop
    return false;
}
bool sub_385_389() {
    // 385: call
    {
        sub_403_410();
    }
    // 386: dp3
    reg_tmp3.x = dot_3(uniforms.f[11].xyz, reg_tmp6.xyz);
    // 387: dp3
    reg_tmp3.y = dot_3(uniforms.f[12].xyz, reg_tmp6.xyz);
    // 388: dp3
    reg_tmp3.z = dot_3(uniforms.f[13].xyz, reg_tmp6.xyz);
    return false;
}
bool sub_389_392() {
    // 389: call
    {
        sub_410_414();
    }
    // 390: dp4
    reg_tmp3.x = dot_s(uniforms.f[11], reg_tmp6);
    // 391: dp4
    reg_tmp3.y = dot_s(uniforms.f[12], reg_tmp6);
    return false;
}
bool sub_395_403() {
    // 395: cmp
    conditional_code = equal(uniforms.f[93].yz, reg_tmp0.xy);
    // 396: ifc
    if (all(not(conditional_code))) {
        sub_397_398();
    } else {
        sub_398_402();
    }
    // 402: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    return false;
}
bool sub_397_398() {
    // 397: mul
    reg_tmp6.xy = (mul_s(uniforms.f[8].xxxx, vs_in_reg4.xyyy)).xy;
    return false;
}
bool sub_398_402() {
    // 398: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_399_400();
    } else {
        sub_400_401();
    }
    // 401: nop
    return false;
}
bool sub_399_400() {
    // 399: mul
    reg_tmp6.xy = (mul_s(uniforms.f[8].yyyy, vs_in_reg5.xyyy)).xy;
    return false;
}
bool sub_400_401() {
    // 400: mul
    reg_tmp6.xy = (mul_s(uniforms.f[8].zzzz, vs_in_reg6.xyyy)).xy;
    return false;
}
bool sub_403_410() {
    // 403: mov
    reg_tmp2 = -reg_tmp15;
    // 404: dp3
    reg_tmp2.w = dot_3(reg_tmp2.xyz, reg_tmp2.xyz);
    // 405: rsq
    reg_tmp2.w = rsq_s(reg_tmp2.w);
    // 406: mul
    reg_tmp2 = mul_s(reg_tmp2, reg_tmp2.wwww);
    // 407: dp3
    reg_tmp1 = vec4(dot_3(reg_tmp2.xyz, reg_tmp14.xyz));
    // 408: add
    reg_tmp1 = reg_tmp1 + reg_tmp1;
    // 409: mad
    reg_tmp6 = fma_s(reg_tmp1, reg_tmp14, -reg_tmp2);
    return false;
}
bool sub_410_414() {
    // 410: mov
    reg_tmp1.xy = (uniforms.f[94].zzzz).xy;
    // 411: mov
    reg_tmp1.zw = (uniforms.f[93].xxxx).zw;
    // 412: mad
    reg_tmp6 = fma_s(reg_tmp14, reg_tmp1, reg_tmp1);
    // 413: mov
    reg_tmp6.zw = (uniforms.f[93].xxyy).zw;
    return false;
}
bool sub_463_4096() {
    // 463: call
    {
        sub_34_202();
    }
    // 464: call
    {
        sub_295_312();
    }
    // 465: call
    {
        sub_368_395();
    }
    // 466: end
    return true;
}
// reference: 75ECA952DE1722D9, 5907E8A446CC70ED
// shader: 8DD9, 6CF3F3B70E23AA85

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

struct Vertex {
    vec4 attributes[5];
};

vec4 GetVertexQuaternion(Vertex vtx) {
    return vec4(vtx.attributes[1].x, vtx.attributes[1].y, vtx.attributes[1].z, vtx.attributes[1].w);
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

    vec4 vtx_color = vec4(vtx.attributes[3].x, vtx.attributes[3].y, vtx.attributes[3].z, vtx.attributes[3].w);
    primary_color = min(abs(vtx_color), vec4(1.0));

    texcoord0 = vec2(vtx.attributes[4].x, vtx.attributes[4].y);
    texcoord1 = vec2(0.0, 0.0);

    texcoord0_w = vtx.attributes[4].z;
    view = vec3(vtx.attributes[2].x, vtx.attributes[2].y, vtx.attributes[2].z);

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
    prim_buffer[0].attributes = vec4[5](vs_out_attr0[0], vs_out_attr1[0], vs_out_attr2[0], vs_out_attr3[0], vs_out_attr4[0]);
    prim_buffer[1].attributes = vec4[5](vs_out_attr0[1], vs_out_attr1[1], vs_out_attr2[1], vs_out_attr3[1], vs_out_attr4[1]);
    prim_buffer[2].attributes = vec4[5](vs_out_attr0[2], vs_out_attr1[2], vs_out_attr2[2], vs_out_attr3[2], vs_out_attr4[2]);
    EmitPrim(prim_buffer[0], prim_buffer[1], prim_buffer[2]);
}
// reference: CD8210802464D9AE, 6CF3F3B70E23AA85
// shader: 8B30, 92D9164AD7AE9B51

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
light_vector = normalize(light_src[1].position);
spot_dir = light_src[1].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[1].diffuse * dot_product) + light_src[1].ambient) * 1.0;
specular_sum.rgb += ((light_src[1].specular_0) + (light_src[1].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((primary_fragment_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0 * 2.0, alpha_output_0 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (texcolor1.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 2.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a) * (const_color[2].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 18396806D04BD5DA, 92D9164AD7AE9B51
// program: 5907E8A446CC70ED, 6CF3F3B70E23AA85, 92D9164AD7AE9B51
// shader: 8B30, A6757B7EA1F51FBC

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
light_vector = normalize(light_src[1].position);
spot_dir = light_src[1].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[1].diffuse * dot_product) + light_src[1].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[1].specular_0) + (light_src[1].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((primary_fragment_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0 * 2.0, alpha_output_0 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((secondary_fragment_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a) * (const_color[2].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D435897E52671F36, A6757B7EA1F51FBC
// program: 5907E8A446CC70ED, 6CF3F3B70E23AA85, A6757B7EA1F51FBC
// reference: BBAFB9E8DB813A2C, 6C1B11D5F726E48B
// shader: 8B30, E9FCADE9FE2BC62B

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) - (const_color[4].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 3073DC10C38C0186, E9FCADE9FE2BC62B
// program: 6C1B11D5F726E48B, 51B75DB531F38248, E9FCADE9FE2BC62B
// reference: BBAFB9E83D919E1A, 6C1B11D5F726E48B
// shader: 8B30, D9DC917C58DD7A72

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((texcolor1.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((texcolor2.rgb) * (const_color[5].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: DA4FE426B55E808A, D9DC917C58DD7A72
// program: 6C1B11D5F726E48B, 51B75DB531F38248, D9DC917C58DD7A72
// reference: 682C7E11E45A9DA8, 6C1B11D5F726E48B
// shader: 8B30, FFBC53F5CF933784

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((texcolor0.rrr), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: DD917E430C82CF6C, FFBC53F5CF933784
// program: 6C1B11D5F726E48B, 51B75DB531F38248, FFBC53F5CF933784
// reference: 682C7E11E6283F5D, 6C1B11D5F726E48B
// shader: 8B30, 1ECDAEBA5741C80C

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb) - (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) - (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((texcolor0.rgb) - (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3 * 4.0, alpha_output_3 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4 * 4.0, alpha_output_4 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5 * 4.0, alpha_output_5 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 491EFF3367F43043, 1ECDAEBA5741C80C
// program: 6C1B11D5F726E48B, 51B75DB531F38248, 1ECDAEBA5741C80C
// shader: 8B30, A738F61582C2C4C0

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((texcolor1.g) * (const_color[5].g), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: EB53ED688F885E63, A738F61582C2C4C0
// program: 6C1B11D5F726E48B, 51B75DB531F38248, A738F61582C2C4C0
// reference: 5978E2364A4476CD, 26E3A1642C0501CC
// reference: 7E3D2632195F1F52, 4940142D60DA9543
// reference: ADBEE1CBC2E6BE15, 4940142D60DA9543
// shader: 8B30, 31B92870456C17CD

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 2EA60C872C058884, 31B92870456C17CD
// program: 4940142D60DA9543, 5D764F9A6220D694, 31B92870456C17CD
// shader: 8B30, E346727454279D2C

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (last_tex_env_out.rgb) + (combiner_buffer.rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (last_tex_env_out.a) + (combiner_buffer.a) * (1.0 - (last_tex_env_out.a)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: F4CD308467044238, E346727454279D2C
// program: 4940142D60DA9543, 5D764F9A6220D694, E346727454279D2C
// shader: 8B30, 18D97A2FEC6805AE

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].rgb) * (vec3(1.0) - texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((const_color[3].a) * (1.0 - texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (texcolor0.a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 2EA60C870BED9AC0, 18D97A2FEC6805AE
// program: 4940142D60DA9543, 5D764F9A6220D694, 18D97A2FEC6805AE
// shader: 8B30, 06457743CF1202CA

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: E13EE8788A128C7A, 06457743CF1202CA
// program: 4940142D60DA9543, 5D764F9A6220D694, 06457743CF1202CA
// shader: 8B30, 18E463F0F73E7B03

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 76052CFA1519A68B, 18E463F0F73E7B03
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 18E463F0F73E7B03
// shader: 8B30, BAF58D856F87E9A5

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (texcolor1.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 76052CFA4E0243E2, BAF58D856F87E9A5
// program: 2B811601C66B2B58, AD7922A63ED54CA7, BAF58D856F87E9A5
// shader: 8B30, A1FAD8DA9AF1E37E

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (texcolor1.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (textureProj(tex0, vec3(texcoord0, texcoord0_w)).a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (textureProj(tex0, vec3(texcoord0, texcoord0_w)).rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 1258C3AD0D4BC0AC, A1FAD8DA9AF1E37E
// program: 2B811601C66B2B58, AD7922A63ED54CA7, A1FAD8DA9AF1E37E
// shader: 8B30, F18899C203530515

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor1.rgb) * (texcolor2.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (textureProj(tex0, vec3(texcoord0, texcoord0_w)).a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (textureProj(tex0, vec3(texcoord0, texcoord0_w)).rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 1258C3AD4EDDEFDD, F18899C203530515
// program: 2B811601C66B2B58, AD7922A63ED54CA7, F18899C203530515
// reference: F0148B9DA1B4DD57, 2B811601C66B2B58
// shader: 8B30, 407D0CA3732A5C71

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 76052CFAF9AE4D88, 407D0CA3732A5C71
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 407D0CA3732A5C71
// reference: 2584B8EB1519A68B, B335C72627F48034
// program: 2B811601C66B2B58, AD7922A63ED54CA7, B335C72627F48034
// reference: 8CD3DE23C79F66CB, AA4DB1C585CA776D
// shader: 8B30, F15F108B3F8D9446

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 2.0, alpha_output_1 * 2.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a) * (const_color[2].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: AECEBB0E92C02C5E, F15F108B3F8D9446
// program: AA4DB1C585CA776D, 3B3AE026C742C7D5, F15F108B3F8D9446
// reference: 5F5019DAF16DF638, AA4DB1C585CA776D
// shader: 8B30, 12232DB7D4B285AC

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) + (texcolor1.rgb) - vec3(0.5), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (const_color[1].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 982ED8E1477923FA, 12232DB7D4B285AC
// program: AA4DB1C585CA776D, 3B3AE026C742C7D5, 12232DB7D4B285AC
// shader: 8B30, C2585E6F442B04B0

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
light_vector = normalize(light_src[1].position);
spot_dir = light_src[1].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[1].diffuse * dot_product) + light_src[1].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[1].specular_0) + (light_src[1].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor2.rgb) * (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (textureProj(tex0, vec3(texcoord0, texcoord0_w)).a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((texcolor1.rgb) * (texcolor2.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (textureProj(tex0, vec3(texcoord0, texcoord0_w)).rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 8FF4793F86943548, C2585E6F442B04B0
// program: 2B811601C66B2B58, AD7922A63ED54CA7, C2585E6F442B04B0
// reference: F0148B9D97464DA4, 2B811601C66B2B58
// shader: 8B30, 2029A5C67F71F751

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
light_vector = normalize(light_src[1].position);
spot_dir = light_src[1].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[1].diffuse * dot_product) + light_src[1].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[1].specular_0) + (light_src[1].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 79E59BBBE8844444, 2029A5C67F71F751
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 2029A5C67F71F751
// shader: 8B30, D0BDE03EBF5BA3E5

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
light_vector = normalize(light_src[1].position);
spot_dir = light_src[1].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[1].diffuse * dot_product) + light_src[1].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(normal, normalize(half_vector)), 0.0))) * light_src[1].specular_0) + (light_src[1].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor2.rgb) * (secondary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (textureProj(tex0, vec3(texcoord0, texcoord0_w)).a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((texcolor1.rgb) * (texcolor2.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((combiner_buffer.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (textureProj(tex0, vec3(texcoord0, texcoord0_w)).rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 8FF4793F31F0E31C, D0BDE03EBF5BA3E5
// program: 2B811601C66B2B58, AD7922A63ED54CA7, D0BDE03EBF5BA3E5
// shader: 8B30, 0AC7056E910CEAF2

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: A8B476E56D69F673, 0AC7056E910CEAF2
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 0AC7056E910CEAF2
// shader: 8B30, F910EBE70F392A7E

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: A8B476E59B2BF867, F910EBE70F392A7E
// program: 2B811601C66B2B58, AD7922A63ED54CA7, F910EBE70F392A7E
// shader: 8B31, B3F49365AA026EBB

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
layout(location = 3) in vec4 vs_in_reg3;

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

bool exec_shader() {
    sub_0_4096();
    return true;
}

bool sub_0_4096() {
    // 0: mul
    reg_tmp12.xyz = (mul_s(uniforms.f[10].xyzz, vs_in_reg0.xyzz)).xyz;
    // 1: mov
    reg_tmp12.w = (uniforms.f[93].yyyy).w;
    // 2: dp4
    reg_tmp13.x = dot_s(uniforms.f[7], reg_tmp12);
    // 3: dp4
    reg_tmp13.y = dot_s(uniforms.f[8], reg_tmp12);
    // 4: dp4
    reg_tmp13.z = dot_s(uniforms.f[9], reg_tmp12);
    // 5: mov
    reg_tmp13.w = (uniforms.f[93].yyyy).w;
    // 6: dp4
    reg_tmp14.x = dot_s(uniforms.f[4], reg_tmp13);
    // 7: dp4
    reg_tmp14.y = dot_s(uniforms.f[5], reg_tmp13);
    // 8: dp4
    reg_tmp14.z = dot_s(uniforms.f[6], reg_tmp13);
    // 9: mov
    reg_tmp14.w = (uniforms.f[93].yyyy).w;
    // 10: dp4
    vs_out_attr0.x = dot_s(uniforms.f[0], reg_tmp14);
    // 11: dp4
    vs_out_attr0.y = dot_s(uniforms.f[1], reg_tmp14);
    // 12: mov
    vs_out_attr1 = uniforms.f[11];
    // 13: mov
    vs_out_attr2 = vs_in_reg3.xyxy;
    // 14: dp4
    vs_out_attr0.z = dot_s(uniforms.f[2], reg_tmp14);
    // 15: dp4
    vs_out_attr0.w = dot_s(uniforms.f[3], reg_tmp14);
    // 16: end
    return true;
}
// reference: 14F6A29E53F916D0, B3F49365AA026EBB
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
// reference: 2584B8EBD672CA48, B335C72627F48034
// program: B3F49365AA026EBB, 4E5317772B5CE683, B335C72627F48034
// shader: 8B30, 5FE010D4035294ED

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (last_tex_env_out.rgb) + (combiner_buffer.rgb) * (vec3(1.0) - (last_tex_env_out.rgb)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a) * (last_tex_env_out.a) + (combiner_buffer.a) * (1.0 - (last_tex_env_out.a)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: EE08A015136D57DA, 5FE010D4035294ED
// program: 4940142D60DA9543, 5D764F9A6220D694, 5FE010D4035294ED
// shader: 8B30, AD033AC2B720157B

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((vec3(1.0) - texcolor0.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((texcolor0.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - texcolor0.a) * (const_color[4].a) + (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((rounded_primary_color.rgb) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: FBFB78E9FE7B9998, AD033AC2B720157B
// program: 4940142D60DA9543, 5D764F9A6220D694, AD033AC2B720157B
// shader: 8B30, 69CDF65BF498A95B

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));

vec4 diffuse_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec4 specular_sum = vec4(0.0, 0.0, 0.0, 1.0);
vec3 light_vector = vec3(0.0);
vec3 refl_value = vec3(0.0);
vec3 spot_dir = vec3(0.0);
vec3 half_vector = vec3(0.0);
float dot_product = 0.0;
float clamp_highlights = 1.0;
float geo_factor = 1.0;
vec3 surface_normal = vec3(0.0, 0.0, 1.0);
vec3 surface_tangent = vec3(1.0, 0.0, 0.0);
vec4 normalized_normquat = normalize(normquat);
vec3 normal = quaternion_rotate(normalized_normquat, surface_normal);
vec3 tangent = quaternion_rotate(normalized_normquat, surface_tangent);
vec4 shadow = vec4(1.0);
light_vector = normalize(light_src[0].position);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
light_vector = normalize(light_src[1].position);
spot_dir = light_src[1].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[1].diffuse * dot_product) + light_src[1].ambient) * 1.0;
specular_sum.rgb += ((light_src[1].specular_0) + (light_src[1].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((primary_fragment_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

float fog_index = depth * 128.0;
float fog_i = clamp(floor(fog_index), 0.0, 127.0);
float fog_f = fog_index - fog_i;
vec2 fog_lut_entry = texelFetch(texture_buffer_lut_lf, int(fog_i) + fog_lut_offset).rg;
float fog_factor = fog_lut_entry.r + fog_lut_entry.g * fog_f;
fog_factor = clamp(fog_factor, 0.0, 1.0);
last_tex_env_out.rgb = mix(fog_color.rgb, last_tex_env_out.rgb, fog_factor);
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 35602334CFB85D35, 69CDF65BF498A95B
// program: 2B811601C66B2B58, AD7922A63ED54CA7, 69CDF65BF498A95B
// reference: A8B476E581DE1D70, F910EBE70F392A7E
// shader: 8B30, D0E6A641340115E3

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 2584B8EBF9AE4D88, D0E6A641340115E3
// program: 2B811601C66B2B58, AD7922A63ED54CA7, D0E6A641340115E3
// shader: 8B30, E144DAB8A8F9CE6B

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
float z_over_w = 2.0 * gl_FragCoord.z - 1.0;
float depth = z_over_w * depth_scale + depth_offset;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) - (const_color[4].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4 * 2.0, alpha_output_4 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 3073DC1053AAD437, E144DAB8A8F9CE6B
// program: 6C1B11D5F726E48B, 51B75DB531F38248, E144DAB8A8F9CE6B
