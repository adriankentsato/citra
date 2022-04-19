// shader: 8B31, ABE423D42131D4F5

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_8_26();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();
bool sub_143_144();
bool sub_145_181();
bool sub_147_157();
bool sub_159_180();
bool sub_160_162();
bool sub_163_171();
bool sub_173_179();
bool sub_181_182();
bool sub_183_189();
bool sub_186_187();
bool sub_187_188();
bool sub_189_190();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_8_26() {
    // 8: add
    reg_tmp0.xyz = (reg_tmp2.xyzz + -reg_tmp8.xyzz).xyz;
    // 9: dp3
    reg_tmp0.w = dot(vec3(reg_tmp0.xyzz), vec3(reg_tmp0.xyzz));
    // 10: rsq
    reg_tmp6.xyz = vec3(rsq_safe(reg_tmp0.wwww.x));
    // 11: mul
    reg_tmp0.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp6.xxxx)).xyz;
    // 12: rcp
    reg_tmp0.w = rcp_safe(reg_tmp6.xxxx.x);
    // 13: dp3
    reg_tmp1.x = dot(vec3(reg_tmp4), vec3(reg_tmp0.xyzz));
    // 14: max
    reg_tmp6.x = (max(uniforms.f[17].xxxy, reg_tmp1.xxxx)).x;
    // 15: min
    reg_tmp1.x = (min(uniforms.f[17].yyyy, reg_tmp6.xxxx)).x;
    // 16: add
    reg_tmp6.x = (reg_tmp0.wwww + -reg_tmp3.xxxx).x;
    // 17: add
    reg_tmp6.z = (reg_tmp3.yyyy + -reg_tmp3.xxxx).z;
    // 18: rcp
    reg_tmp6.y = rcp_safe(reg_tmp6.zzzz.x);
    // 19: mul
    reg_tmp6.z = (mul_safe(reg_tmp6.xxxx, reg_tmp6.yyyy)).z;
    // 20: min
    reg_tmp6.x = (min(uniforms.f[17].yyyy, reg_tmp6.zzzz)).x;
    // 21: max
    reg_tmp6.y = (max(uniforms.f[17].xxxx, reg_tmp6.xxxx)).y;
    // 22: add
    reg_tmp6.x = (uniforms.f[17].yyyy + -reg_tmp6.yyyy).x;
    // 23: mul
    reg_tmp1.x = (mul_safe(reg_tmp1.xxxx, reg_tmp6.xxxx)).x;
    // 24: mul
    reg_tmp6.xyz = (mul_safe(uniforms.f[80].xyzz, reg_tmp14.xyzz)).xyz;
    // 25: mul
    reg_tmp5.xyz = (mul_safe(reg_tmp6.xyzz, reg_tmp1.xxxx)).xyz;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 120: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 121: call
    {
        sub_0_8();
    }
    // 122: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 123: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 124: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 125: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 126: mov
    vs_out_attr3 = reg_tmp2;
    // 127: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 128: mov
    reg_tmp0.xy = (uniforms.f[95].yyyy).xy;
    // 129: call
    {
        sub_0_8();
    }
    // 130: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 131: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 132: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 133: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 134: mov
    vs_out_attr4 = reg_tmp2;
    // 135: mov
    reg_tmp0.xy = (uniforms.f[95].zzzz).xy;
    // 136: call
    {
        sub_0_8();
    }
    // 137: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 138: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 139: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 140: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 141: mov
    vs_out_attr5 = reg_tmp2;
    // 142: ifu
    if (uniforms.b[7]) {
        sub_143_144();
    }
    // 144: ifu
    if (uniforms.b[11]) {
        sub_145_181();
    } else {
        sub_181_182();
    }
    // 182: ifu
    if (uniforms.b[7]) {
        sub_183_189();
    } else {
        sub_189_190();
    }
    // 190: mov
    vs_out_attr6 = reg_tmp11;
    // 191: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_143_144() {
    // 143: mov
    reg_tmp10 = uniforms.f[17].xxyx;
    return false;
}
bool sub_145_181() {
    // 145: mov
    reg_tmp11.xyz = (uniforms.f[17].xxxy).xyz;
    // 146: ifu
    if (uniforms.b[6]) {
        sub_147_157();
    }
    // 157: nop
    // 158: ifu
    if (uniforms.b[5]) {
        sub_159_180();
    }
    // 180: nop
    return false;
}
bool sub_147_157() {
    // 147: max
    reg_tmp13.x = (max(uniforms.f[17].xxxx, reg_tmp4.yyyy)).x;
    // 148: mul
    reg_tmp0.xyz = (mul_safe(uniforms.f[93].xyzz, reg_tmp13.xxxx)).xyz;
    // 149: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp0.xyzz).xyz;
    // 150: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 151: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    // 152: max
    reg_tmp13.x = (max(uniforms.f[17].xxxx, -reg_tmp4.yyyy)).x;
    // 153: mul
    reg_tmp0.xyz = (mul_safe(uniforms.f[94].xyzz, reg_tmp13.xxxx)).xyz;
    // 154: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp0.xyzz).xyz;
    // 155: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 156: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    return false;
}
bool sub_159_180() {
    // 159: ifu
    if (uniforms.b[7]) {
        sub_160_162();
    }
    // 162: loop
    address_registers.z = int(uniforms.i[0].y);
    for (uint loop162 = 0u; loop162 <= uniforms.i[0].x; address_registers.z += int(uniforms.i[0].z), ++loop162) {
        sub_163_171();
    }
    // 171: nop
    // 172: ifu
    if (uniforms.b[7]) {
        sub_173_179();
    }
    // 179: nop
    return false;
}
bool sub_160_162() {
    // 160: max
    reg_tmp10.x = (max(reg_tmp11.xxxx, reg_tmp11.yyyy)).x;
    // 161: max
    reg_tmp10.x = (max(reg_tmp10.xxxx, reg_tmp11.zzzz)).x;
    return false;
}
bool sub_163_171() {
    // 163: mov
    reg_tmp14.xyz = (uniforms.f[81 + address_registers.z].xyzz).xyz;
    // 164: mov
    reg_tmp3.x = (uniforms.f[81 + address_registers.z].wwww).x;
    // 165: mov
    reg_tmp2.xyz = (uniforms.f[87 + address_registers.z].xyzz).xyz;
    // 166: mov
    reg_tmp3.y = (uniforms.f[87 + address_registers.z].wwww).y;
    // 167: call
    {
        sub_8_26();
    }
    // 168: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp5.xyzz).xyz;
    // 169: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 170: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    return false;
}
bool sub_173_179() {
    // 173: max
    reg_tmp10.y = (max(reg_tmp11.xxxx, reg_tmp11.yyyy)).y;
    // 174: max
    reg_tmp10.y = (max(reg_tmp10.yyyy, reg_tmp11.zzzz)).y;
    // 175: add
    reg_tmp10.z = (reg_tmp10.yyyy + -reg_tmp10.xxxx).z;
    // 176: max
    reg_tmp10.z = (max(uniforms.f[17].xxxx, reg_tmp10.zzzz)).z;
    // 177: min
    reg_tmp10.z = (min(uniforms.f[17].yyyy, reg_tmp10.zzzz)).z;
    // 178: add
    reg_tmp10.z = (uniforms.f[17].yyyy + -reg_tmp10.zzzz).z;
    return false;
}
bool sub_181_182() {
    // 181: mov
    reg_tmp11.xyz = (uniforms.f[17].yyyy).xyz;
    return false;
}
bool sub_183_189() {
    // 183: mov
    reg_tmp13.w = (uniforms.f[95].wwww).w;
    // 184: cmp
    conditional_code = lessThan(vec2(reg_tmp8.zzzz), vec2(reg_tmp13.wwww));
    // 185: ifc
    if (conditional_code.x) {
        sub_186_187();
    } else {
        sub_187_188();
    }
    // 188: nop
    return false;
}
bool sub_186_187() {
    // 186: mov
    reg_tmp11.w = (reg_tmp10.zzzz).w;
    return false;
}
bool sub_187_188() {
    // 187: mov
    reg_tmp11.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_189_190() {
    // 189: mov
    reg_tmp11.w = (uniforms.f[17].xxxx).w;
    return false;
}
// reference: 84E4A09237F27966, ABE423D42131D4F5
// shader: 8DD9, 1558286C47B9A4C4

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

    vec4 vtx_color = vec4(vtx.attributes[6].x, vtx.attributes[6].y, vtx.attributes[6].z, vtx.attributes[6].w);
    primary_color = min(abs(vtx_color), vec4(1.0));

    texcoord0 = vec2(vtx.attributes[3].x, vtx.attributes[3].y);
    texcoord1 = vec2(vtx.attributes[4].x, vtx.attributes[4].y);

    texcoord0_w = 0.0;
    view = vec3(vtx.attributes[2].x, vtx.attributes[2].y, vtx.attributes[2].z);

    texcoord2 = vec2(vtx.attributes[5].x, vtx.attributes[5].y);

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
// reference: B7A1AA8AEE71524D, 1558286C47B9A4C4
// shader: 8B30, 0C3173328C8E2801

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
depth /= gl_FragCoord.w;
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
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + ((lut_scale_d1 * LookupLightingLUTUnsigned(1, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) + (const_color[0].a) - 0.5, 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.aaa) + (combiner_buffer.rgb) * (vec3(1.0) - (rounded_primary_color.aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (const_color[4].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (const_color[4].a), 0.0, 1.0));
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
// reference: 8DC4F5161F04A720, 0C3173328C8E2801
// program: ABE423D42131D4F5, 1558286C47B9A4C4, 0C3173328C8E2801
// reference: 1DB1D8D3EC4BD821, ABE423D42131D4F5
// shader: 8B31, 75EB489DF63B9F3C

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_8_26();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();
bool sub_143_168();
bool sub_145_155();
bool sub_157_167();
bool sub_158_166();
bool sub_168_169();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_8_26() {
    // 8: add
    reg_tmp0.xyz = (reg_tmp2.xyzz + -reg_tmp8.xyzz).xyz;
    // 9: dp3
    reg_tmp0.w = dot(vec3(reg_tmp0.xyzz), vec3(reg_tmp0.xyzz));
    // 10: rsq
    reg_tmp6.xyz = vec3(rsq_safe(reg_tmp0.wwww.x));
    // 11: mul
    reg_tmp0.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp6.xxxx)).xyz;
    // 12: rcp
    reg_tmp0.w = rcp_safe(reg_tmp6.xxxx.x);
    // 13: dp3
    reg_tmp1.x = dot(vec3(reg_tmp4), vec3(reg_tmp0.xyzz));
    // 14: max
    reg_tmp6.x = (max(uniforms.f[17].xxxy, reg_tmp1.xxxx)).x;
    // 15: min
    reg_tmp1.x = (min(uniforms.f[17].yyyy, reg_tmp6.xxxx)).x;
    // 16: add
    reg_tmp6.x = (reg_tmp0.wwww + -reg_tmp3.xxxx).x;
    // 17: add
    reg_tmp6.z = (reg_tmp3.yyyy + -reg_tmp3.xxxx).z;
    // 18: rcp
    reg_tmp6.y = rcp_safe(reg_tmp6.zzzz.x);
    // 19: mul
    reg_tmp6.z = (mul_safe(reg_tmp6.xxxx, reg_tmp6.yyyy)).z;
    // 20: min
    reg_tmp6.x = (min(uniforms.f[17].yyyy, reg_tmp6.zzzz)).x;
    // 21: max
    reg_tmp6.y = (max(uniforms.f[17].xxxx, reg_tmp6.xxxx)).y;
    // 22: add
    reg_tmp6.x = (uniforms.f[17].yyyy + -reg_tmp6.yyyy).x;
    // 23: mul
    reg_tmp1.x = (mul_safe(reg_tmp1.xxxx, reg_tmp6.xxxx)).x;
    // 24: mul
    reg_tmp6.xyz = (mul_safe(uniforms.f[80].xyzz, reg_tmp14.xyzz)).xyz;
    // 25: mul
    reg_tmp5.xyz = (mul_safe(reg_tmp6.xyzz, reg_tmp1.xxxx)).xyz;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 120: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 121: call
    {
        sub_0_8();
    }
    // 122: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 123: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 124: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 125: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 126: mov
    vs_out_attr3 = reg_tmp2;
    // 127: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 128: mov
    reg_tmp0.xy = (uniforms.f[95].yyyy).xy;
    // 129: call
    {
        sub_0_8();
    }
    // 130: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 131: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 132: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 133: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 134: mov
    vs_out_attr4 = reg_tmp2;
    // 135: mov
    reg_tmp0.xy = (uniforms.f[95].zzzz).xy;
    // 136: call
    {
        sub_0_8();
    }
    // 137: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 138: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 139: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 140: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 141: mov
    vs_out_attr5 = reg_tmp2;
    // 142: ifu
    if (uniforms.b[11]) {
        sub_143_168();
    } else {
        sub_168_169();
    }
    // 169: mov
    reg_tmp11.w = (uniforms.f[17].xxxx).w;
    // 170: mov
    vs_out_attr6 = reg_tmp11;
    // 171: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_143_168() {
    // 143: mov
    reg_tmp11.xyz = (uniforms.f[17].xxxy).xyz;
    // 144: ifu
    if (uniforms.b[6]) {
        sub_145_155();
    }
    // 155: nop
    // 156: ifu
    if (uniforms.b[5]) {
        sub_157_167();
    }
    // 167: nop
    return false;
}
bool sub_145_155() {
    // 145: max
    reg_tmp13.x = (max(uniforms.f[17].xxxx, reg_tmp4.yyyy)).x;
    // 146: mul
    reg_tmp0.xyz = (mul_safe(uniforms.f[93].xyzz, reg_tmp13.xxxx)).xyz;
    // 147: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp0.xyzz).xyz;
    // 148: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 149: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    // 150: max
    reg_tmp13.x = (max(uniforms.f[17].xxxx, -reg_tmp4.yyyy)).x;
    // 151: mul
    reg_tmp0.xyz = (mul_safe(uniforms.f[94].xyzz, reg_tmp13.xxxx)).xyz;
    // 152: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp0.xyzz).xyz;
    // 153: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 154: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    return false;
}
bool sub_157_167() {
    // 157: loop
    address_registers.z = int(uniforms.i[0].y);
    for (uint loop157 = 0u; loop157 <= uniforms.i[0].x; address_registers.z += int(uniforms.i[0].z), ++loop157) {
        sub_158_166();
    }
    // 166: nop
    return false;
}
bool sub_158_166() {
    // 158: mov
    reg_tmp14.xyz = (uniforms.f[81 + address_registers.z].xyzz).xyz;
    // 159: mov
    reg_tmp3.x = (uniforms.f[81 + address_registers.z].wwww).x;
    // 160: mov
    reg_tmp2.xyz = (uniforms.f[87 + address_registers.z].xyzz).xyz;
    // 161: mov
    reg_tmp3.y = (uniforms.f[87 + address_registers.z].wwww).y;
    // 162: call
    {
        sub_8_26();
    }
    // 163: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp5.xyzz).xyz;
    // 164: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 165: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    return false;
}
bool sub_168_169() {
    // 168: mov
    reg_tmp11.xyz = (uniforms.f[17].yyyy).xyz;
    return false;
}
// reference: 7D18486C67574BDF, 75EB489DF63B9F3C
// shader: 8B30, 17B4EDCF91680497

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
depth /= gl_FragCoord.w;
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
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + ((lut_scale_d1 * LookupLightingLUTUnsigned(1, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].aaa), vec3(0.0), vec3(1.0)));
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
// reference: 97D23F052B69DDB3, 17B4EDCF91680497
// program: 75EB489DF63B9F3C, 1558286C47B9A4C4, 17B4EDCF91680497
// shader: 8B31, 55874CEC27B2C8CA

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();
bool sub_123_126();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 120: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 121: call
    {
        sub_0_8();
    }
    // 122: ifu
    if (uniforms.b[8]) {
        sub_123_126();
    }
    // 126: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 127: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 128: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 129: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 130: mov
    vs_out_attr3 = reg_tmp2;
    // 131: mov
    vs_out_attr4 = vs_in_reg6;
    // 132: mov
    vs_out_attr5 = vs_in_reg7;
    // 133: mov
    reg_tmp11.xyz = (uniforms.f[17].yyyy).xyz;
    // 134: mov
    reg_tmp11.w = (uniforms.f[17].xxxx).w;
    // 135: mov
    vs_out_attr6 = reg_tmp11;
    // 136: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_123_126() {
    // 123: dp4
    reg_tmp2.x = dot(uniforms.f[13], reg_tmp0);
    // 124: dp4
    reg_tmp2.y = dot(uniforms.f[14], reg_tmp0);
    // 125: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
