module adder (ci,
    co,
    VPWR,
    VGND,
    i0,
    i1,
    s);
 input ci;
 output co;
 input VPWR;
 input VGND;
 input [7:0] i0;
 input [7:0] i1;
 output [7:0] s;

 sky130_fd_sc_hd__a2bb2o_4 _25_ (.A1_N(i1[3]),
    .A2_N(i0[3]),
    .B1(i1[3]),
    .B2(i0[3]),
    .X(_00_));
 sky130_fd_sc_hd__and2_4 _26_ (.A(i0[2]),
    .B(i1[2]),
    .X(_01_));
 sky130_fd_sc_hd__and2_4 _27_ (.A(i0[1]),
    .B(i1[1]),
    .X(_02_));
 sky130_fd_sc_hd__and2_4 _28_ (.A(i0[0]),
    .B(i1[0]),
    .X(_03_));
 sky130_fd_sc_hd__o22a_4 _29_ (.A1(i0[0]),
    .A2(i1[0]),
    .B1(ci),
    .B2(_03_),
    .X(_04_));
 sky130_fd_sc_hd__o22a_4 _30_ (.A1(i0[1]),
    .A2(i1[1]),
    .B1(_02_),
    .B2(_04_),
    .X(_05_));
 sky130_fd_sc_hd__o22a_4 _31_ (.A1(i0[2]),
    .A2(i1[2]),
    .B1(_01_),
    .B2(_05_),
    .X(_06_));
 sky130_fd_sc_hd__a2bb2o_4 _32_ (.A1_N(_00_),
    .A2_N(psn_net_6),
    .B1(_00_),
    .B2(psn_net_6),
    .X(s[3]));
 sky130_fd_sc_hd__a2bb2o_4 _33_ (.A1_N(i1[4]),
    .A2_N(i0[4]),
    .B1(i1[4]),
    .B2(i0[4]),
    .X(_07_));
 sky130_fd_sc_hd__and2_4 _34_ (.A(i1[3]),
    .B(i0[3]),
    .X(_08_));
 sky130_fd_sc_hd__o22a_4 _35_ (.A1(i1[3]),
    .A2(i0[3]),
    .B1(_08_),
    .B2(_06_),
    .X(_09_));
 sky130_fd_sc_hd__a2bb2o_4 _36_ (.A1_N(_07_),
    .A2_N(psn_net_4),
    .B1(_07_),
    .B2(psn_net_5),
    .X(s[4]));
 sky130_fd_sc_hd__a2bb2o_4 _37_ (.A1_N(i1[5]),
    .A2_N(i0[5]),
    .B1(i1[5]),
    .B2(i0[5]),
    .X(_10_));
 sky130_fd_sc_hd__and2_4 _38_ (.A(i1[4]),
    .B(i0[4]),
    .X(_11_));
 sky130_fd_sc_hd__o22a_4 _39_ (.A1(i1[4]),
    .A2(i0[4]),
    .B1(_11_),
    .B2(_09_),
    .X(_12_));
 sky130_fd_sc_hd__a2bb2o_4 _40_ (.A1_N(_10_),
    .A2_N(psn_net_2),
    .B1(_10_),
    .B2(psn_net_3),
    .X(s[5]));
 sky130_fd_sc_hd__a2bb2o_4 _41_ (.A1_N(i1[6]),
    .A2_N(i0[6]),
    .B1(i1[6]),
    .B2(i0[6]),
    .X(_13_));
 sky130_fd_sc_hd__and2_4 _42_ (.A(i1[5]),
    .B(i0[5]),
    .X(_14_));
 sky130_fd_sc_hd__o22a_4 _43_ (.A1(i1[5]),
    .A2(i0[5]),
    .B1(_14_),
    .B2(_12_),
    .X(_15_));
 sky130_fd_sc_hd__a2bb2o_4 _44_ (.A1_N(_13_),
    .A2_N(psn_net_0),
    .B1(_13_),
    .B2(psn_net_1),
    .X(s[6]));
 sky130_fd_sc_hd__and2_4 _45_ (.A(i0[7]),
    .B(i1[7]),
    .X(_16_));
 sky130_fd_sc_hd__and2_4 _46_ (.A(i1[6]),
    .B(i0[6]),
    .X(_17_));
 sky130_fd_sc_hd__o22a_4 _47_ (.A1(i1[6]),
    .A2(i0[6]),
    .B1(_17_),
    .B2(_15_),
    .X(_18_));
 sky130_fd_sc_hd__o22a_4 _48_ (.A1(i0[7]),
    .A2(i1[7]),
    .B1(_16_),
    .B2(_18_),
    .X(co));
 sky130_fd_sc_hd__a2bb2o_4 _49_ (.A1_N(i0[7]),
    .A2_N(i1[7]),
    .B1(i0[7]),
    .B2(i1[7]),
    .X(_19_));
 sky130_fd_sc_hd__a2bb2o_4 _50_ (.A1_N(_19_),
    .A2_N(_18_),
    .B1(_18_),
    .B2(_19_),
    .X(s[7]));
 sky130_fd_sc_hd__inv_2 _51_ (.A(ci),
    .Y(_20_));
 sky130_fd_sc_hd__inv_2 _52_ (.A(psn_net_10),
    .Y(_21_));
 sky130_fd_sc_hd__o21a_4 _53_ (.A1(i0[0]),
    .A2(i1[0]),
    .B1(_21_),
    .X(_22_));
 sky130_fd_sc_hd__a2bb2o_4 _54_ (.A1_N(_20_),
    .A2_N(_22_),
    .B1(_20_),
    .B2(_22_),
    .X(s[0]));
 sky130_fd_sc_hd__a2bb2o_4 _55_ (.A1_N(i0[1]),
    .A2_N(i1[1]),
    .B1(i0[1]),
    .B2(i1[1]),
    .X(_23_));
 sky130_fd_sc_hd__a2bb2o_4 _56_ (.A1_N(_23_),
    .A2_N(psn_net_9),
    .B1(psn_net_8),
    .B2(_23_),
    .X(s[1]));
 sky130_fd_sc_hd__a2bb2o_4 _57_ (.A1_N(i0[2]),
    .A2_N(i1[2]),
    .B1(i0[2]),
    .B2(i1[2]),
    .X(_24_));
 sky130_fd_sc_hd__a2bb2o_4 _58_ (.A1_N(_24_),
    .A2_N(psn_net_7),
    .B1(psn_net_7),
    .B2(_24_),
    .X(s[2]));
 sky130_fd_sc_hd__decap_3 PHY_0 ();
 sky130_fd_sc_hd__decap_3 PHY_1 ();
 sky130_fd_sc_hd__decap_3 PHY_2 ();
 sky130_fd_sc_hd__decap_3 PHY_3 ();
 sky130_fd_sc_hd__decap_3 PHY_4 ();
 sky130_fd_sc_hd__decap_3 PHY_5 ();
 sky130_fd_sc_hd__decap_3 PHY_6 ();
 sky130_fd_sc_hd__decap_3 PHY_7 ();
 sky130_fd_sc_hd__decap_3 PHY_8 ();
 sky130_fd_sc_hd__decap_3 PHY_9 ();
 sky130_fd_sc_hd__decap_3 PHY_10 ();
 sky130_fd_sc_hd__decap_3 PHY_11 ();
 sky130_fd_sc_hd__decap_3 PHY_12 ();
 sky130_fd_sc_hd__decap_3 PHY_13 ();
 sky130_fd_sc_hd__decap_3 PHY_14 ();
 sky130_fd_sc_hd__decap_3 PHY_15 ();
 sky130_fd_sc_hd__decap_3 PHY_16 ();
 sky130_fd_sc_hd__decap_3 PHY_17 ();
 sky130_fd_sc_hd__decap_3 PHY_18 ();
 sky130_fd_sc_hd__decap_3 PHY_19 ();
 sky130_fd_sc_hd__decap_3 PHY_20 ();
 sky130_fd_sc_hd__decap_3 PHY_21 ();
 sky130_fd_sc_hd__decap_3 PHY_22 ();
 sky130_fd_sc_hd__decap_3 PHY_23 ();
 sky130_fd_sc_hd__decap_3 PHY_24 ();
 sky130_fd_sc_hd__decap_3 PHY_25 ();
 sky130_fd_sc_hd__decap_3 PHY_26 ();
 sky130_fd_sc_hd__decap_3 PHY_27 ();
 sky130_fd_sc_hd__decap_3 PHY_28 ();
 sky130_fd_sc_hd__decap_3 PHY_29 ();
 sky130_fd_sc_hd__decap_3 PHY_30 ();
 sky130_fd_sc_hd__decap_3 PHY_31 ();
 sky130_fd_sc_hd__decap_3 PHY_32 ();
 sky130_fd_sc_hd__decap_3 PHY_33 ();
 sky130_fd_sc_hd__decap_3 PHY_34 ();
 sky130_fd_sc_hd__decap_3 PHY_35 ();
 sky130_fd_sc_hd__decap_3 PHY_36 ();
 sky130_fd_sc_hd__decap_3 PHY_37 ();
 sky130_fd_sc_hd__decap_3 PHY_38 ();
 sky130_fd_sc_hd__decap_3 PHY_39 ();
 sky130_fd_sc_hd__decap_3 PHY_40 ();
 sky130_fd_sc_hd__decap_3 PHY_41 ();
 sky130_fd_sc_hd__decap_3 PHY_42 ();
 sky130_fd_sc_hd__decap_3 PHY_43 ();
 sky130_fd_sc_hd__decap_3 PHY_44 ();
 sky130_fd_sc_hd__decap_3 PHY_45 ();
 sky130_fd_sc_hd__decap_3 PHY_46 ();
 sky130_fd_sc_hd__decap_3 PHY_47 ();
 sky130_fd_sc_hd__decap_3 PHY_48 ();
 sky130_fd_sc_hd__decap_3 PHY_49 ();
 sky130_fd_sc_hd__decap_3 PHY_50 ();
 sky130_fd_sc_hd__decap_3 PHY_51 ();
 sky130_fd_sc_hd__decap_3 PHY_52 ();
 sky130_fd_sc_hd__decap_3 PHY_53 ();
 sky130_fd_sc_hd__decap_3 PHY_54 ();
 sky130_fd_sc_hd__decap_3 PHY_55 ();
 sky130_fd_sc_hd__decap_3 PHY_56 ();
 sky130_fd_sc_hd__decap_3 PHY_57 ();
 sky130_fd_sc_hd__decap_3 PHY_58 ();
 sky130_fd_sc_hd__decap_3 PHY_59 ();
 sky130_fd_sc_hd__decap_3 PHY_60 ();
 sky130_fd_sc_hd__decap_3 PHY_61 ();
 sky130_fd_sc_hd__decap_3 PHY_62 ();
 sky130_fd_sc_hd__decap_3 PHY_63 ();
 sky130_fd_sc_hd__decap_3 PHY_64 ();
 sky130_fd_sc_hd__decap_3 PHY_65 ();
 sky130_fd_sc_hd__decap_3 PHY_66 ();
 sky130_fd_sc_hd__decap_3 PHY_67 ();
 sky130_fd_sc_hd__decap_3 PHY_68 ();
 sky130_fd_sc_hd__decap_3 PHY_69 ();
 sky130_fd_sc_hd__decap_3 PHY_70 ();
 sky130_fd_sc_hd__decap_3 PHY_71 ();
 sky130_fd_sc_hd__decap_3 PHY_72 ();
 sky130_fd_sc_hd__decap_3 PHY_73 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_74 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_75 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_76 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_77 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_78 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_79 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_80 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_81 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_82 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_83 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_84 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_85 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_86 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_87 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_88 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_89 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_90 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_91 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_92 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_93 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_94 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_95 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_96 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_97 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_98 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_99 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_100 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_101 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_102 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_103 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_104 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_105 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_106 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_107 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_108 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_109 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_110 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_111 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_112 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_113 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_114 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_115 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_116 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_117 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_118 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_119 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_120 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_121 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_122 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_123 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_124 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_125 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_126 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_127 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_128 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_129 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_130 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_131 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_132 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_133 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_134 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_135 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_136 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_137 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_138 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_139 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_140 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_141 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_142 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_143 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_144 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_145 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_146 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_147 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_148 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_149 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_150 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_151 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_152 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_153 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_154 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_155 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_156 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_157 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_158 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_159 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_160 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_161 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_162 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_163 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_164 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_165 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_166 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_167 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_168 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_169 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_170 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_171 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_172 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_173 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_174 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_175 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_176 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_177 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_178 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_179 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_180 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_181 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_182 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_183 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_184 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_185 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_186 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_187 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_188 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_189 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_190 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_191 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_192 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_193 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_194 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_195 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_196 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_197 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_198 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_199 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_200 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_201 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_202 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_203 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_204 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_205 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_206 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_207 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_208 ();
 sky130_fd_sc_hd__tapvpwrvgnd_1 PHY_209 ();
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_0 (.A(_15_),
    .X(psn_net_0));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_1 (.A(_15_),
    .X(psn_net_1));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_2 (.A(_12_),
    .X(psn_net_2));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_3 (.A(_12_),
    .X(psn_net_3));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_4 (.A(psn_net_11),
    .X(psn_net_4));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_5 (.A(_09_),
    .X(psn_net_5));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_6 (.A(_06_),
    .X(psn_net_6));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_7 (.A(psn_net_12),
    .X(psn_net_7));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_8 (.A(psn_net_13),
    .X(psn_net_8));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_9 (.A(psn_net_13),
    .X(psn_net_9));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_10 (.A(psn_net_14),
    .X(psn_net_10));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_11 (.A(psn_net_15),
    .X(psn_net_11));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_12 (.A(psn_net_16),
    .X(psn_net_12));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_13 (.A(psn_net_17),
    .X(psn_net_13));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_14 (.A(psn_net_18),
    .X(psn_net_14));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_15 (.A(psn_net_19),
    .X(psn_net_15));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_16 (.A(psn_net_20),
    .X(psn_net_16));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_17 (.A(psn_net_21),
    .X(psn_net_17));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_18 (.A(psn_net_22),
    .X(psn_net_18));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_19 (.A(psn_net_23),
    .X(psn_net_19));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_20 (.A(psn_net_24),
    .X(psn_net_20));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_21 (.A(psn_net_25),
    .X(psn_net_21));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_22 (.A(psn_net_26),
    .X(psn_net_22));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_23 (.A(_09_),
    .X(psn_net_23));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_24 (.A(psn_net_27),
    .X(psn_net_24));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_25 (.A(psn_net_28),
    .X(psn_net_25));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_26 (.A(psn_net_29),
    .X(psn_net_26));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_27 (.A(psn_net_30),
    .X(psn_net_27));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_28 (.A(psn_net_31),
    .X(psn_net_28));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_29 (.A(psn_net_32),
    .X(psn_net_29));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_30 (.A(_05_),
    .X(psn_net_30));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_31 (.A(psn_net_33),
    .X(psn_net_31));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_32 (.A(psn_net_34),
    .X(psn_net_32));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_33 (.A(_04_),
    .X(psn_net_33));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_34 (.A(psn_net_35),
    .X(psn_net_34));
 sky130_fd_sc_hd__buf_2 psn_inst_psn_buff_35 (.A(_03_),
    .X(psn_net_35));
endmodule