// reference: 5FE8ADFC5D260123, 55874CEC27B2C8CA
// shader: 8B30, 6A6FAB67EC30DF59

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
depth /= gl_FragCoord.w;
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
refl_value.r = (lut_scale_rr * LookupLightingLUTUnsigned(6, max(dot(normal, normalize(half_vector)), 0.0)));
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (refl_value * light_src[0].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) + (const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) + (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((primary_fragment_color.aaa) * (vec3(1.0) - const_color[2].aaa) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (const_color[3].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
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
// reference: F7297BC267C38FBF, 6A6FAB67EC30DF59
// program: 55874CEC27B2C8CA, 1558286C47B9A4C4, 6A6FAB67EC30DF59
// shader: 8B30, 95FFD538EC92B26D

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (const_color[1].aaa), vec3(0.0), vec3(1.0)));
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
// reference: C94679FBEC4EA26B, 95FFD538EC92B26D
// program: 55874CEC27B2C8CA, 1558286C47B9A4C4, 95FFD538EC92B26D
// shader: 8B31, 6EA06923EE199867

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();
bool sub_123_126();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 120: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 121: call
    {
        sub_0_8();
    }
    // 122: ifu
    if (uniforms.b[8]) {
        sub_123_126();
    }
    // 126: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 127: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 128: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 129: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 130: mov
    vs_out_attr3 = reg_tmp2;
    // 131: mov
    vs_out_attr4 = vs_in_reg6;
    // 132: mov
    vs_out_attr5 = vs_in_reg7;
    // 133: mov
    vs_out_attr6 = vs_in_reg8;
    // 134: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_123_126() {
    // 123: dp4
    reg_tmp2.x = dot(uniforms.f[13], reg_tmp0);
    // 124: dp4
    reg_tmp2.y = dot(uniforms.f[14], reg_tmp0);
    // 125: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
// reference: 5FE8ADFCCB8EB4A8, 6EA06923EE199867
// shader: 8B30, 33E878D269D742C6

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
depth /= gl_FragCoord.w;
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
refl_value.r = (lut_scale_rr * LookupLightingLUTUnsigned(6, max(dot(normal, normalize(half_vector)), 0.0)));
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (refl_value * light_src[0].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.aaa) * (vec3(1.0) - const_color[1].aaa) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].aaa), vec3(0.0), vec3(1.0)));
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
// reference: 97A606328584E266, 33E878D269D742C6
// program: 6EA06923EE199867, 1558286C47B9A4C4, 33E878D269D742C6
// shader: 8B31, F4AB42537C5F2172

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_105_106();
bool sub_109_119();
bool sub_115_117();
bool sub_117_118();
bool sub_119_120();
bool sub_125_128();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: ifu
    if (uniforms.b[10]) {
        sub_105_106();
    }
    // 106: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 107: mov
    vs_out_attr0 = reg_tmp10;
    // 108: ifu
    if (uniforms.b[4]) {
        sub_109_119();
    } else {
        sub_119_120();
    }
    // 120: mov
    vs_out_attr2 = -reg_tmp12;
    // 121: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 122: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 123: call
    {
        sub_0_8();
    }
    // 124: ifu
    if (uniforms.b[8]) {
        sub_125_128();
    }
    // 128: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 129: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 130: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 131: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 132: mov
    vs_out_attr3 = reg_tmp2;
    // 133: mov
    vs_out_attr4 = vs_in_reg6;
    // 134: mov
    vs_out_attr5 = vs_in_reg7;
    // 135: mov
    vs_out_attr6 = vs_in_reg8;
    // 136: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_105_106() {
    // 105: add
    reg_tmp12.z = (-uniforms.f[80].wwww + reg_tmp12.zzzz).z;
    return false;
}
bool sub_109_119() {
    // 109: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 110: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 111: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 112: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 113: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 114: ifc
    if (!conditional_code.x) {
        sub_115_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_115_117() {
    // 115: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 116: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_119_120() {
    // 119: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_125_128() {
    // 125: dp4
    reg_tmp2.x = dot(uniforms.f[13], reg_tmp0);
    // 126: dp4
    reg_tmp2.y = dot(uniforms.f[14], reg_tmp0);
    // 127: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
// reference: C2EDBBE3B6AB962E, F4AB42537C5F2172
// shader: 8B30, 5A9DBA5B31BC353E

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) * (const_color[0].a) + (texcolor0.a) * (1.0 - (const_color[0].a)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.aaa) * (const_color[1].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) - (1.0 - const_color[1].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.aaa) * (const_color[2].ggg) + (last_tex_env_out.rrr) * (vec3(1.0) - (const_color[2].ggg)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a) * (const_color[2].g) + (last_tex_env_out.r) * (1.0 - (const_color[2].g)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2 * 4.0, alpha_output_2 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.r) * (combiner_buffer.b) + (last_tex_env_out.a) * (1.0 - (combiner_buffer.b)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp(min((rounded_primary_color.a) + (const_color[4].a), 1.0) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp(min((last_tex_env_out.rgb) + (const_color[5].rgb), vec3(1.0)) * (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (combiner_buffer.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 7DE2EB867678105E, 5A9DBA5B31BC353E
// program: F4AB42537C5F2172, 1558286C47B9A4C4, 5A9DBA5B31BC353E
// reference: 714ECBC3CB8EB4A8, 6EA06923EE199867
// shader: 8B31, 82F45F9CBD575AD0

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    vs_out_attr3 = vs_in_reg5;
    // 120: mov
    vs_out_attr4 = vs_in_reg6;
    // 121: mov
    vs_out_attr5 = vs_in_reg7;
    // 122: mov
    vs_out_attr6 = vs_in_reg8;
    // 123: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
// reference: BA5A382AA7F8A37E, 82F45F9CBD575AD0
// shader: 8B30, C8096B09A214E787

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
depth /= gl_FragCoord.w;
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
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
// reference: 5D3A7CB0744F75C5, C8096B09A214E787
// program: 82F45F9CBD575AD0, 1558286C47B9A4C4, C8096B09A214E787
// shader: 8B31, 6F902B0607BA614A

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_105_106();
bool sub_109_119();
bool sub_115_117();
bool sub_117_118();
bool sub_119_120();
bool sub_125_128();
bool sub_137_140();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: ifu
    if (uniforms.b[10]) {
        sub_105_106();
    }
    // 106: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 107: mov
    vs_out_attr0 = reg_tmp10;
    // 108: ifu
    if (uniforms.b[4]) {
        sub_109_119();
    } else {
        sub_119_120();
    }
    // 120: mov
    vs_out_attr2 = -reg_tmp12;
    // 121: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 122: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 123: call
    {
        sub_0_8();
    }
    // 124: ifu
    if (uniforms.b[8]) {
        sub_125_128();
    }
    // 128: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 129: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 130: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 131: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 132: mov
    vs_out_attr3 = reg_tmp2;
    // 133: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 134: mov
    reg_tmp0.xy = (uniforms.f[95].yyyy).xy;
    // 135: call
    {
        sub_0_8();
    }
    // 136: ifu
    if (uniforms.b[9]) {
        sub_137_140();
    }
    // 140: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 141: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 142: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 143: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 144: mov
    vs_out_attr4 = reg_tmp2;
    // 145: mov
    reg_tmp0.xy = (uniforms.f[95].zzzz).xy;
    // 146: call
    {
        sub_0_8();
    }
    // 147: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 148: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 149: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 150: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 151: mov
    vs_out_attr5 = reg_tmp2;
    // 152: mov
    vs_out_attr6 = vs_in_reg8;
    // 153: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_105_106() {
    // 105: add
    reg_tmp12.z = (-uniforms.f[80].wwww + reg_tmp12.zzzz).z;
    return false;
}
bool sub_109_119() {
    // 109: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 110: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 111: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 112: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 113: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 114: ifc
    if (!conditional_code.x) {
        sub_115_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_115_117() {
    // 115: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 116: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_119_120() {
    // 119: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_125_128() {
    // 125: dp4
    reg_tmp2.x = dot(uniforms.f[13], reg_tmp0);
    // 126: dp4
    reg_tmp2.y = dot(uniforms.f[14], reg_tmp0);
    // 127: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
bool sub_137_140() {
    // 137: dp4
    reg_tmp2.x = dot(uniforms.f[15], reg_tmp0);
    // 138: dp4
    reg_tmp2.y = dot(uniforms.f[16], reg_tmp0);
    // 139: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
// reference: BDF24F1C01D5F722, 6F902B0607BA614A
// shader: 8B30, 045DD07097152919

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (const_color[0].rrr), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) * (const_color[0].a) + (texcolor0.a) * (1.0 - (const_color[0].a)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb) * (texcolor0.rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb) + (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((combiner_buffer.a) - (1.0 - rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (const_color[3].rrr) + (combiner_buffer.rgb) * (vec3(1.0) - (const_color[3].rrr)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (const_color[3].g) + (combiner_buffer.a) * (1.0 - (const_color[3].g)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (const_color[4].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4 * 1.0, alpha_output_4 * 4.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (const_color[5].b) + (combiner_buffer.a) * (1.0 - (const_color[5].b)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: E3C1FE180A99180E, 045DD07097152919
// program: 6F902B0607BA614A, 1558286C47B9A4C4, 045DD07097152919
// shader: 8B31, 443F3A637F4D7978

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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
    // 0: mov
    reg_tmp0 = vs_in_reg0;
    // 1: mov
    reg_tmp0.zw = (uniforms.f[93].xyyy).zw;
    // 2: dp4
    reg_tmp1.x = dot(uniforms.f[25], reg_tmp0);
    // 3: dp4
    reg_tmp1.y = dot(uniforms.f[26], reg_tmp0);
    // 4: add
    reg_tmp2.y = (uniforms.f[93].yyyy + reg_tmp1.yyyy).y;
    // 5: mul
    reg_tmp2.y = (mul_safe(uniforms.f[94].xxxx, reg_tmp2.yyyy)).y;
    // 6: add
    reg_tmp2.y = (uniforms.f[93].yyyy + -reg_tmp2.yyyy).y;
    // 7: mul
    reg_tmp2.y = (mul_safe(uniforms.f[93].zzzz, reg_tmp2.yyyy)).y;
    // 8: add
    reg_tmp1.y = (-uniforms.f[93].yyyy + reg_tmp2.yyyy).y;
    // 9: mov
    vs_out_attr0.xy = (reg_tmp1.yxxx).xy;
    // 10: mov
    vs_out_attr0.z = (uniforms.f[93].xxxx).z;
    // 11: mov
    vs_out_attr0.w = (uniforms.f[93].yyyy).w;
    // 12: mov
    reg_tmp0 = uniforms.f[93].xxyx;
    // 13: add
    reg_tmp0.xy = (-uniforms.f[17].xyyy + vs_in_reg2.xyyy).xy;
    // 14: dp4
    reg_tmp3.x = dot(uniforms.f[13], reg_tmp0);
    // 15: dp4
    reg_tmp3.y = dot(uniforms.f[14], reg_tmp0);
    // 16: add
    reg_tmp0.xy = (uniforms.f[17].xyyy + reg_tmp3.xyyy).xy;
    // 17: add
    reg_tmp0.y = (uniforms.f[93].yyyy + -reg_tmp0.yyyy).y;
    // 18: mov
    vs_out_attr2 = reg_tmp0;
    // 19: mov
    reg_tmp0 = uniforms.f[93].xxyx;
    // 20: add
    reg_tmp0.xy = (-uniforms.f[18].xyyy + vs_in_reg2.xyyy).xy;
    // 21: dp4
    reg_tmp3.x = dot(uniforms.f[15], reg_tmp0);
    // 22: dp4
    reg_tmp3.y = dot(uniforms.f[16], reg_tmp0);
    // 23: add
    reg_tmp0.xy = (uniforms.f[18].xyyy + reg_tmp3.xyyy).xy;
    // 24: add
    reg_tmp0.y = (uniforms.f[93].yyyy + -reg_tmp0.yyyy).y;
    // 25: mov
    vs_out_attr3 = reg_tmp0;
    // 26: mov
    reg_tmp0 = uniforms.f[93].xxxx;
    // 27: mov
    reg_tmp0 = vs_in_reg2;
    // 28: add
    reg_tmp0.y = (uniforms.f[93].yyyy + -reg_tmp0.yyyy).y;
    // 29: mov
    vs_out_attr4 = reg_tmp0;
    // 30: mov
    vs_out_attr1 = vs_in_reg1;
    // 31: end
    return true;
}
// reference: 2BB13004BFE6E0DE, 443F3A637F4D7978
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
// shader: 8B30, 7FDFB08AA001B9CC

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_1 = byteround(clamp((texcolor1.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 2.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp(min((last_tex_env_out.rgb) + (combiner_buffer.rgb), vec3(1.0)) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (const_color[3].aaa) + (const_color[3].rgb) * (vec3(1.0) - (const_color[3].aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 8881965D9537D39A, 7FDFB08AA001B9CC
// program: 443F3A637F4D7978, 5D764F9A6220D694, 7FDFB08AA001B9CC
// shader: 8B31, D720054CA459F09E

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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
    // 0: mov
    reg_tmp0.xy = (vs_in_reg0.xyyy).xy;
    // 1: mov
    reg_tmp0.zw = (uniforms.f[93].xyyy).zw;
    // 2: dp4
    reg_tmp1.x = dot(uniforms.f[25], reg_tmp0);
    // 3: dp4
    reg_tmp1.y = dot(uniforms.f[26], reg_tmp0);
    // 4: add
    reg_tmp2.y = (uniforms.f[93].yyyy + reg_tmp1.yyyy).y;
    // 5: mul
    reg_tmp2.y = (mul_safe(uniforms.f[94].xxxx, reg_tmp2.yyyy)).y;
    // 6: add
    reg_tmp2.y = (uniforms.f[93].yyyy + -reg_tmp2.yyyy).y;
    // 7: mul
    reg_tmp2.y = (mul_safe(uniforms.f[93].zzzz, reg_tmp2.yyyy)).y;
    // 8: add
    reg_tmp1.y = (-uniforms.f[93].yyyy + reg_tmp2.yyyy).y;
    // 9: mov
    reg_tmp2.x = (uniforms.f[27].wwww).x;
    // 10: mul
    reg_tmp2.x = (mul_safe(uniforms.f[29].xxxx, reg_tmp2.xxxx)).x;
    // 11: add
    reg_tmp1.y = (reg_tmp1.yyyy + reg_tmp2.xxxx).y;
    // 12: mov
    vs_out_attr0.xy = (-reg_tmp1.yxxx).xy;
    // 13: mov
    vs_out_attr0.z = (uniforms.f[93].xxxx).z;
    // 14: mov
    vs_out_attr0.w = (uniforms.f[93].yyyy).w;
    // 15: mov
    reg_tmp0 = vs_in_reg2;
    // 16: add
    reg_tmp0.y = (uniforms.f[93].yyyy + -reg_tmp0.yyyy).y;
    // 17: mov
    vs_out_attr2 = reg_tmp0;
    // 18: mov
    vs_out_attr1 = vs_in_reg1;
    // 19: end
    return true;
}
// reference: 51AC9CCDD221F2C6, D720054CA459F09E
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
// shader: 8B30, DAC934827CE046A0

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0 * 4.0, alpha_output_0 * 4.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (const_color[1].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 4.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((combiner_buffer.rgb) * (const_color[4].rrr) + (last_tex_env_out.rgb) * (vec3(1.0) - (const_color[4].rrr)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((combiner_buffer.a) * (const_color[4].r) + (last_tex_env_out.a) * (1.0 - (const_color[4].r)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 5880AA7C2968D6EB, DAC934827CE046A0
// program: D720054CA459F09E, 4E5317772B5CE683, DAC934827CE046A0
// reference: C8F9E48C5245A145, D720054CA459F09E
// shader: 8B30, 51FC9310092F95FF

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
last_tex_env_out = clamp(vec4(color_output_0 * 4.0, alpha_output_0 * 4.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (const_color[1].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 4.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((combiner_buffer.rgb) * (const_color[4].rrr) + (last_tex_env_out.rgb) * (vec3(1.0) - (const_color[4].rrr)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((combiner_buffer.a) * (const_color[4].r) + (last_tex_env_out.a) * (1.0 - (const_color[4].r)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 67C182062968D6EB, 51FC9310092F95FF
// program: D720054CA459F09E, 4E5317772B5CE683, 51FC9310092F95FF
// shader: 8B30, F69EEFE820DC278C

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
depth /= gl_FragCoord.w;
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
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(half_vector)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + ((lut_scale_d1 * LookupLightingLUTUnsigned(1, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) + (const_color[0].a) - 0.5, 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.aaa) + (combiner_buffer.rgb) * (vec3(1.0) - (rounded_primary_color.aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (const_color[4].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (const_color[4].a), 0.0, 1.0));
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
// reference: E8F96D340291B4F7, F69EEFE820DC278C
// program: ABE423D42131D4F5, 1558286C47B9A4C4, F69EEFE820DC278C
// shader: 8B30, FC64A66DC2079D25

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
depth /= gl_FragCoord.w;
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
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(half_vector)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + ((lut_scale_d1 * LookupLightingLUTUnsigned(1, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].aaa), vec3(0.0), vec3(1.0)));
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
// reference: F2EFA72736FCCE64, FC64A66DC2079D25
// program: 75EB489DF63B9F3C, 1558286C47B9A4C4, FC64A66DC2079D25
// reference: 5FE8ADFC869599F7, 82F45F9CBD575AD0
// reference: 0F43A0EB6D0640EF, 51FC9310092F95FF
// shader: 8B31, 9E3E8FC48E73AA5F

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_8_26();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();
bool sub_145_170();
bool sub_147_157();
bool sub_159_169();
bool sub_160_168();
bool sub_170_171();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_8_26() {
    // 8: add
    reg_tmp0.xyz = (reg_tmp2.xyzz + -reg_tmp8.xyzz).xyz;
    // 9: dp3
    reg_tmp0.w = dot(vec3(reg_tmp0.xyzz), vec3(reg_tmp0.xyzz));
    // 10: rsq
    reg_tmp6.xyz = vec3(rsq_safe(reg_tmp0.wwww.x));
    // 11: mul
    reg_tmp0.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp6.xxxx)).xyz;
    // 12: rcp
    reg_tmp0.w = rcp_safe(reg_tmp6.xxxx.x);
    // 13: dp3
    reg_tmp1.x = dot(vec3(reg_tmp4), vec3(reg_tmp0.xyzz));
    // 14: max
    reg_tmp6.x = (max(uniforms.f[17].xxxy, reg_tmp1.xxxx)).x;
    // 15: min
    reg_tmp1.x = (min(uniforms.f[17].yyyy, reg_tmp6.xxxx)).x;
    // 16: add
    reg_tmp6.x = (reg_tmp0.wwww + -reg_tmp3.xxxx).x;
    // 17: add
    reg_tmp6.z = (reg_tmp3.yyyy + -reg_tmp3.xxxx).z;
    // 18: rcp
    reg_tmp6.y = rcp_safe(reg_tmp6.zzzz.x);
    // 19: mul
    reg_tmp6.z = (mul_safe(reg_tmp6.xxxx, reg_tmp6.yyyy)).z;
    // 20: min
    reg_tmp6.x = (min(uniforms.f[17].yyyy, reg_tmp6.zzzz)).x;
    // 21: max
    reg_tmp6.y = (max(uniforms.f[17].xxxx, reg_tmp6.xxxx)).y;
    // 22: add
    reg_tmp6.x = (uniforms.f[17].yyyy + -reg_tmp6.yyyy).x;
    // 23: mul
    reg_tmp1.x = (mul_safe(reg_tmp1.xxxx, reg_tmp6.xxxx)).x;
    // 24: mul
    reg_tmp6.xyz = (mul_safe(uniforms.f[80].xyzz, reg_tmp14.xyzz)).xyz;
    // 25: mul
    reg_tmp5.xyz = (mul_safe(reg_tmp6.xyzz, reg_tmp1.xxxx)).xyz;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0 = reg_tmp3.xyzz;
    // 120: mul
    reg_tmp1.xy = (mul_safe(uniforms.f[18].xxxx, reg_tmp0.xyyy)).xy;
    // 121: add
    reg_tmp11.xy = (uniforms.f[18].xxxx + reg_tmp1.xyyy).xy;
    // 122: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 123: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 124: call
    {
        sub_0_8();
    }
    // 125: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 126: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 127: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 128: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 129: mov
    vs_out_attr3 = reg_tmp2;
    // 130: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 131: mov
    reg_tmp0.xy = (uniforms.f[95].yyyy).xy;
    // 132: call
    {
        sub_0_8();
    }
    // 133: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 134: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 135: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 136: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 137: mov
    vs_out_attr4 = reg_tmp2;
    // 138: mov
    reg_tmp0.xy = (reg_tmp11.xyyy).xy;
    // 139: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 140: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 141: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 142: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 143: mov
    vs_out_attr5 = reg_tmp2;
    // 144: ifu
    if (uniforms.b[11]) {
        sub_145_170();
    } else {
        sub_170_171();
    }
    // 171: mov
    reg_tmp11.w = (uniforms.f[17].xxxx).w;
    // 172: mov
    vs_out_attr6 = reg_tmp11;
    // 173: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_145_170() {
    // 145: mov
    reg_tmp11.xyz = (uniforms.f[17].xxxy).xyz;
    // 146: ifu
    if (uniforms.b[6]) {
        sub_147_157();
    }
    // 157: nop
    // 158: ifu
    if (uniforms.b[5]) {
        sub_159_169();
    }
    // 169: nop
    return false;
}
bool sub_147_157() {
    // 147: max
    reg_tmp13.x = (max(uniforms.f[17].xxxx, reg_tmp4.yyyy)).x;
    // 148: mul
    reg_tmp0.xyz = (mul_safe(uniforms.f[93].xyzz, reg_tmp13.xxxx)).xyz;
    // 149: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp0.xyzz).xyz;
    // 150: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 151: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    // 152: max
    reg_tmp13.x = (max(uniforms.f[17].xxxx, -reg_tmp4.yyyy)).x;
    // 153: mul
    reg_tmp0.xyz = (mul_safe(uniforms.f[94].xyzz, reg_tmp13.xxxx)).xyz;
    // 154: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp0.xyzz).xyz;
    // 155: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 156: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    return false;
}
bool sub_159_169() {
    // 159: loop
    address_registers.z = int(uniforms.i[0].y);
    for (uint loop159 = 0u; loop159 <= uniforms.i[0].x; address_registers.z += int(uniforms.i[0].z), ++loop159) {
        sub_160_168();
    }
    // 168: nop
    return false;
}
bool sub_160_168() {
    // 160: mov
    reg_tmp14.xyz = (uniforms.f[81 + address_registers.z].xyzz).xyz;
    // 161: mov
    reg_tmp3.x = (uniforms.f[81 + address_registers.z].wwww).x;
    // 162: mov
    reg_tmp2.xyz = (uniforms.f[87 + address_registers.z].xyzz).xyz;
    // 163: mov
    reg_tmp3.y = (uniforms.f[87 + address_registers.z].wwww).y;
    // 164: call
    {
        sub_8_26();
    }
    // 165: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp5.xyzz).xyz;
    // 166: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 167: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    return false;
}
bool sub_170_171() {
    // 170: mov
    reg_tmp11.xyz = (uniforms.f[17].yyyy).xyz;
    return false;
}
// reference: 9D549479771B856A, 9E3E8FC48E73AA5F
// shader: 8B30, 308C4602F0691E8D

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
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
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor1.r) * (texcolor2.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((primary_fragment_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp(min((last_tex_env_out.rgb) + (combiner_buffer.aaa), vec3(1.0)) * (texcolor1.rrr), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((primary_fragment_color.a) * (const_color[2].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp(min((const_color[3].rgb) + (last_tex_env_out.aaa), vec3(1.0)) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((combiner_buffer.a) + (const_color[3].a) - 0.5, 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((vec3(1.0) - last_tex_env_out.aaa) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((const_color[5].rgb) * (texcolor1.ggg) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor1.ggg)), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 07D6D3745C52E1F8, 308C4602F0691E8D
// program: 9E3E8FC48E73AA5F, 1558286C47B9A4C4, 308C4602F0691E8D
// reference: 0401EC38ACA2242D, 9E3E8FC48E73AA5F
// shader: 8B30, E26E9C9BEE44BF6A

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (const_color[0].rrr), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) * (const_color[0].a) + (texcolor0.a) * (1.0 - (const_color[0].a)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb) * (texcolor0.rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb) + (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((combiner_buffer.a) - (1.0 - rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (const_color[3].rrr) + (combiner_buffer.rgb) * (vec3(1.0) - (const_color[3].rrr)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (const_color[3].g) + (combiner_buffer.a) * (1.0 - (const_color[3].g)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (const_color[4].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4 * 1.0, alpha_output_4 * 4.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (const_color[5].b) + (combiner_buffer.a) * (1.0 - (const_color[5].b)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: B0406A090A99180E, E26E9C9BEE44BF6A
// program: 6F902B0607BA614A, 1558286C47B9A4C4, E26E9C9BEE44BF6A
// reference: 20F75903BB6DF07A, 55874CEC27B2C8CA
// reference: BDF24F1C50E06777, F4AB42537C5F2172
// reference: 0E513F3C2DC545F1, 6EA06923EE199867
// reference: 2BB13004EED3708B, 443F3A637F4D7978
// reference: 51AC9CCD83146293, D720054CA459F09E
// reference: C8F9E48C03703110, D720054CA459F09E
// shader: 8B30, 96CF0C24C2A9CF63

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor1.r) * (texcolor2.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((primary_fragment_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp(min((last_tex_env_out.rgb) + (combiner_buffer.aaa), vec3(1.0)) * (texcolor1.rrr), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((primary_fragment_color.a) * (const_color[2].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp(min((const_color[3].rgb) + (last_tex_env_out.aaa), vec3(1.0)) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((combiner_buffer.a) + (const_color[3].a) - 0.5, 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((vec3(1.0) - last_tex_env_out.aaa) * (const_color[4].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((const_color[5].rgb) * (texcolor1.ggg) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor1.ggg)), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 6577371C5C52E1F8, 96CF0C24C2A9CF63
// program: 9E3E8FC48E73AA5F, 1558286C47B9A4C4, 96CF0C24C2A9CF63
// shader: 8B30, 4A3C5DEE38AC2214

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(half_vector)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + ((lut_scale_d1 * LookupLightingLUTUnsigned(1, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) + (const_color[0].a) - 0.5, 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.aaa) + (combiner_buffer.rgb) * (vec3(1.0) - (rounded_primary_color.aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (const_color[4].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (const_color[4].a), 0.0, 1.0));
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
// reference: 8A58895C0291B4F7, 4A3C5DEE38AC2214
// program: ABE423D42131D4F5, 1558286C47B9A4C4, 4A3C5DEE38AC2214
// shader: 8B30, AB1C067D3041E1DB

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(half_vector)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + ((lut_scale_d1 * LookupLightingLUTUnsigned(1, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].aaa), vec3(0.0), vec3(1.0)));
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
// reference: 904E434F36FCCE64, AB1C067D3041E1DB
// program: 75EB489DF63B9F3C, 1558286C47B9A4C4, AB1C067D3041E1DB
// shader: 8B30, 7F0F45D71E888C2C

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = (lut_scale_rr * LookupLightingLUTUnsigned(6, max(dot(normal, normalize(half_vector)), 0.0)));
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (refl_value * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) + (const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) + (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((primary_fragment_color.aaa) * (vec3(1.0) - const_color[2].aaa) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (const_color[3].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
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
// reference: 95889FAA67C38FBF, 7F0F45D71E888C2C
// program: 55874CEC27B2C8CA, 1558286C47B9A4C4, 7F0F45D71E888C2C
// reference: ABE79D93EC4EA26B, 95FFD538EC92B26D
// reference: D2E18E610A99180E, E26E9C9BEE44BF6A
// reference: 1F430FEE7678105E, 5A9DBA5B31BC353E
// shader: 8B30, 327A20C26096A432

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = (lut_scale_rr * LookupLightingLUTUnsigned(6, max(dot(normal, normalize(half_vector)), 0.0)));
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (refl_value * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.aaa) * (vec3(1.0) - const_color[1].aaa) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].aaa), vec3(0.0), vec3(1.0)));
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
// reference: F507E25A8584E266, 327A20C26096A432
// program: 6EA06923EE199867, 1558286C47B9A4C4, 327A20C26096A432
// reference: EA2072359537D39A, 7FDFB08AA001B9CC
// reference: 3A214E142968D6EB, DAC934827CE046A0
// reference: 0560666E2968D6EB, 51FC9310092F95FF
// reference: 0E513F3CF27F4748, 6EA06923EE199867
// reference: BDF24F1C5A0805E6, 6F902B0607BA614A
// reference: B6B4261B055EE786, 443F3A637F4D7978
// reference: CCA98AD26899F59E, D720054CA459F09E
// reference: 55FCF293E8FDA61D, D720054CA459F09E
// shader: 8B30, B20999FE5B557A14

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor1.r) * (texcolor2.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp(min((const_color[1].a) + (1.0 - texcolor1.b), 1.0) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp(min((primary_fragment_color.aaa) + (const_color[2].rgb), vec3(1.0)) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((const_color[2].a) * (1.0 - texcolor1.g) + (texcolor1.g), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp(min((last_tex_env_out.rgb) + (combiner_buffer.aaa), vec3(1.0)) * (texcolor1.rrr), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (texcolor1.ggg) + (last_tex_env_out.rgb) * (vec3(1.0) - (texcolor1.ggg)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp(min((const_color[4].a) + (1.0 - texcolor1.b), 1.0) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (last_tex_env_out.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 14ED6063DA2E9AEE, B20999FE5B557A14
// program: 9E3E8FC48E73AA5F, 1558286C47B9A4C4, B20999FE5B557A14
// reference: B28663BCD63A92DD, 55874CEC27B2C8CA
// reference: 2F8375A33DB705D0, F4AB42537C5F2172
// reference: 24C51CA468098521, 443F3A637F4D7978
// reference: 5ED8B06D05CE9739, D720054CA459F09E
// reference: C78DC82C85AAC4BA, D720054CA459F09E
// reference: 38C65FE90243F3E4, 6F902B0607BA614A
// reference: 38C65FE9599E0120, 6F902B0607BA614A
// reference: A5C349F6E3260678, 55874CEC27B2C8CA
// reference: A5C349F6B8FBF4BC, 55874CEC27B2C8CA
// reference: 338036EE06C8E340, 443F3A637F4D7978
// reference: 499D9A276B0FF158, D720054CA459F09E
// reference: D0C8E266EB6BA2DB, D720054CA459F09E
// reference: 1DB1D8D3B7962AE5, ABE423D42131D4F5
// shader: 8B30, DCD8AB9FD8698B45

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + ((lut_scale_d1 * LookupLightingLUTUnsigned(1, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((1.0 - const_color[0].r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp(min((const_color[1].a) + (const_color[1].r), 1.0) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.aaa) + (combiner_buffer.rgb) * (vec3(1.0) - (rounded_primary_color.aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (combiner_buffer.aaa) + (last_tex_env_out.rgb) * (vec3(1.0) - (combiner_buffer.aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4 * 2.0, alpha_output_4 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (const_color[5].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: FBD811446DFBEBE7, DCD8AB9FD8698B45
// program: ABE423D42131D4F5, 1558286C47B9A4C4, DCD8AB9FD8698B45
// reference: 0401EC38F77FD6E9, 9E3E8FC48E73AA5F
// reference: B28663BC8DE76019, 55874CEC27B2C8CA
// reference: B28663BC1B4FD592, 6EA06923EE199867
// reference: B28663BC9B21BF82, 82F45F9CBD575AD0
// reference: 3F9B98D8744F75C5, C8096B09A214E787
// reference: B28663BCC0FC4D46, 82F45F9CBD575AD0
// reference: 24C51CA42512A87E, 443F3A637F4D7978
// reference: 5ED8B06D48D5BA66, D720054CA459F09E
// reference: C78DC82CC8B1E9E5, D720054CA459F09E
// reference: A5C349F6F5E0D9E3, 82F45F9CBD575AD0
// reference: A5C349F6AE3D2B27, 82F45F9CBD575AD0
// reference: 338036EE4BD3CE1F, 443F3A637F4D7978
// reference: 499D9A272614DC07, D720054CA459F09E
// reference: D0C8E266A6708F84, D720054CA459F09E
// reference: 4071DC2048CD3470, 82F45F9CBD575AD0
// reference: D632A338AD23D148, 443F3A637F4D7978
// reference: AC2F0FF1C0E4C350, D720054CA459F09E
// reference: 357A77B0408090D3, D720054CA459F09E
// reference: 2BD31BFD0D83339A, 55874CEC27B2C8CA
// reference: 3C9631B7634255FB, 55874CEC27B2C8CA
// shader: 8B31, 41CA3647950487A0

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();
bool sub_123_126();
bool sub_135_138();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 120: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 121: call
    {
        sub_0_8();
    }
    // 122: ifu
    if (uniforms.b[8]) {
        sub_123_126();
    }
    // 126: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 127: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 128: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 129: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 130: mov
    vs_out_attr3 = reg_tmp2;
    // 131: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 132: mov
    reg_tmp0.xy = (uniforms.f[95].yyyy).xy;
    // 133: call
    {
        sub_0_8();
    }
    // 134: ifu
    if (uniforms.b[9]) {
        sub_135_138();
    }
    // 138: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 139: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 140: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 141: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 142: mov
    vs_out_attr4 = reg_tmp2;
    // 143: mov
    reg_tmp0.xy = (uniforms.f[95].zzzz).xy;
    // 144: call
    {
        sub_0_8();
    }
    // 145: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 146: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 147: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 148: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 149: mov
    vs_out_attr5 = reg_tmp2;
    // 150: mov
    vs_out_attr6 = vs_in_reg8;
    // 151: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_123_126() {
    // 123: dp4
    reg_tmp2.x = dot(uniforms.f[13], reg_tmp0);
    // 124: dp4
    reg_tmp2.y = dot(uniforms.f[14], reg_tmp0);
    // 125: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
bool sub_135_138() {
    // 135: dp4
    reg_tmp2.x = dot(uniforms.f[15], reg_tmp0);
    // 136: dp4
    reg_tmp2.y = dot(uniforms.f[16], reg_tmp0);
    // 137: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
// reference: 3F2BC36505ACB534, 41CA3647950487A0
// shader: 8B30, EBA7F9B9C89EF964

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 texcolor2 = textureLod(tex2, texcoord2, getLod(texcoord2 * vec2(textureSize(tex2, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) + (1.0 - texcolor1.r) - 0.5, 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a) * (const_color[2].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((rounded_primary_color.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (combiner_buffer.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (const_color[5].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (1.0 - texcolor2.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 866920BFC016F6E7, EBA7F9B9C89EF964
// program: 41CA3647950487A0, 1558286C47B9A4C4, EBA7F9B9C89EF964
// reference: 3F2BC3655E7147F0, 41CA3647950487A0
// reference: B28663BC86F8BD1D, 55874CEC27B2C8CA
// reference: E1F548900ECAAF32, 41CA3647950487A0
// shader: 8B30, 4C8F75F3E3847C5A

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) + (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (const_color[1].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a) * (const_color[2].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 5352E8CE7F181D99, 4C8F75F3E3847C5A
// program: 41CA3647950487A0, 1558286C47B9A4C4, 4C8F75F3E3847C5A
// shader: 8B31, 2B9B09D90203AAE2

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 120: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 121: call
    {
        sub_0_8();
    }
    // 122: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 123: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 124: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 125: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 126: mov
    vs_out_attr3 = reg_tmp2;
    // 127: mov
    vs_out_attr4 = vs_in_reg6;
    // 128: mov
    vs_out_attr5 = vs_in_reg7;
    // 129: mov
    vs_out_attr6 = vs_in_reg8;
    // 130: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
// reference: 8B652FC9F4DC85FD, 2B9B09D90203AAE2
// shader: 8B30, 3AAC5B12D5F9EEF7

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = (lut_scale_rr * LookupLightingLUTUnsigned(6, max(dot(normal, normalize(half_vector)), 0.0)));
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (refl_value * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rrr) * (const_color[0].rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((combiner_buffer.rgb) * (const_color[2].aaa) + (last_tex_env_out.rgb) * (vec3(1.0) - (const_color[2].aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((combiner_buffer.a) * (const_color[2].a) + (last_tex_env_out.a) * (1.0 - (const_color[2].a)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (const_color[4].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: C0189A31418C1E09, 3AAC5B12D5F9EEF7
// program: 2B9B09D90203AAE2, 1558286C47B9A4C4, 3AAC5B12D5F9EEF7
// reference: 8B652FC9117F9C6F, 82F45F9CBD575AD0
// reference: 1D2650D1F4917957, 443F3A637F4D7978
// reference: 673BFC1899566B4F, D720054CA459F09E
// reference: FE6E8459193238CC, D720054CA459F09E
// shader: 8B30, 63BB2D85E2DDFB2C

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (const_color[0].rrr), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) * (const_color[0].a) + (texcolor0.a) * (1.0 - (const_color[0].a)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb) * (texcolor0.rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb) + (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((combiner_buffer.a) - (1.0 - rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (const_color[3].rrr) + (combiner_buffer.rgb) * (vec3(1.0) - (const_color[3].rrr)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (const_color[3].g) + (combiner_buffer.a) * (1.0 - (const_color[3].g)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (const_color[4].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4 * 1.0, alpha_output_4 * 4.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (const_color[5].b) + (combiner_buffer.a) * (1.0 - (const_color[5].b)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

if (int(last_tex_env_out.a * 255.0) <= alphatest_ref) discard;
gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: D2E18E61E62EF30D, 63BB2D85E2DDFB2C
// program: 6F902B0607BA614A, 1558286C47B9A4C4, 63BB2D85E2DDFB2C
// shader: 8B30, D6B3AB8C46ABE2FA

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = (lut_scale_rr * LookupLightingLUTUnsigned(6, max(dot(normal, normalize(half_vector)), 0.0)));
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (refl_value * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a) - (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0 * 1.0, alpha_output_0 * 2.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (texcolor0.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

combiner_buffer = next_combiner_buffer;

gl_FragDepth = depth;
color = byteround(last_tex_env_out);
}
// reference: 121C4F42D769F006, D6B3AB8C46ABE2FA
// program: 41CA3647950487A0, 1558286C47B9A4C4, D6B3AB8C46ABE2FA
// reference: 78A030D18EAEFCB1, 41CA3647950487A0
// shader: 8B30, 74F2A7AF93760CF9

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = (lut_scale_rr * LookupLightingLUTUnsigned(6, max(dot(normal, normalize(half_vector)), 0.0)));
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (refl_value * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) + (const_color[0].a) - 0.5, 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (const_color[1].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (const_color[1].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
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
// reference: 3C0BC44095028EBA, 74F2A7AF93760CF9
// program: 41CA3647950487A0, 1558286C47B9A4C4, 74F2A7AF93760CF9
// reference: 6C58E849D64355DF, 55874CEC27B2C8CA
// shader: 8B31, 82F21E121B4A1DE3

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();
bool sub_129_132();
bool sub_140_143();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: rcp
    reg_tmp0.w = rcp_safe(reg_tmp10.wwww.x);
    // 120: mul
    reg_tmp0.xy = (mul_safe(reg_tmp10.xyyy, reg_tmp0.wwww)).xy;
    // 121: mul
    reg_tmp1.xy = (mul_safe(uniforms.f[18].xxxx, reg_tmp0.xyyy)).xy;
    // 122: add
    reg_tmp1.xy = (uniforms.f[18].xxxx + reg_tmp1.yxxx).xy;
    // 123: mov
    reg_tmp0.xy = (uniforms.f[17].yyyy).xy;
    // 124: add
    reg_tmp14.xy = (reg_tmp0.xxxx + -reg_tmp1.xyyy).xy;
    // 125: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 126: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 127: call
    {
        sub_0_8();
    }
    // 128: ifu
    if (uniforms.b[8]) {
        sub_129_132();
    }
    // 132: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 133: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 134: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 135: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 136: mov
    vs_out_attr3 = reg_tmp2;
    // 137: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 138: mov
    reg_tmp0.xy = (reg_tmp14.xyyy).xy;
    // 139: ifu
    if (uniforms.b[9]) {
        sub_140_143();
    }
    // 143: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 144: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 145: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 146: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 147: mov
    vs_out_attr4 = reg_tmp2;
    // 148: mov
    vs_out_attr5 = vs_in_reg7;
    // 149: mov
    vs_out_attr6 = vs_in_reg8;
    // 150: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_129_132() {
    // 129: dp4
    reg_tmp2.x = dot(uniforms.f[13], reg_tmp0);
    // 130: dp4
    reg_tmp2.y = dot(uniforms.f[14], reg_tmp0);
    // 131: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
bool sub_140_143() {
    // 140: dp4
    reg_tmp2.x = dot(uniforms.f[15], reg_tmp0);
    // 141: dp4
    reg_tmp2.y = dot(uniforms.f[16], reg_tmp0);
    // 142: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
// reference: 7FD7CA1A098A6545, 82F21E121B4A1DE3
// shader: 8B30, A12AA4F561CC688F

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) + (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (const_color[1].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (texcolor1.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a) * (texcolor1.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3 * 1.0, alpha_output_3 * 4.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (const_color[4].a) + (combiner_buffer.a) * (1.0 - (const_color[4].a)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (const_color[5].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 9207AC2772F87C55, A12AA4F561CC688F
// program: 82F21E121B4A1DE3, 1558286C47B9A4C4, A12AA4F561CC688F
// reference: 7FD7CA1A52579781, 82F21E121B4A1DE3
// reference: BE3E42B305ACB534, 41CA3647950487A0
// reference: 396CAED9599E0120, 6F902B0607BA614A
// reference: 8ACFDEF9F4DC85FD, 2B9B09D90203AAE2
// reference: 7FD7CA1AB237AC6C, 82F21E121B4A1DE3
// reference: 72E6E5A547F29C40, 2B9B09D90203AAE2
// reference: 72E6E5A5A25185D2, 82F45F9CBD575AD0
// reference: E4A59ABD47BF60EA, 443F3A637F4D7978
// reference: 9EB836742A7872F2, D720054CA459F09E
// reference: 07ED4E35AA1C2171, D720054CA459F09E
// reference: 661E3D3DD963A119, 55874CEC27B2C8CA
// reference: FF4B457C5907F29A, 55874CEC27B2C8CA
// reference: B28663BC8F4FAB56, 2B9B09D90203AAE2
// shader: 8B30, D9F99AB5F099EE0B

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = (lut_scale_rr * LookupLightingLUTUnsigned(6, max(dot(normal, normalize(half_vector)), 0.0)));
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (refl_value * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rrr) * (const_color[0].rgb) + (rounded_primary_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((combiner_buffer.rgb) * (const_color[2].aaa) + (last_tex_env_out.rgb) * (vec3(1.0) - (const_color[2].aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((combiner_buffer.a) * (const_color[2].a) + (last_tex_env_out.a) * (1.0 - (const_color[2].a)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (const_color[3].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (const_color[4].a), 0.0, 1.0));
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
// reference: 93990E20418C1E09, D9F99AB5F099EE0B
// program: 2B9B09D90203AAE2, 1558286C47B9A4C4, D9F99AB5F099EE0B
// reference: B28663BCD4925992, 2B9B09D90203AAE2
// reference: B28663BC31314000, 82F45F9CBD575AD0
// reference: 24C51CA4D4DFA538, 443F3A637F4D7978
// reference: 5ED8B06DB918B720, D720054CA459F09E
// reference: C78DC82C397CE4A3, D720054CA459F09E
// reference: 2BD31BFD5D411C5A, 55874CEC27B2C8CA
// reference: B28663BCDD254FD9, 55874CEC27B2C8CA
// reference: 3F2BC365BFD7C68C, 6EA06923EE199867
// shader: 8B30, D0EEBCBBC4EA66E2

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = (lut_scale_rr * LookupLightingLUTUnsigned(6, max(dot(normal, normalize(half_vector)), 0.0)));
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (refl_value * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((vec3(1.0) - primary_fragment_color.aaa) * (vec3(1.0) - const_color[1].aaa) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
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
// reference: F507E25A69330965, D0EEBCBBC4EA66E2
// program: 6EA06923EE199867, 1558286C47B9A4C4, D0EEBCBBC4EA66E2
// reference: B28663BC6AECB2C4, 82F45F9CBD575AD0
// shader: 8B30, 77367DAEBAD0D6B0

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) + (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (const_color[1].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].aaa), vec3(0.0), vec3(1.0)));
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
// reference: 1AAD98A13E08E26C, 77367DAEBAD0D6B0
// program: 41CA3647950487A0, 1558286C47B9A4C4, 77367DAEBAD0D6B0
// shader: 8B30, 952B918DBAD0D6B0

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) + (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) * (const_color[1].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].aaa), vec3(0.0), vec3(1.0)));
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
// reference: C4A7B6513E08E26C, 952B918DBAD0D6B0
// program: 41CA3647950487A0, 1558286C47B9A4C4, 952B918DBAD0D6B0
// reference: 2F8375A36D752A10, F4AB42537C5F2172
// reference: 2F8375A336A8D8D4, F4AB42537C5F2172
// reference: 9C2005837E49459B, 82F45F9CBD575AD0
// reference: 0A637A9B9BA7A0A3, 443F3A637F4D7978
// reference: 707ED652F660B2BB, D720054CA459F09E
// reference: E92BAE137604E138, D720054CA459F09E
// shader: 8B31, 94E2D7951CBF5508

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_8_26();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();
bool sub_125_128();
bool sub_136_139();
bool sub_152_153();
bool sub_154_190();
bool sub_156_166();
bool sub_168_189();
bool sub_169_171();
bool sub_172_180();
bool sub_182_188();
bool sub_190_191();
bool sub_192_198();
bool sub_195_196();
bool sub_196_197();
bool sub_198_199();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_8_26() {
    // 8: add
    reg_tmp0.xyz = (reg_tmp2.xyzz + -reg_tmp8.xyzz).xyz;
    // 9: dp3
    reg_tmp0.w = dot(vec3(reg_tmp0.xyzz), vec3(reg_tmp0.xyzz));
    // 10: rsq
    reg_tmp6.xyz = vec3(rsq_safe(reg_tmp0.wwww.x));
    // 11: mul
    reg_tmp0.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp6.xxxx)).xyz;
    // 12: rcp
    reg_tmp0.w = rcp_safe(reg_tmp6.xxxx.x);
    // 13: dp3
    reg_tmp1.x = dot(vec3(reg_tmp4), vec3(reg_tmp0.xyzz));
    // 14: max
    reg_tmp6.x = (max(uniforms.f[17].xxxy, reg_tmp1.xxxx)).x;
    // 15: min
    reg_tmp1.x = (min(uniforms.f[17].yyyy, reg_tmp6.xxxx)).x;
    // 16: add
    reg_tmp6.x = (reg_tmp0.wwww + -reg_tmp3.xxxx).x;
    // 17: add
    reg_tmp6.z = (reg_tmp3.yyyy + -reg_tmp3.xxxx).z;
    // 18: rcp
    reg_tmp6.y = rcp_safe(reg_tmp6.zzzz.x);
    // 19: mul
    reg_tmp6.z = (mul_safe(reg_tmp6.xxxx, reg_tmp6.yyyy)).z;
    // 20: min
    reg_tmp6.x = (min(uniforms.f[17].yyyy, reg_tmp6.zzzz)).x;
    // 21: max
    reg_tmp6.y = (max(uniforms.f[17].xxxx, reg_tmp6.xxxx)).y;
    // 22: add
    reg_tmp6.x = (uniforms.f[17].yyyy + -reg_tmp6.yyyy).x;
    // 23: mul
    reg_tmp1.x = (mul_safe(reg_tmp1.xxxx, reg_tmp6.xxxx)).x;
    // 24: mul
    reg_tmp6.xyz = (mul_safe(uniforms.f[80].xyzz, reg_tmp14.xyzz)).xyz;
    // 25: mul
    reg_tmp5.xyz = (mul_safe(reg_tmp6.xyzz, reg_tmp1.xxxx)).xyz;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0 = reg_tmp3.xyzz;
    // 120: mul
    reg_tmp1.xy = (mul_safe(uniforms.f[18].xxxx, reg_tmp0.xyyy)).xy;
    // 121: add
    reg_tmp11.xy = (uniforms.f[18].xxxx + reg_tmp1.xyyy).xy;
    // 122: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 123: mov
    reg_tmp0.xy = (reg_tmp11.xyyy).xy;
    // 124: ifu
    if (uniforms.b[8]) {
        sub_125_128();
    }
    // 128: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 129: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 130: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 131: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 132: mov
    vs_out_attr3 = reg_tmp2;
    // 133: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 134: mov
    reg_tmp0.xy = (reg_tmp11.xyyy).xy;
    // 135: ifu
    if (uniforms.b[9]) {
        sub_136_139();
    }
    // 139: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 140: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 141: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 142: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 143: mov
    vs_out_attr4 = reg_tmp2;
    // 144: mov
    reg_tmp0.xy = (uniforms.f[95].zzzz).xy;
    // 145: call
    {
        sub_0_8();
    }
    // 146: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 147: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 148: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 149: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 150: mov
    vs_out_attr5 = reg_tmp2;
    // 151: ifu
    if (uniforms.b[7]) {
        sub_152_153();
    }
    // 153: ifu
    if (uniforms.b[11]) {
        sub_154_190();
    } else {
        sub_190_191();
    }
    // 191: ifu
    if (uniforms.b[7]) {
        sub_192_198();
    } else {
        sub_198_199();
    }
    // 199: mov
    vs_out_attr6 = reg_tmp11;
    // 200: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_125_128() {
    // 125: dp4
    reg_tmp2.x = dot(uniforms.f[13], reg_tmp0);
    // 126: dp4
    reg_tmp2.y = dot(uniforms.f[14], reg_tmp0);
    // 127: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
bool sub_136_139() {
    // 136: dp4
    reg_tmp2.x = dot(uniforms.f[15], reg_tmp0);
    // 137: dp4
    reg_tmp2.y = dot(uniforms.f[16], reg_tmp0);
    // 138: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
bool sub_152_153() {
    // 152: mov
    reg_tmp10 = uniforms.f[17].xxyx;
    return false;
}
bool sub_154_190() {
    // 154: mov
    reg_tmp11.xyz = (uniforms.f[17].xxxy).xyz;
    // 155: ifu
    if (uniforms.b[6]) {
        sub_156_166();
    }
    // 166: nop
    // 167: ifu
    if (uniforms.b[5]) {
        sub_168_189();
    }
    // 189: nop
    return false;
}
bool sub_156_166() {
    // 156: max
    reg_tmp13.x = (max(uniforms.f[17].xxxx, reg_tmp4.yyyy)).x;
    // 157: mul
    reg_tmp0.xyz = (mul_safe(uniforms.f[93].xyzz, reg_tmp13.xxxx)).xyz;
    // 158: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp0.xyzz).xyz;
    // 159: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 160: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    // 161: max
    reg_tmp13.x = (max(uniforms.f[17].xxxx, -reg_tmp4.yyyy)).x;
    // 162: mul
    reg_tmp0.xyz = (mul_safe(uniforms.f[94].xyzz, reg_tmp13.xxxx)).xyz;
    // 163: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp0.xyzz).xyz;
    // 164: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 165: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    return false;
}
bool sub_168_189() {
    // 168: ifu
    if (uniforms.b[7]) {
        sub_169_171();
    }
    // 171: loop
    address_registers.z = int(uniforms.i[0].y);
    for (uint loop171 = 0u; loop171 <= uniforms.i[0].x; address_registers.z += int(uniforms.i[0].z), ++loop171) {
        sub_172_180();
    }
    // 180: nop
    // 181: ifu
    if (uniforms.b[7]) {
        sub_182_188();
    }
    // 188: nop
    return false;
}
bool sub_169_171() {
    // 169: max
    reg_tmp10.x = (max(reg_tmp11.xxxx, reg_tmp11.yyyy)).x;
    // 170: max
    reg_tmp10.x = (max(reg_tmp10.xxxx, reg_tmp11.zzzz)).x;
    return false;
}
bool sub_172_180() {
    // 172: mov
    reg_tmp14.xyz = (uniforms.f[81 + address_registers.z].xyzz).xyz;
    // 173: mov
    reg_tmp3.x = (uniforms.f[81 + address_registers.z].wwww).x;
    // 174: mov
    reg_tmp2.xyz = (uniforms.f[87 + address_registers.z].xyzz).xyz;
    // 175: mov
    reg_tmp3.y = (uniforms.f[87 + address_registers.z].wwww).y;
    // 176: call
    {
        sub_8_26();
    }
    // 177: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp5.xyzz).xyz;
    // 178: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 179: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    return false;
}
bool sub_182_188() {
    // 182: max
    reg_tmp10.y = (max(reg_tmp11.xxxx, reg_tmp11.yyyy)).y;
    // 183: max
    reg_tmp10.y = (max(reg_tmp10.yyyy, reg_tmp11.zzzz)).y;
    // 184: add
    reg_tmp10.z = (reg_tmp10.yyyy + -reg_tmp10.xxxx).z;
    // 185: max
    reg_tmp10.z = (max(uniforms.f[17].xxxx, reg_tmp10.zzzz)).z;
    // 186: min
    reg_tmp10.z = (min(uniforms.f[17].yyyy, reg_tmp10.zzzz)).z;
    // 187: add
    reg_tmp10.z = (uniforms.f[17].yyyy + -reg_tmp10.zzzz).z;
    return false;
}
bool sub_190_191() {
    // 190: mov
    reg_tmp11.xyz = (uniforms.f[17].yyyy).xyz;
    return false;
}
bool sub_192_198() {
    // 192: mov
    reg_tmp13.w = (uniforms.f[95].wwww).w;
    // 193: cmp
    conditional_code = lessThan(vec2(reg_tmp8.zzzz), vec2(reg_tmp13.wwww));
    // 194: ifc
    if (conditional_code.x) {
        sub_195_196();
    } else {
        sub_196_197();
    }
    // 197: nop
    return false;
}
bool sub_195_196() {
    // 195: mov
    reg_tmp11.w = (reg_tmp10.zzzz).w;
    return false;
}
bool sub_196_197() {
    // 196: mov
    reg_tmp11.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_198_199() {
    // 198: mov
    reg_tmp11.w = (uniforms.f[17].xxxx).w;
    return false;
}
// reference: AD33DD3852E85329, 94E2D7951CBF5508
// shader: 8B30, 4E83C7CF49609816

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(half_vector)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + ((lut_scale_d1 * LookupLightingLUTUnsigned(1, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor2.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor0.r) + (texcolor1.r), 1.0) * (const_color[0].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((rounded_primary_color.rgb) * (texcolor2.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp(min((last_tex_env_out.a) + (primary_fragment_color.a), 1.0) * (texcolor2.b), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((const_color[2].rgb) * (last_tex_env_out.aaa) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp(min((rounded_primary_color.aaa) + (const_color[3].rgb), vec3(1.0)) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (vec3(1.0) - const_color[4].aaa) + (texcolor2.rgb) * (vec3(1.0) - (vec3(1.0) - const_color[4].aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((const_color[4].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp(min((last_tex_env_out.rgb) + (combiner_buffer.aaa), vec3(1.0)) * (const_color[5].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 574ADF8B3546C2AB, 4E83C7CF49609816
// program: 94E2D7951CBF5508, 1558286C47B9A4C4, 4E83C7CF49609816
// reference: AD33DD380935A1ED, 94E2D7951CBF5508
// reference: 1DB1D8D3D288990D, ABE423D42131D4F5
// reference: 1DB1D8D389556BC9, ABE423D42131D4F5
// reference: 0401EC38C9BC97C5, 9E3E8FC48E73AA5F
// reference: 0401EC3892616501, 9E3E8FC48E73AA5F
// reference: B28663BCB3242135, 55874CEC27B2C8CA
// reference: B28663BCE8F9D3F1, 55874CEC27B2C8CA
// reference: 3F2BC3653B6FF418, 41CA3647950487A0
// reference: 3F2BC36560B206DC, 41CA3647950487A0
// reference: B28663BCB83BFC31, 55874CEC27B2C8CA
// reference: 2F8375A353B66B3C, F4AB42537C5F2172
// reference: 2F8375A3086B99F8, F4AB42537C5F2172
// reference: 9C200583408A04B7, 82F45F9CBD575AD0
// reference: 0A637A9BA564E18F, 443F3A637F4D7978
// reference: 707ED652C8A3F397, D720054CA459F09E
// reference: E92BAE1348C7A014, D720054CA459F09E
// reference: 84E4A0920931384A, ABE423D42131D4F5
// reference: B28663BCB18CEA7A, 2B9B09D90203AAE2
// reference: B28663BCEA5118BE, 2B9B09D90203AAE2
// reference: B28663BC0FF2012C, 82F45F9CBD575AD0
// reference: 24C51CA4EA1CE414, 443F3A637F4D7978
// reference: 5ED8B06D87DBF60C, D720054CA459F09E
// reference: C78DC82C07BFA58F, D720054CA459F09E
// reference: 38C65FE9675D400C, 6F902B0607BA614A
// reference: 8B652FC9CA1FC4D1, 2B9B09D90203AAE2
// reference: 8B652FC92FBCDD43, 82F45F9CBD575AD0
// reference: 1D2650D1CA52387B, 443F3A637F4D7978
// reference: 673BFC18A7952A63, D720054CA459F09E
// reference: FE6E845927F179E0, D720054CA459F09E
// reference: 38C65FE93C80B2C8, 6F902B0607BA614A
// reference: E1F548903009EE1E, 41CA3647950487A0
// reference: B28663BC542FF3E8, 82F45F9CBD575AD0
// reference: 38C65FE93668D059, F4AB42537C5F2172
// reference: 8B652FC97E894D16, 82F45F9CBD575AD0
// reference: 1D2650D19B67A82E, 443F3A637F4D7978
// reference: 673BFC18F6A0BA36, D720054CA459F09E
// reference: FE6E845976C4E9B5, D720054CA459F09E
// reference: 3F2BC36568C6FEA7, 82F45F9CBD575AD0
// reference: A968BC7D8D281B9F, 443F3A637F4D7978
// reference: D37510B4E0EF0987, D720054CA459F09E
// reference: 4A2068F5608B5A04, D720054CA459F09E
// reference: 78A030D1B06DBD9D, 41CA3647950487A0
// reference: 7FD7CA1A8CF4ED40, 82F21E121B4A1DE3
// reference: BE3E42B33009EE1E, 41CA3647950487A0
// reference: 396CAED9675D400C, 6F902B0607BA614A
// reference: 8ACFDEF9CA1FC4D1, 2B9B09D90203AAE2
// reference: 72E6E5A57931DD6C, 2B9B09D90203AAE2
// reference: 72E6E5A59C92C4FE, 82F45F9CBD575AD0
// reference: E4A59ABD797C21C6, 443F3A637F4D7978
// reference: 9EB8367414BB33DE, D720054CA459F09E
// reference: 07ED4E3594DF605D, D720054CA459F09E
// reference: 3F2BC365811487A0, 6EA06923EE199867
// reference: E1F548908603FD33, 2B9B09D90203AAE2
// reference: E1F5489063A0E4A1, 82F45F9CBD575AD0
// reference: 77B63788864E0199, 443F3A637F4D7978
// reference: 0DAB9B41EB891381, D720054CA459F09E
// reference: 94FEE3006BED4002, D720054CA459F09E
// reference: 9C200583A5291D25, 2B9B09D90203AAE2
// reference: B28663BC04EDDC28, 82F45F9CBD575AD0
// reference: B28663BC5F302EEC, 82F45F9CBD575AD0
// reference: 24C51CA4BADECBD4, 443F3A637F4D7978
// reference: 5ED8B06DD719D9CC, D720054CA459F09E
// reference: C78DC82C577D8A4F, D720054CA459F09E
// reference: B28663BCE14EC5BA, 2B9B09D90203AAE2
// reference: B28663BCBA93377E, 2B9B09D90203AAE2
// shader: 8B31, 774796804452214B

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();
bool sub_131_134();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 120: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 121: call
    {
        sub_0_8();
    }
    // 122: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 123: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 124: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 125: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 126: mov
    vs_out_attr3 = reg_tmp2;
    // 127: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 128: mov
    reg_tmp0.xy = (uniforms.f[95].yyyy).xy;
    // 129: call
    {
        sub_0_8();
    }
    // 130: ifu
    if (uniforms.b[9]) {
        sub_131_134();
    }
    // 134: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 135: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 136: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 137: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 138: mov
    vs_out_attr4 = reg_tmp2;
    // 139: mov
    reg_tmp0.xy = (uniforms.f[95].zzzz).xy;
    // 140: call
    {
        sub_0_8();
    }
    // 141: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 142: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 143: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 144: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 145: mov
    vs_out_attr5 = reg_tmp2;
    // 146: mov
    vs_out_attr6 = vs_in_reg8;
    // 147: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_131_134() {
    // 131: dp4
    reg_tmp2.x = dot(uniforms.f[15], reg_tmp0);
    // 132: dp4
    reg_tmp2.y = dot(uniforms.f[16], reg_tmp0);
    // 133: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
// reference: 3F2BC36573C50E7F, 774796804452214B
// shader: 8B30, 9BAB9D29AEF36710

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = (lut_scale_rr * LookupLightingLUTUnsigned(6, max(dot(normal, normalize(half_vector)), 0.0)));
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
specular_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (refl_value * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) + (const_color[0].a) - 0.5, 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb) * (secondary_fragment_color.aaa) + (last_tex_env_out.rgb) * (vec3(1.0) - (secondary_fragment_color.aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((texcolor2.rgb) * (vec3(1.0) - secondary_fragment_color.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((texcolor1.r) * (const_color[2].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (texcolor0.r) + (last_tex_env_out.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((const_color[4].rgb) * (last_tex_env_out.aaa) + (combiner_buffer.rgb) * (vec3(1.0) - (last_tex_env_out.aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (const_color[5].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((combiner_buffer.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 361595F9CBE52A8F, 9BAB9D29AEF36710
// program: 774796804452214B, 1558286C47B9A4C4, 9BAB9D29AEF36710
// reference: 3F2BC36522C8DAFF, 2B9B09D90203AAE2
// reference: 1ED8EA78418C1E09, D9F99AB5F099EE0B
// reference: 3F2BC3657915283B, 2B9B09D90203AAE2
// reference: 4D597E69418C1E09, 3AAC5B12D5F9EEF7
// reference: 3F2BC3659CB631A9, 82F45F9CBD575AD0
// reference: B2DA7C80744F75C5, C8096B09A214E787
// reference: A968BC7D7958D491, 443F3A637F4D7978
// reference: 6761966D9537D39A, 7FDFB08AA001B9CC
// reference: D37510B4149FC689, D720054CA459F09E
// reference: B760AA4C2968D6EB, DAC934827CE046A0
// reference: 4A2068F594FB950A, D720054CA459F09E
// reference: 882182362968D6EB, 51FC9310092F95FF
// shader: 8B30, 15BE5516D2D8B298

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(half_vector)), 0.0)));
specular_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(half_vector)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + ((lut_scale_d1 * LookupLightingLUTUnsigned(1, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) + (const_color[0].a) - 0.5, 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.aaa) + (combiner_buffer.rgb) * (vec3(1.0) - (rounded_primary_color.aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (const_color[4].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (const_color[4].a), 0.0, 1.0));
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
// reference: 07196D040291B4F7, 15BE5516D2D8B298
// program: ABE423D42131D4F5, 1558286C47B9A4C4, 15BE5516D2D8B298
// shader: 8B30, BEA9C7776C8C5D09

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
specular_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + ((lut_scale_d1 * LookupLightingLUTUnsigned(1, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((1.0 - const_color[0].r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp(min((const_color[1].a) + (const_color[1].r), 1.0) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (rounded_primary_color.aaa) + (combiner_buffer.rgb) * (vec3(1.0) - (rounded_primary_color.aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (combiner_buffer.aaa) + (last_tex_env_out.rgb) * (vec3(1.0) - (combiner_buffer.aaa)), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4 * 2.0, alpha_output_4 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (const_color[5].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 7699F51C6DFBEBE7, BEA9C7776C8C5D09
// program: ABE423D42131D4F5, 1558286C47B9A4C4, BEA9C7776C8C5D09
// reference: E1F54890CFF5F83A, 774796804452214B
// reference: E1F5489094280AFE, 774796804452214B
// reference: E1F54890C525DE7E, 2B9B09D90203AAE2
// reference: E1F548909EF82CBA, 2B9B09D90203AAE2
// reference: E1F548907B5B3528, 82F45F9CBD575AD0
// reference: 77B637889EB5D010, 443F3A637F4D7978
// reference: 0DAB9B41F372C208, D720054CA459F09E
// reference: 94FEE3007316918B, D720054CA459F09E
// reference: E1F548902086C7EC, 82F45F9CBD575AD0
// reference: 3F2BC365C76BC36D, 82F45F9CBD575AD0
// reference: 5FA06A390A99180E, E26E9C9BEE44BF6A
// reference: DE130C967F181D99, 4C8F75F3E3847C5A
// reference: E1F548900F755729, 774796804452214B
// reference: E1F5489054A8A5ED, 774796804452214B
// reference: E1F5489005A5716D, 2B9B09D90203AAE2
// reference: E1F548905E7883A9, 2B9B09D90203AAE2
// reference: E1F54890BBDB9A3B, 82F45F9CBD575AD0
// reference: 77B637885E357F03, 443F3A637F4D7978
// reference: 0DAB9B4133F26D1B, D720054CA459F09E
// reference: 94FEE300B3963E98, D720054CA459F09E
// reference: 3F2BC365DAC97564, 6EA06923EE199867
// reference: 8B652FC974612F87, 82F45F9CBD575AD0
// reference: 72E6E5A5C74F363A, 82F45F9CBD575AD0
// reference: 276B3AF2B06DBD9D, 41CA3647950487A0
// reference: 7FD7CA1A67F2CCAB, 82F21E121B4A1DE3
// reference: 7FD7CA1A6C94D6AD, 82F21E121B4A1DE3
// reference: 7FD7CA1AB0CA6A49, 82F21E121B4A1DE3
// reference: E05FB9A03009EE1E, 41CA3647950487A0
// reference: 3F2BC365331B0C63, 82F45F9CBD575AD0
// reference: 3F2BC3655FCEBFEB, 774796804452214B
// reference: 3F2BC365EB6072F9, 82F45F9CBD575AD0
// reference: 3F2BC365B0BD803D, 82F45F9CBD575AD0
// reference: A968BC7D55536505, 443F3A637F4D7978
// reference: D37510B43894771D, D720054CA459F09E
// reference: 4A2068F5B8F0249E, D720054CA459F09E
// reference: E1F54890387D1665, 82F45F9CBD575AD0
// reference: BE3E42B33B6FF418, 41CA3647950487A0
// reference: 3F2BC365D6B815F1, 2B9B09D90203AAE2
// reference: 3F2BC3658D65E735, 2B9B09D90203AAE2
// reference: 7D18486C59940AF3, 75EB489DF63B9F3C
// reference: 7D18486C0249F837, 75EB489DF63B9F3C
// reference: D2450D250A08145E, 6EA06923EE199867
// reference: 5FE8ADFC3838B2CB, 55874CEC27B2C8CA
// reference: D2450D2509177AEE, 41CA3647950487A0
// reference: D2450D2552CA882A, 41CA3647950487A0
// reference: BDF24F1C3F16B60E, 6F902B0607BA614A
// reference: BDF24F1C64CB44CA, 6F902B0607BA614A
// reference: 0E513F3C2C2AD985, 82F45F9CBD575AD0
// reference: 0E513F3C77F72B41, 82F45F9CBD575AD0
// reference: 98124024C9C43CBD, 443F3A637F4D7978
// reference: E20FECEDA4032EA5, D720054CA459F09E
// reference: 7B5A94AC24677D26, D720054CA459F09E
// reference: D2450D2501638295, 82F45F9CBD575AD0
// reference: D2450D255ABE7051, 82F45F9CBD575AD0
// reference: 4406723DBF509569, 443F3A637F4D7978
// reference: 3E1BDEF4D2978771, D720054CA459F09E
// reference: A74EA6B552F3D4F2, D720054CA459F09E
// reference: 64C15865339FEAD8, 41CA3647950487A0
// reference: 64C158656842181C, 41CA3647950487A0
// reference: 0E513F3CC989C017, 2B9B09D90203AAE2
// reference: 64C158653BEB12A3, 82F45F9CBD575AD0
// reference: 64C158656036E067, 82F45F9CBD575AD0
// reference: F282277D85D8055F, 443F3A637F4D7978
// reference: 889F8BB4E81F1747, D720054CA459F09E
// reference: 11CAF3F5687B44C4, D720054CA459F09E
// reference: FD942024B3FBB95B, 41CA3647950487A0
// reference: 64C15865DE480B31, 2B9B09D90203AAE2
// reference: 64C158658595F9F5, 2B9B09D90203AAE2
// reference: D2450D25E4C09B07, 2B9B09D90203AAE2
// reference: D2450D25BF1D69C3, 2B9B09D90203AAE2
// shader: 8B31, 38FC610E14E99963

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_105_106();
bool sub_109_119();
bool sub_115_117();
bool sub_117_118();
bool sub_119_120();
bool sub_125_128();
bool sub_137_140();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: ifu
    if (uniforms.b[10]) {
        sub_105_106();
    }
    // 106: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 107: mov
    vs_out_attr0 = reg_tmp10;
    // 108: ifu
    if (uniforms.b[4]) {
        sub_109_119();
    } else {
        sub_119_120();
    }
    // 120: mov
    vs_out_attr2 = -reg_tmp12;
    // 121: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 122: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 123: call
    {
        sub_0_8();
    }
    // 124: ifu
    if (uniforms.b[8]) {
        sub_125_128();
    }
    // 128: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 129: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 130: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 131: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 132: mov
    vs_out_attr3 = reg_tmp2;
    // 133: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 134: mov
    reg_tmp0.xy = (uniforms.f[95].yyyy).xy;
    // 135: call
    {
        sub_0_8();
    }
    // 136: ifu
    if (uniforms.b[9]) {
        sub_137_140();
    }
    // 140: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 141: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 142: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 143: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 144: mov
    vs_out_attr4 = reg_tmp2;
    // 145: mov
    vs_out_attr5 = vs_in_reg7;
    // 146: mov
    vs_out_attr6 = vs_in_reg8;
    // 147: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_105_106() {
    // 105: add
    reg_tmp12.z = (-uniforms.f[80].wwww + reg_tmp12.zzzz).z;
    return false;
}
bool sub_109_119() {
    // 109: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 110: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 111: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 112: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 113: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 114: ifc
    if (!conditional_code.x) {
        sub_115_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_115_117() {
    // 115: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 116: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_119_120() {
    // 119: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_125_128() {
    // 125: dp4
    reg_tmp2.x = dot(uniforms.f[13], reg_tmp0);
    // 126: dp4
    reg_tmp2.y = dot(uniforms.f[14], reg_tmp0);
    // 127: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
bool sub_137_140() {
    // 137: dp4
    reg_tmp2.x = dot(uniforms.f[15], reg_tmp0);
    // 138: dp4
    reg_tmp2.y = dot(uniforms.f[16], reg_tmp0);
    // 139: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
// reference: 38C65FE91A6011E7, 38FC610E14E99963
// shader: 8B30, E4CA59DCBBA4D7DE

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 texcolor1 = textureLod(tex1, texcoord1, getLod(texcoord1 * vec2(textureSize(tex1, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) * (const_color[0].a) + (texcolor0.a) * (1.0 - (const_color[0].a)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.aaa) * (const_color[1].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) - (1.0 - const_color[1].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.aaa) * (const_color[2].ggg) + (last_tex_env_out.rrr) * (vec3(1.0) - (const_color[2].ggg)), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a) * (const_color[2].g) + (last_tex_env_out.r) * (1.0 - (const_color[2].g)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2 * 4.0, alpha_output_2 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((const_color[3].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.r) * (combiner_buffer.b) + (last_tex_env_out.a) * (1.0 - (combiner_buffer.b)), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_4 = byteround(clamp((texcolor0.rgb) * (const_color[4].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((texcolor1.r) * (last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp(min((last_tex_env_out.rgb) + (const_color[5].rgb), vec3(1.0)) * (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (combiner_buffer.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 030A5A9D57546756, E4CA59DCBBA4D7DE
// program: 38FC610E14E99963, 1558286C47B9A4C4, E4CA59DCBBA4D7DE
// reference: 8B652FC952818CA8, 82F45F9CBD575AD0
// reference: 8B652FC9095C7E6C, 82F45F9CBD575AD0
// reference: 38C65FE941BDE323, 38FC610E14E99963
// reference: AE8520F1FF8EF4DF, 443F3A637F4D7978
// reference: D4988C389249E6C7, D720054CA459F09E
// reference: 4DCDF479122DB544, D720054CA459F09E
// reference: 4071DC200B3324B7, 82F45F9CBD575AD0
// reference: 4071DC2050EED673, 82F45F9CBD575AD0
// reference: D632A338EEDDC18F, 443F3A637F4D7978
// reference: AC2F0FF1831AD397, D720054CA459F09E
// reference: 357A77B0037E8014, D720054CA459F09E
// reference: E1F548906BD41CDA, 41CA3647950487A0
// reference: 5FA06A39E62EF30D, 63BB2D85E2DDFB2C
// reference: 3F2BC36543566591, 6EA06923EE199867
// reference: 3F2BC365188B9755, 6EA06923EE199867
// reference: 3F2BC365F49F988C, 82F45F9CBD575AD0
// reference: 3F2BC365AF426A48, 82F45F9CBD575AD0
// reference: A968BC7D11717DB4, 443F3A637F4D7978
// reference: D37510B47CB66FAC, D720054CA459F09E
// reference: 4A2068F5FCD23C2F, D720054CA459F09E
// reference: 3F2BC365113C811E, 2B9B09D90203AAE2
// reference: E1F5489013ED8D53, 6EA06923EE199867
// reference: 8B652FC994F7F066, 6EA06923EE199867
// reference: 8B652FC99D40E62D, 2B9B09D90203AAE2
// reference: 8B652FC978E3FFBF, 82F45F9CBD575AD0
// reference: 8B652FC9233E0D7B, 82F45F9CBD575AD0
// reference: 1D2650D19D0D1A87, 443F3A637F4D7978
// reference: 673BFC18F0CA089F, D720054CA459F09E
// reference: FE6E845970AE5B1C, D720054CA459F09E
// reference: B14A201895028EBA, 74F2A7AF93760CF9
// reference: 3F2BC36504134D2F, 774796804452214B
// reference: 8B652FC9B722953A, 2B9B09D90203AAE2
// reference: 3F2BC3650EC36B6B, 2B9B09D90203AAE2
// reference: 3F2BC365551E99AF, 2B9B09D90203AAE2
// reference: E618D41CD186A4F2, 38FC610E14E99963
// reference: 55BBA43C7CC4202F, 2B9B09D90203AAE2
// reference: 55BBA43C996739BD, 82F45F9CBD575AD0
// reference: 55BBA43CC2BACB79, 82F45F9CBD575AD0
// reference: E618D41C8A5B5636, 38FC610E14E99963
// reference: 705BAB04346841CA, 443F3A637F4D7978
// reference: 0A4607CD59AF53D2, D720054CA459F09E
// reference: 93137F8CD9CB0051, D720054CA459F09E
// shader: 8B31, 01FF1F9FCB124AD0

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 120: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 121: call
    {
        sub_0_8();
    }
    // 122: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 123: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 124: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 125: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 126: mov
    vs_out_attr3 = reg_tmp2;
    // 127: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 128: mov
    reg_tmp0.xy = (uniforms.f[95].yyyy).xy;
    // 129: call
    {
        sub_0_8();
    }
    // 130: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 131: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 132: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 133: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 134: mov
    vs_out_attr4 = reg_tmp2;
    // 135: mov
    reg_tmp0.xy = (uniforms.f[95].zzzz).xy;
    // 136: call
    {
        sub_0_8();
    }
    // 137: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 138: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 139: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 140: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 141: mov
    vs_out_attr5 = reg_tmp2;
    // 142: mov
    vs_out_attr6 = vs_in_reg8;
    // 143: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
// reference: 3F2BC3651D88F99A, 01FF1F9FCB124AD0
// shader: 8B30, 51F0514D7EDFE27C

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
specular_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((const_color[0].a) * (secondary_fragment_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
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
// reference: D0ED32DB30F100B0, 51F0514D7EDFE27C
// program: 01FF1F9FCB124AD0, 1558286C47B9A4C4, 51F0514D7EDFE27C
// reference: 3F2BC36546550B5E, 01FF1F9FCB124AD0
// reference: 9C2005831B57F673, 82F45F9CBD575AD0
// reference: 8B652FC92554BFD2, 82F45F9CBD575AD0
// reference: 49E652093E08E26C, 952B918DBAD0D6B0
// reference: 97EC7CF93E08E26C, 77367DAEBAD0D6B0
// reference: 2F8375A34163CBAC, F4AB42537C5F2172
// reference: 9202EBB67678105E, 5A9DBA5B31BC353E
// reference: 2F8375A31ABE3968, F4AB42537C5F2172
// reference: 9C200583B7FCBDB5, 2B9B09D90203AAE2
// reference: 9C200583525FA427, 82F45F9CBD575AD0
// reference: 9C200583098256E3, 82F45F9CBD575AD0
// reference: 0A637A9BB7B1411F, 443F3A637F4D7978
// reference: 707ED652DA765307, D720054CA459F09E
// reference: E92BAE135A120084, D720054CA459F09E
// reference: 8B652FC99B2A5484, 2B9B09D90203AAE2
// reference: F15DFE568A857EB9, F4AB42537C5F2172
// reference: F15DFE56D1588C7D, F4AB42537C5F2172
// reference: 42FE8E7699B91132, 82F45F9CBD575AD0
// reference: 42FE8E76C264E3F6, 82F45F9CBD575AD0
// reference: D4BDF16E7C57F40A, 443F3A637F4D7978
// reference: AEA05DA71190E612, D720054CA459F09E
// reference: 37F525E691F4B591, D720054CA459F09E
// reference: E4FEE18D6464C86D, 82F21E121B4A1DE3
// reference: A245854E64CB44CA, 6F902B0607BA614A
// reference: 7B769237339FEAD8, 41CA3647950487A0
// reference: 7B7692376842181C, 41CA3647950487A0
// reference: A245854E3F16B60E, 6F902B0607BA614A
// reference: 11E6F56EC989C017, 2B9B09D90203AAE2
// reference: E4FEE18D8F62E986, 82F21E121B4A1DE3
// reference: E9CFCE327AA7D9AA, 2B9B09D90203AAE2
// reference: E9CFCE329F04C038, 82F45F9CBD575AD0
// reference: E9CFCE32C4D932FC, 82F45F9CBD575AD0
// reference: 7F8CB12A7AEA2500, 443F3A637F4D7978
// reference: 05911DE3172D3718, D720054CA459F09E
// reference: 9CC465A29749649B, D720054CA459F09E
// reference: BC421165B3FBB95B, 41CA3647950487A0
// reference: 25176924339FEAD8, 41CA3647950487A0
// reference: 5FE8ADFC318FA480, 2B9B09D90203AAE2
// reference: 5FE8ADFCD42CBD12, 82F45F9CBD575AD0
// reference: 5FE8ADFC8FF14FD6, 82F45F9CBD575AD0
// reference: C9ABD2E431C2582A, 443F3A637F4D7978
// reference: B3B67E2D5C054A32, D720054CA459F09E
// reference: 2AE3066CDC6119B1, D720054CA459F09E
// reference: D2450D258E73DB37, 774796804452214B
// reference: D2450D25D5AE29F3, 774796804452214B
// reference: D2450D2584A3FD73, 2B9B09D90203AAE2
// reference: D2450D25DF7E0FB7, 2B9B09D90203AAE2
// reference: D2450D253ADD1625, 82F45F9CBD575AD0
// reference: D2450D256100E4E1, 82F45F9CBD575AD0
// reference: 4406723DDF33F31D, 443F3A637F4D7978
// reference: 3E1BDEF4B2F4E105, D720054CA459F09E
// reference: A74EA6B53290B286, D720054CA459F09E
// reference: 64C15865CC63FCFC, 774796804452214B
// reference: 64C1586597BE0E38, 774796804452214B
// reference: 64C15865C6B3DAB8, 2B9B09D90203AAE2
// reference: 64C158659D6E287C, 2B9B09D90203AAE2
// reference: 64C1586578CD31EE, 82F45F9CBD575AD0
// reference: 64C158652310C32A, 82F45F9CBD575AD0
// reference: F282277D9D23D4D6, 443F3A637F4D7978
// reference: 889F8BB4F0E4C6CE, D720054CA459F09E
// reference: 11CAF3F57080954D, D720054CA459F09E
// reference: D2450D256DB6311D, 774796804452214B
// reference: D2450D25D918FC0F, 82F45F9CBD575AD0
// reference: 4406723D672BEBF3, 443F3A637F4D7978
// reference: 3E1BDEF40AECF9EB, D720054CA459F09E
// reference: A74EA6B58A88AA68, D720054CA459F09E
// reference: 3F2BC3652818FCBB, 774796804452214B
// reference: A67EBB24BB0BA79B, 41CA3647950487A0
// reference: 64C158650CE353EF, 774796804452214B
// reference: 64C15865573EA12B, 774796804452214B
// reference: D2450D253CBBE59D, 2B9B09D90203AAE2
// reference: D2450D2567661759, 2B9B09D90203AAE2
// reference: D2450D2582C50ECB, 82F45F9CBD575AD0
// shader: 8B30, 310A956E3DE1AB8E

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
depth /= gl_FragCoord.w;
vec4 texcolor0 = textureLod(tex0, texcoord0, getLod(texcoord0 * vec2(textureSize(tex0, 0))));
vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.a) * (rounded_primary_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.rgb) * (const_color[1].aaa), vec3(0.0), vec3(1.0)));
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
// reference: B19979ED8DEEF25B, 310A956E3DE1AB8E
// program: 41CA3647950487A0, 1558286C47B9A4C4, 310A956E3DE1AB8E
// reference: 3CD89DB58DEEF25B, 310A956E3DE1AB8E
// reference: 5FE8ADFC63E5400F, 55874CEC27B2C8CA
// reference: C2EDBBE361CEE5CA, F4AB42537C5F2172
// reference: C2EDBBE33A13170E, F4AB42537C5F2172
// reference: 714ECBC372F28A41, 82F45F9CBD575AD0
// reference: 714ECBC3292F7885, 82F45F9CBD575AD0
// reference: E70DB4DB971C6F79, 443F3A637F4D7978
// reference: 9D101812FADB7D61, D720054CA459F09E
// reference: 044560537ABF2EE2, D720054CA459F09E
// shader: 8B31, 5E3FA92DC19E6B9E

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
layout(location = 3) in vec4 vs_in_reg3;
layout(location = 4) in vec4 vs_in_reg4;
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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();
bool sub_125_128();
bool sub_136_139();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0 = reg_tmp3.xyzz;
    // 120: mul
    reg_tmp1.xy = (mul_safe(uniforms.f[18].xxxx, reg_tmp0.xyyy)).xy;
    // 121: add
    reg_tmp11.xy = (uniforms.f[18].xxxx + reg_tmp1.xyyy).xy;
    // 122: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 123: mov
    reg_tmp0.xy = (reg_tmp11.xyyy).xy;
    // 124: ifu
    if (uniforms.b[8]) {
        sub_125_128();
    }
    // 128: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 129: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 130: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 131: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 132: mov
    vs_out_attr3 = reg_tmp2;
    // 133: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 134: mov
    reg_tmp0.xy = (reg_tmp11.xyyy).xy;
    // 135: ifu
    if (uniforms.b[9]) {
        sub_136_139();
    }
    // 139: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 140: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 141: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 142: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 143: mov
    vs_out_attr4 = reg_tmp2;
    // 144: mov
    reg_tmp0.xy = (reg_tmp11.xyyy).xy;
    // 145: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 146: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 147: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 148: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 149: mov
    vs_out_attr5 = reg_tmp2;
    // 150: mov
    vs_out_attr6 = vs_in_reg8;
    // 151: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_125_128() {
    // 125: dp4
    reg_tmp2.x = dot(uniforms.f[13], reg_tmp0);
    // 126: dp4
    reg_tmp2.y = dot(uniforms.f[14], reg_tmp0);
    // 127: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
bool sub_136_139() {
    // 136: dp4
    reg_tmp2.x = dot(uniforms.f[15], reg_tmp0);
    // 137: dp4
    reg_tmp2.y = dot(uniforms.f[16], reg_tmp0);
    // 138: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
// reference: 62C708CE47630C38, 5E3FA92DC19E6B9E
// shader: 8B30, 51084D92732AF849

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (primary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_1 = byteround(clamp((texcolor0.aaa) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor1.a) + (texcolor1.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp(min((last_tex_env_out.rgb) + (combiner_buffer.rgb), vec3(1.0)) * (last_tex_env_out.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((texcolor0.aaa) * (const_color[3].rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (const_color[4].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (const_color[5].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (const_color[5].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 2815826E3AF816D5, 51084D92732AF849
// program: 5E3FA92DC19E6B9E, 1558286C47B9A4C4, 51084D92732AF849
// reference: 62C708CE1CBEFEFC, 5E3FA92DC19E6B9E
// reference: C2EDBBE37250DE1F, F4AB42537C5F2172
// reference: 714ECBC33AB14350, 82F45F9CBD575AD0
// reference: 714ECBC3616CB194, 82F45F9CBD575AD0
// reference: E70DB4DBDF5FA668, 443F3A637F4D7978
// reference: 9D101812B298B470, D720054CA459F09E
// reference: 0445605332FCE7F3, D720054CA459F09E
// reference: 7469EEA35B4675FC, F4AB42537C5F2172
// reference: 7469EEA3009B8738, F4AB42537C5F2172
// reference: D4435D8E26366ECA, 5E3FA92DC19E6B9E
// reference: 7469EEA348D84E29, F4AB42537C5F2172
// reference: C7CA9E830039D366, 82F45F9CBD575AD0
// reference: C7CA9E835BE421A2, 82F45F9CBD575AD0
// reference: 5189E19BE5D7365E, 443F3A637F4D7978
// reference: 2B944D5288102446, D720054CA459F09E
// reference: B2C13513087477C5, D720054CA459F09E
// reference: C7CA9E83A30F48AB, 82F45F9CBD575AD0
// reference: C7CA9E83F8D2BA6F, 82F45F9CBD575AD0
// reference: 5189E19B46E1AD93, 443F3A637F4D7978
// reference: 2B944D522B26BF8B, D720054CA459F09E
// reference: B2C13513AB42EC08, D720054CA459F09E
// reference: 714ECBC39987D89D, 82F45F9CBD575AD0
// reference: 714ECBC3C25A2A59, 82F45F9CBD575AD0
// reference: E70DB4DB7C693DA5, 443F3A637F4D7978
// reference: 9D10181211AE2FBD, D720054CA459F09E
// reference: 0445605391CA7C3E, D720054CA459F09E
// reference: BDF24F1C35FED49F, F4AB42537C5F2172
// reference: 1DD8FC3126366ECA, 5E3FA92DC19E6B9E
// reference: D4435D8E7DEB9C0E, 5E3FA92DC19E6B9E
// reference: BDF24F1C48D84E29, F4AB42537C5F2172
// reference: 0E513F3C0039D366, 82F45F9CBD575AD0
// reference: 0E513F3C5BE421A2, 82F45F9CBD575AD0
// reference: 98124024E5D7365E, 443F3A637F4D7978
// reference: E20FECED88102446, D720054CA459F09E
// reference: 7B5A94AC087477C5, D720054CA459F09E
// reference: 714ECBC3DF125AC2, 2B9B09D90203AAE2
// reference: 0E513F3CE59ACAF4, 2B9B09D90203AAE2
// reference: C7CA9E83E59ACAF4, 2B9B09D90203AAE2
// reference: 0E513F3C46AC5139, 2B9B09D90203AAE2
// reference: 0E513F3CA30F48AB, 82F45F9CBD575AD0
// reference: 0E513F3CF8D2BA6F, 82F45F9CBD575AD0
// reference: 9812402446E1AD93, 443F3A637F4D7978
// reference: E20FECED2B26BF8B, D720054CA459F09E
// reference: 7B5A94ACAB42EC08, D720054CA459F09E
// reference: C7CA9E83ADD903E5, 2B9B09D90203AAE2
// reference: C7CA9E83487A1A77, 82F45F9CBD575AD0
// reference: C7CA9E8313A7E8B3, 82F45F9CBD575AD0
// reference: 5189E19BAD94FF4F, 443F3A637F4D7978
// reference: 2B944D52C053ED57, D720054CA459F09E
// reference: B2C135134037BED4, D720054CA459F09E
// reference: C7CA9E8346AC5139, 2B9B09D90203AAE2
// reference: E1F54890E00668FF, 82F45F9CBD575AD0
// reference: E1F54890DDDE0FF7, 2B9B09D90203AAE2
// reference: E05FB9A06BD41CDA, 41CA3647950487A0
// reference: 396CAED93C80B2C8, 6F902B0607BA614A
// reference: BE3E42B36BD41CDA, 41CA3647950487A0
// reference: 3F2BC3657DE14823, 82F45F9CBD575AD0
// reference: 3F2BC365263CBAE7, 82F45F9CBD575AD0
// reference: A968BC7D980FAD1B, 443F3A637F4D7978
// reference: D37510B4F5C8BF03, D720054CA459F09E
// reference: 4A2068F575ACEC80, D720054CA459F09E
// shader: 8B30, F56DABCB074102F4

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(half_vector)), 0.0)));
specular_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(half_vector)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + ((lut_scale_d1 * LookupLightingLUTUnsigned(1, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((texcolor0.rgb) * (rounded_primary_color.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].aaa), vec3(0.0), vec3(1.0)));
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
// reference: 1D0FA71736FCCE64, F56DABCB074102F4
// program: 75EB489DF63B9F3C, 1558286C47B9A4C4, F56DABCB074102F4
// shader: 8B31, 78346D9E84EECC3E

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
layout(location = 3) in vec4 vs_in_reg3;
layout(location = 4) in vec4 vs_in_reg4;

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();
bool sub_125_128();
bool sub_136_139();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0 = reg_tmp3.xyzz;
    // 120: mul
    reg_tmp1.xy = (mul_safe(uniforms.f[18].xxxx, reg_tmp0.xyyy)).xy;
    // 121: add
    reg_tmp11.xy = (uniforms.f[18].xxxx + reg_tmp1.xyyy).xy;
    // 122: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 123: mov
    reg_tmp0.xy = (reg_tmp11.xyyy).xy;
    // 124: ifu
    if (uniforms.b[8]) {
        sub_125_128();
    }
    // 128: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 129: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 130: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 131: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 132: mov
    vs_out_attr3 = reg_tmp2;
    // 133: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 134: mov
    reg_tmp0.xy = (reg_tmp11.xyyy).xy;
    // 135: ifu
    if (uniforms.b[9]) {
        sub_136_139();
    }
    // 139: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 140: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 141: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 142: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 143: mov
    vs_out_attr4 = reg_tmp2;
    // 144: mov
    reg_tmp0.xy = (reg_tmp11.xyyy).xy;
    // 145: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 146: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 147: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 148: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 149: mov
    vs_out_attr5 = reg_tmp2;
    // 150: mov
    reg_tmp11.xyz = (uniforms.f[17].yyyy).xyz;
    // 151: mov
    reg_tmp11.w = (uniforms.f[17].xxxx).w;
    // 152: mov
    vs_out_attr6 = reg_tmp11;
    // 153: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_125_128() {
    // 125: dp4
    reg_tmp2.x = dot(uniforms.f[13], reg_tmp0);
    // 126: dp4
    reg_tmp2.y = dot(uniforms.f[14], reg_tmp0);
    // 127: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
bool sub_136_139() {
    // 136: dp4
    reg_tmp2.x = dot(uniforms.f[15], reg_tmp0);
    // 137: dp4
    reg_tmp2.y = dot(uniforms.f[16], reg_tmp0);
    // 138: mov
    reg_tmp0.xy = (reg_tmp2.xyyy).xy;
    return false;
}
// reference: 1EB17E5C0AAF14D3, 78346D9E84EECC3E
// shader: 8B30, E72A91F01B4E37B6

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
specular_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) + (texcolor1.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp(min((texcolor0.r) + (texcolor1.r), 1.0) * (secondary_fragment_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((last_tex_env_out.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a) + (const_color[1].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.aaa) * (const_color[2].aaa) + (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb) * (const_color[3].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a) * (const_color[3].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3, alpha_output_3), vec4(0.0), vec4(1.0));
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
// reference: F7A38E07A8A2487C, E72A91F01B4E37B6
// program: 78346D9E84EECC3E, 1558286C47B9A4C4, E72A91F01B4E37B6
// reference: 2F8375A3037444FC, F4AB42537C5F2172
// reference: 2F8375A358A9B638, F4AB42537C5F2172
// reference: 9C20058310482B77, 82F45F9CBD575AD0
// reference: 0A637A9BF5A6CE4F, 443F3A637F4D7978
// reference: 707ED6529861DC57, D720054CA459F09E
// reference: E92BAE1318058FD4, D720054CA459F09E
// reference: 3F2BC365FCCDE46A, 01FF1F9FCB124AD0
// shader: 8B30, 922B3C2565C3D95A

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = (lut_scale_rr * LookupLightingLUTUnsigned(6, max(dot(normal, normalize(half_vector)), 0.0)));
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (refl_value * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) + (const_color[0].a) - 0.5, 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((const_color[1].aaa) - (last_tex_env_out.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) * (const_color[2].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2 * 4.0, alpha_output_2 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3 * 2.0, alpha_output_3 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (const_color[4].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((last_tex_env_out.a) * (const_color[4].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
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
// reference: 08D2E79249153AD8, 922B3C2565C3D95A
// program: 01FF1F9FCB124AD0, 1558286C47B9A4C4, 922B3C2565C3D95A
// reference: 3F2BC365A71016AE, 01FF1F9FCB124AD0
// reference: 2F8375A376ECCB5F, F4AB42537C5F2172
// reference: 9C2005833E0D5610, 82F45F9CBD575AD0
// reference: 0A637A9BDBE3B328, 443F3A637F4D7978
// reference: 707ED652B624A130, D720054CA459F09E
// reference: E92BAE133640F2B3, D720054CA459F09E
// reference: 1D2650D12FF121E9, 443F3A637F4D7978
// reference: 673BFC18423633F1, D720054CA459F09E
// reference: FE6E8459C2526072, D720054CA459F09E
// reference: 77B637887B16C982, 443F3A637F4D7978
// reference: 0DAB9B4116D1DB9A, D720054CA459F09E
// reference: 94FEE30096B58819, D720054CA459F09E
// shader: 8B31, 17D6F83FBBE55062

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_8_26();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();
bool sub_130_155();
bool sub_132_142();
bool sub_144_154();
bool sub_145_153();
bool sub_155_156();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_8_26() {
    // 8: add
    reg_tmp0.xyz = (reg_tmp2.xyzz + -reg_tmp8.xyzz).xyz;
    // 9: dp3
    reg_tmp0.w = dot(vec3(reg_tmp0.xyzz), vec3(reg_tmp0.xyzz));
    // 10: rsq
    reg_tmp6.xyz = vec3(rsq_safe(reg_tmp0.wwww.x));
    // 11: mul
    reg_tmp0.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp6.xxxx)).xyz;
    // 12: rcp
    reg_tmp0.w = rcp_safe(reg_tmp6.xxxx.x);
    // 13: dp3
    reg_tmp1.x = dot(vec3(reg_tmp4), vec3(reg_tmp0.xyzz));
    // 14: max
    reg_tmp6.x = (max(uniforms.f[17].xxxy, reg_tmp1.xxxx)).x;
    // 15: min
    reg_tmp1.x = (min(uniforms.f[17].yyyy, reg_tmp6.xxxx)).x;
    // 16: add
    reg_tmp6.x = (reg_tmp0.wwww + -reg_tmp3.xxxx).x;
    // 17: add
    reg_tmp6.z = (reg_tmp3.yyyy + -reg_tmp3.xxxx).z;
    // 18: rcp
    reg_tmp6.y = rcp_safe(reg_tmp6.zzzz.x);
    // 19: mul
    reg_tmp6.z = (mul_safe(reg_tmp6.xxxx, reg_tmp6.yyyy)).z;
    // 20: min
    reg_tmp6.x = (min(uniforms.f[17].yyyy, reg_tmp6.zzzz)).x;
    // 21: max
    reg_tmp6.y = (max(uniforms.f[17].xxxx, reg_tmp6.xxxx)).y;
    // 22: add
    reg_tmp6.x = (uniforms.f[17].yyyy + -reg_tmp6.yyyy).x;
    // 23: mul
    reg_tmp1.x = (mul_safe(reg_tmp1.xxxx, reg_tmp6.xxxx)).x;
    // 24: mul
    reg_tmp6.xyz = (mul_safe(uniforms.f[80].xyzz, reg_tmp14.xyzz)).xyz;
    // 25: mul
    reg_tmp5.xyz = (mul_safe(reg_tmp6.xyzz, reg_tmp1.xxxx)).xyz;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 120: mov
    reg_tmp0.xy = (uniforms.f[95].xxxx).xy;
    // 121: call
    {
        sub_0_8();
    }
    // 122: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 123: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 124: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 125: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 126: mov
    vs_out_attr3 = reg_tmp2;
    // 127: mov
    vs_out_attr4 = vs_in_reg6;
    // 128: mov
    vs_out_attr5 = vs_in_reg7;
    // 129: ifu
    if (uniforms.b[11]) {
        sub_130_155();
    } else {
        sub_155_156();
    }
    // 156: mov
    reg_tmp11.w = (uniforms.f[17].xxxx).w;
    // 157: mov
    vs_out_attr6 = reg_tmp11;
    // 158: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
bool sub_130_155() {
    // 130: mov
    reg_tmp11.xyz = (uniforms.f[17].xxxy).xyz;
    // 131: ifu
    if (uniforms.b[6]) {
        sub_132_142();
    }
    // 142: nop
    // 143: ifu
    if (uniforms.b[5]) {
        sub_144_154();
    }
    // 154: nop
    return false;
}
bool sub_132_142() {
    // 132: max
    reg_tmp13.x = (max(uniforms.f[17].xxxx, reg_tmp4.yyyy)).x;
    // 133: mul
    reg_tmp0.xyz = (mul_safe(uniforms.f[93].xyzz, reg_tmp13.xxxx)).xyz;
    // 134: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp0.xyzz).xyz;
    // 135: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 136: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    // 137: max
    reg_tmp13.x = (max(uniforms.f[17].xxxx, -reg_tmp4.yyyy)).x;
    // 138: mul
    reg_tmp0.xyz = (mul_safe(uniforms.f[94].xyzz, reg_tmp13.xxxx)).xyz;
    // 139: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp0.xyzz).xyz;
    // 140: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 141: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    return false;
}
bool sub_144_154() {
    // 144: loop
    address_registers.z = int(uniforms.i[0].y);
    for (uint loop144 = 0u; loop144 <= uniforms.i[0].x; address_registers.z += int(uniforms.i[0].z), ++loop144) {
        sub_145_153();
    }
    // 153: nop
    return false;
}
bool sub_145_153() {
    // 145: mov
    reg_tmp14.xyz = (uniforms.f[81 + address_registers.z].xyzz).xyz;
    // 146: mov
    reg_tmp3.x = (uniforms.f[81 + address_registers.z].wwww).x;
    // 147: mov
    reg_tmp2.xyz = (uniforms.f[87 + address_registers.z].xyzz).xyz;
    // 148: mov
    reg_tmp3.y = (uniforms.f[87 + address_registers.z].wwww).y;
    // 149: call
    {
        sub_8_26();
    }
    // 150: add
    reg_tmp11.xyz = (reg_tmp11.xyzz + reg_tmp5.xyzz).xyz;
    // 151: max
    reg_tmp13 = max(uniforms.f[17].xxxy, reg_tmp11.xyzz);
    // 152: min
    reg_tmp11.xyz = (min(uniforms.f[17].yyyy, reg_tmp13.xyzz)).xyz;
    return false;
}
bool sub_155_156() {
    // 155: mov
    reg_tmp11.xyz = (uniforms.f[17].yyyy).xyz;
    return false;
}
// reference: 75C7F2473BA55040, 17D6F83FBBE55062
// shader: 8B30, 50FBAFC43677FD76

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
specular_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + ((lut_scale_d1 * LookupLightingLUTUnsigned(1, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp(min((primary_fragment_color.rgb) + (secondary_fragment_color.rgb), vec3(1.0)) * (texcolor0.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((1.0 - const_color[0].a) * (1.0 - primary_fragment_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0 * 1.0, alpha_output_0 * 2.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_1 = byteround(clamp((rounded_primary_color.rgb) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1 * 4.0, alpha_output_1 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp((vec3(1.0) - primary_fragment_color.aaa) * (texcolor0.rgb) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((1.0 - texcolor0.r) + (const_color[2].a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp(min((last_tex_env_out.rgb) + (const_color[3].rgb), vec3(1.0)) * (last_tex_env_out.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((combiner_buffer.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3 * 1.0, alpha_output_3 * 2.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_4 = byteround(clamp(min((vec3(1.0) - combiner_buffer.aaa) + (vec3(1.0) - const_color[4].rgb), vec3(1.0)) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((1.0 - last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4, alpha_output_4), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp(min((last_tex_env_out.rgb) + (combiner_buffer.aaa), vec3(1.0)) * (const_color[5].aaa), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 5D267F3F3D9D056D, 50FBAFC43677FD76
// program: 17D6F83FBBE55062, 1558286C47B9A4C4, 50FBAFC43677FD76
// reference: 0B300D2B4B3EF7FE, 5E3FA92DC19E6B9E
// shader: 8B30, 182F17FB73EF7531

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = (lut_scale_rr * LookupLightingLUTUnsigned(6, max(dot(normal, normalize(half_vector)), 0.0)));
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += ((light_src[0].specular_0) + (refl_value * light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((texcolor0.rgb) * (primary_fragment_color.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((rounded_primary_color.a) * (texcolor0.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;

vec3 color_output_1 = byteround(clamp((texcolor0.aaa) * (const_color[1].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((texcolor1.a) + (texcolor1.r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_2 = byteround(clamp(min((last_tex_env_out.rgb) + (combiner_buffer.rgb), vec3(1.0)) * (last_tex_env_out.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_3 = byteround(clamp(min((last_tex_env_out.rgb) + (const_color[3].rgb), vec3(1.0)) * (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp((last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3 * 4.0, alpha_output_3 * 1.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((last_tex_env_out.rgb) * (const_color[4].aaa), vec3(0.0), vec3(1.0)));
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
// reference: 36BB03F9532BC994, 182F17FB73EF7531
// program: 5E3FA92DC19E6B9E, 1558286C47B9A4C4, 182F17FB73EF7531
// shader: 8B31, E77E47A58BECDBCB

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

#define fma_safe(x, y, z) fma(x, y, z)
#define mul_safe(x, y) (x * y)
#define rcp_safe(x) (1.0f / x)
#define rsq_safe(x) inversesqrt(x)
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

bool sub_0_8();
bool sub_2_3();
bool sub_3_7();
bool sub_4_5();
bool sub_5_6();
bool sub_27_38();
bool sub_30_34();
bool sub_39_54();
bool sub_41_42();
bool sub_52_53();
bool sub_55_64();
bool sub_57_58();
bool sub_62_63();
bool sub_65_74();
bool sub_67_68();
bool sub_72_73();
bool sub_75_4096();
bool sub_78_79();
bool sub_87_90();
bool sub_95_101();
bool sub_107_117();
bool sub_113_115();
bool sub_115_116();
bool sub_117_118();

bool exec_shader() {
    sub_75_4096();
    return true;
}

bool sub_0_8() {
    // 0: cmp
    conditional_code = equal(vec2(uniforms.f[17].yzzz), vec2(reg_tmp0.xyyy));
    // 1: ifc
    if (all(not(conditional_code))) {
        sub_2_3();
    } else {
        sub_3_7();
    }
    // 7: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    return false;
}
bool sub_2_3() {
    // 2: mov
    reg_tmp0.xy = (vs_in_reg5.xyyy).xy;
    return false;
}
bool sub_3_7() {
    // 3: ifc
    if (all(bvec2(conditional_code.x, !conditional_code.y))) {
        sub_4_5();
    } else {
        sub_5_6();
    }
    // 6: nop
    return false;
}
bool sub_4_5() {
    // 4: mov
    reg_tmp0.xy = (vs_in_reg6.xyyy).xy;
    return false;
}
bool sub_5_6() {
    // 5: mov
    reg_tmp0.xy = (vs_in_reg7.xyyy).xy;
    return false;
}
bool sub_27_38() {
    // 27: mova
    address_registers.x = (ivec2(reg_tmp14.xxxx)).x;
    // 28: nop
    // 29: ifu
    if (uniforms.b[4]) {
        sub_30_34();
    }
    // 34: dp4
    reg_tmp0.x = dot(uniforms.f[19 + address_registers.x], reg_tmp10);
    // 35: dp4
    reg_tmp0.y = dot(uniforms.f[20 + address_registers.x], reg_tmp10);
    // 36: dp4
    reg_tmp0.z = dot(uniforms.f[21 + address_registers.x], reg_tmp10);
    // 37: mad
    reg_tmp7.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp7.xyzz)).xyz;
    return false;
}
bool sub_30_34() {
    // 30: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[19 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 31: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[20 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 32: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[21 + address_registers.x].xyzz), vec3(reg_tmp5));
    // 33: mad
    reg_tmp6.xyz = (fma_safe(reg_tmp14.wwww, reg_tmp0.xyzz, reg_tmp6.xyzz)).xyz;
    return false;
}
bool sub_39_54() {
    // 39: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 40: ifu
    if (uniforms.b[4]) {
        sub_41_42();
    }
    // 42: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 43: mov
    reg_tmp14.w = (vs_in_reg4.xxxx).w;
    // 44: call
    {
        sub_27_38();
    }
    // 45: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.yyyy)).x;
    // 46: mov
    reg_tmp14.w = (vs_in_reg4.yyyy).w;
    // 47: call
    {
        sub_27_38();
    }
    // 48: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.zzzz)).x;
    // 49: mov
    reg_tmp14.w = (vs_in_reg4.zzzz).w;
    // 50: call
    {
        sub_27_38();
    }
    // 51: ifu
    if (uniforms.b[4]) {
        sub_52_53();
    }
    // 53: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_41_42() {
    // 41: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_52_53() {
    // 52: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_55_64() {
    // 55: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 56: ifu
    if (uniforms.b[4]) {
        sub_57_58();
    }
    // 58: mul
    reg_tmp14.x = (mul_safe(uniforms.f[17].wwww, vs_in_reg3.xxxx)).x;
    // 59: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 60: call
    {
        sub_27_38();
    }
    // 61: ifu
    if (uniforms.b[4]) {
        sub_62_63();
    }
    // 63: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_57_58() {
    // 57: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_62_63() {
    // 62: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_65_74() {
    // 65: mov
    reg_tmp7 = uniforms.f[17].xxxy;
    // 66: ifu
    if (uniforms.b[4]) {
        sub_67_68();
    }
    // 68: mov
    reg_tmp14.x = (uniforms.f[17].xxxx).x;
    // 69: mov
    reg_tmp14.w = (uniforms.f[17].yyyy).w;
    // 70: call
    {
        sub_27_38();
    }
    // 71: ifu
    if (uniforms.b[4]) {
        sub_72_73();
    }
    // 73: mov
    reg_tmp10 = reg_tmp7;
    return false;
}
bool sub_67_68() {
    // 67: mov
    reg_tmp6 = uniforms.f[17].xxxy;
    return false;
}
bool sub_72_73() {
    // 72: mov
    reg_tmp5 = reg_tmp6;
    return false;
}
bool sub_75_4096() {
    // 75: mov
    reg_tmp10 = uniforms.f[17].xxxy;
    // 76: mov
    reg_tmp10.xyz = (vs_in_reg0).xyz;
    // 77: ifu
    if (uniforms.b[4]) {
        sub_78_79();
    }
    // 79: callu
    if (uniforms.b[3]) {
        sub_39_54();
    }
    // 80: callu
    if (uniforms.b[2]) {
        sub_55_64();
    }
    // 81: callu
    if (uniforms.b[1]) {
        sub_65_74();
    }
    // 82: dp4
    reg_tmp8.x = dot(uniforms.f[8], reg_tmp10);
    // 83: dp4
    reg_tmp8.y = dot(uniforms.f[9], reg_tmp10);
    // 84: dp4
    reg_tmp8.z = dot(uniforms.f[10], reg_tmp10);
    // 85: mov
    reg_tmp8.w = (uniforms.f[17].yyyy).w;
    // 86: ifu
    if (uniforms.b[4]) {
        sub_87_90();
    }
    // 90: dp4
    reg_tmp12.x = dot(uniforms.f[4], reg_tmp8);
    // 91: dp4
    reg_tmp12.y = dot(uniforms.f[5], reg_tmp8);
    // 92: dp4
    reg_tmp12.z = dot(uniforms.f[6], reg_tmp8);
    // 93: mov
    reg_tmp12.w = (uniforms.f[17].yyyy).w;
    // 94: ifu
    if (uniforms.b[4]) {
        sub_95_101();
    }
    // 101: dp4
    reg_tmp10.x = dot(uniforms.f[0], reg_tmp12);
    // 102: dp4
    reg_tmp10.y = dot(uniforms.f[1], reg_tmp12);
    // 103: dp4
    reg_tmp10.w = dot(uniforms.f[3], reg_tmp12);
    // 104: dp4
    reg_tmp10.z = dot(uniforms.f[2], reg_tmp12);
    // 105: mov
    vs_out_attr0 = reg_tmp10;
    // 106: ifu
    if (uniforms.b[4]) {
        sub_107_117();
    } else {
        sub_117_118();
    }
    // 118: mov
    vs_out_attr2 = -reg_tmp12;
    // 119: mov
    reg_tmp0 = reg_tmp3.xyzz;
    // 120: mul
    reg_tmp1.xy = (mul_safe(uniforms.f[18].xxxx, reg_tmp0.xyyy)).xy;
    // 121: add
    reg_tmp11.xy = (uniforms.f[18].xxxx + reg_tmp1.xyyy).xy;
    // 122: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 123: mov
    reg_tmp0.xy = (reg_tmp11.xyyy).xy;
    // 124: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 125: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 126: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 127: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 128: mov
    vs_out_attr3 = reg_tmp2;
    // 129: mov
    reg_tmp0.zw = (uniforms.f[17].yyyy).zw;
    // 130: mov
    reg_tmp0.xy = (uniforms.f[95].yyyy).xy;
    // 131: call
    {
        sub_0_8();
    }
    // 132: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 133: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 134: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 135: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 136: mov
    vs_out_attr4 = reg_tmp2;
    // 137: mov
    reg_tmp0.xy = (uniforms.f[95].zzzz).xy;
    // 138: call
    {
        sub_0_8();
    }
    // 139: mov
    reg_tmp2.zw = (uniforms.f[17].xxxx).zw;
    // 140: mov
    reg_tmp2.y = (uniforms.f[17].yyyy).y;
    // 141: add
    reg_tmp2.y = (reg_tmp2.yyyy + -reg_tmp0.yyyy).y;
    // 142: mov
    reg_tmp2.x = (reg_tmp0.xxxx).x;
    // 143: mov
    vs_out_attr5 = reg_tmp2;
    // 144: mov
    reg_tmp11.xyz = (uniforms.f[17].yyyy).xyz;
    // 145: mov
    reg_tmp11.w = (uniforms.f[17].xxxx).w;
    // 146: mov
    vs_out_attr6 = reg_tmp11;
    // 147: end
    return true;
}
bool sub_78_79() {
    // 78: mov
    reg_tmp5.xyz = (vs_in_reg1).xyz;
    return false;
}
bool sub_87_90() {
    // 87: dp3
    reg_tmp4.x = dot(vec3(uniforms.f[8].xyzz), vec3(reg_tmp5.xyzz));
    // 88: dp3
    reg_tmp4.y = dot(vec3(uniforms.f[9].xyzz), vec3(reg_tmp5.xyzz));
    // 89: dp3
    reg_tmp4.z = dot(vec3(uniforms.f[10].xyzz), vec3(reg_tmp5.xyzz));
    return false;
}
bool sub_95_101() {
    // 95: dp3
    reg_tmp0.x = dot(vec3(uniforms.f[4].xyzz), vec3(reg_tmp4));
    // 96: dp3
    reg_tmp0.y = dot(vec3(uniforms.f[5].xyzz), vec3(reg_tmp4));
    // 97: dp3
    reg_tmp0.z = dot(vec3(uniforms.f[6].xyzz), vec3(reg_tmp4));
    // 98: dp4
    reg_tmp3.x = dot(reg_tmp0.xyzz, reg_tmp0.xyzz);
    // 99: rsq
    reg_tmp3.x = rsq_safe(reg_tmp3.xxxx.x);
    // 100: mul
    reg_tmp3.xyz = (mul_safe(reg_tmp0.xyzz, reg_tmp3.xxxx)).xyz;
    return false;
}
bool sub_107_117() {
    // 107: add
    reg_tmp0 = uniforms.f[17].yyyy + reg_tmp3.zzzz;
    // 108: mul
    reg_tmp0 = mul_safe(uniforms.f[18].xxxx, reg_tmp0);
    // 109: cmp
    conditional_code = greaterThanEqual(vec2(uniforms.f[17].xxxx), vec2(reg_tmp0.xxxx));
    // 110: rsq
    reg_tmp0 = vec4(rsq_safe(reg_tmp0.xxxx.x));
    // 111: mul
    reg_tmp1 = mul_safe(uniforms.f[18].xxxx, reg_tmp3.xyzz);
    // 112: ifc
    if (!conditional_code.x) {
        sub_113_115();
    } else {
        sub_115_116();
    }
    // 116: mov
    vs_out_attr1.w = (uniforms.f[17].xxxx).w;
    return false;
}
bool sub_113_115() {
    // 113: rcp
    vs_out_attr1.z = rcp_safe(reg_tmp0.xxxx.x);
    // 114: mul
    vs_out_attr1.xy = (mul_safe(reg_tmp1, reg_tmp0)).xy;
    return false;
}
bool sub_115_116() {
    // 115: mov
    vs_out_attr1.xyz = (uniforms.f[17].yxxx).xyz;
    return false;
}
bool sub_117_118() {
    // 117: mov
    vs_out_attr1 = uniforms.f[17].yxxx;
    return false;
}
// reference: 8C0943C71CE55EFD, E77E47A58BECDBCB
// shader: 8B30, 65CFAA4F09BBDC3E

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
depth /= gl_FragCoord.w;
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
light_vector = normalize(light_src[0].position + view);
spot_dir = light_src[0].spot_direction;
half_vector = normalize(view) + light_vector;
dot_product = max(dot(light_vector, normal), 0.0);
clamp_highlights = sign(dot_product);
refl_value.r = 1.0;
refl_value.g = refl_value.r;
refl_value.b = refl_value.r;
diffuse_sum.a = (lut_scale_fr * LookupLightingLUTUnsigned(3, max(dot(normal, normalize(view)), 0.0)));
diffuse_sum.rgb += ((light_src[0].diffuse * dot_product) + light_src[0].ambient) * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
specular_sum.rgb += (((lut_scale_d0 * LookupLightingLUTUnsigned(0, max(dot(light_vector, normal), 0.0))) * light_src[0].specular_0) + (light_src[0].specular_1)) * clamp_highlights * LookupLightingLUTUnsigned(16,clamp(light_src[0].dist_atten_scale * length(-view - light_src[0].position) + light_src[0].dist_atten_bias, 0.0, 1.0)) * 1.0;
diffuse_sum.rgb += lighting_global_ambient;
primary_fragment_color = clamp(diffuse_sum, vec4(0.0), vec4(1.0));
secondary_fragment_color = clamp(specular_sum, vec4(0.0), vec4(1.0));

vec4 combiner_buffer = vec4(0.0);
vec4 next_combiner_buffer = tev_combiner_buffer_color;
vec4 last_tex_env_out = vec4(0.0);
vec3 color_output_0 = byteround(clamp((primary_fragment_color.rgb) * (secondary_fragment_color.rgb) + (const_color[0].rgb), vec3(0.0), vec3(1.0)));
float alpha_output_0 = byteround(clamp((texcolor0.r) + (texcolor0.b), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_0, alpha_output_0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_1 = byteround(clamp((const_color[1].rgb) * (vec3(1.0) - primary_fragment_color.aaa) + (last_tex_env_out.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_1 = byteround(clamp((last_tex_env_out.g) + (1.0 - primary_fragment_color.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_1, alpha_output_1), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_2 = byteround(clamp((last_tex_env_out.rgb) + (combiner_buffer.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_2 = byteround(clamp((last_tex_env_out.a) + (const_color[2].a) - 0.5, 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_2, alpha_output_2), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;
next_combiner_buffer.rgb = last_tex_env_out.rgb;
next_combiner_buffer.a = last_tex_env_out.a;

vec3 color_output_3 = byteround(clamp((last_tex_env_out.aaa), vec3(0.0), vec3(1.0)));
float alpha_output_3 = byteround(clamp(min((texcolor1.r) + (const_color[3].a), 1.0) * (1.0 - const_color[3].r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_3 * 1.0, alpha_output_3 * 4.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_4 = byteround(clamp((primary_fragment_color.aaa) * (vec3(1.0) - const_color[4].aaa) + (combiner_buffer.rgb), vec3(0.0), vec3(1.0)));
float alpha_output_4 = byteround(clamp((combiner_buffer.a) - (1.0 - last_tex_env_out.a), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_4 * 1.0, alpha_output_4 * 4.0), vec4(0.0), vec4(1.0));
combiner_buffer = next_combiner_buffer;

vec3 color_output_5 = byteround(clamp((last_tex_env_out.rgb) * (const_color[5].rrr), vec3(0.0), vec3(1.0)));
float alpha_output_5 = byteround(clamp((last_tex_env_out.a) * (const_color[5].r), 0.0, 1.0));
last_tex_env_out = clamp(vec4(color_output_5, alpha_output_5), vec4(0.0), vec4(1.0));
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
// reference: 2678212821837C1C, 65CFAA4F09BBDC3E
// program: E77E47A58BECDBCB, 1558286C47B9A4C4, 65CFAA4F09BBDC3E
// reference: 9F8080CA91563D7D, 82F45F9CBD575AD0
// reference: 9F8080CACA8BCFB9, 82F45F9CBD575AD0
// reference: 09C3FFD22F652A81, 443F3A637F4D7978
// reference: 73DE531B42A23899, D720054CA459F09E
// reference: EA8B2B5AC2C66B1A, D720054CA459F09E
// reference: 8C0943C74738AC39, E77E47A58BECDBCB
// reference: 8C0943C78CDE192C, E77E47A58BECDBCB
// reference: 8C0943C7D703EBE8, E77E47A58BECDBCB
// reference: 9F8080CA5AB08868, 82F45F9CBD575AD0
// reference: 9F8080CA016D7AAC, 82F45F9CBD575AD0
// reference: 09C3FFD2E4839F94, 443F3A637F4D7978
// reference: 73DE531B89448D8C, D720054CA459F09E
// reference: EA8B2B5A0920DE0F, D720054CA459F09E
// reference: D2450D25F6FDDBDD, 82F45F9CBD575AD0
// reference: 4406723D13133EE5, 443F3A637F4D7978
// reference: 3E1BDEF47ED42CFD, D720054CA459F09E
// reference: A74EA6B5FEB07F7E, D720054CA459F09E
// reference: B651EA49868A9114, 6F902B0607BA614A
// reference: D2450D25712EEB67, 6EA06923EE199867
// reference: D2450D252AF319A3, 6EA06923EE199867
// reference: D2450D25C6E7167A, 82F45F9CBD575AD0
// reference: D2450D259D3AE4BE, 82F45F9CBD575AD0
// reference: 4406723D2309F342, 443F3A637F4D7978
// reference: 3E1BDEF44ECEE15A, D720054CA459F09E
// reference: A74EA6B5CEAAB2D9, D720054CA459F09E
// reference: 64C158654BA67B51, 6EA06923EE199867
// reference: 64C15865107B8995, 6EA06923EE199867
// reference: 64C15865FC6F864C, 82F45F9CBD575AD0
// reference: 64C15865A7B27488, 82F45F9CBD575AD0
// reference: F282277D19816374, 443F3A637F4D7978
// reference: 889F8BB47446716C, D720054CA459F09E
// reference: 11CAF3F5F42222EF, D720054CA459F09E
