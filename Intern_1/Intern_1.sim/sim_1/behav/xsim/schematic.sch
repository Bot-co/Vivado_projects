# File saved with Nlview 7.8.0 2024-04-26 e1825d835c VDI=44 GEI=38 GUI=JA:21.0 threadsafe
# 
# non-default properties - (restore without -noprops)
property -colorscheme classic
property attrfontsize 8
property autobundle 1
property backgroundcolor #21222b
property boxcolor0 #797f8e
property boxcolor1 #797f8e
property boxcolor2 #797f8e
property boxinstcolor #f7f8f9
property boxpincolor #f7f8f9
property buscolor #009633
property closeenough 5
property createnetattrdsp 2048
property decorate 1
property elidetext 40
property fillcolor1 #50306c
property fillcolor2 #2e446d
property fillcolor3 #f0f0f0
property gatecellname 2
property instattrmax 30
property instdrag 15
property instorder 1
property marksize 12
property maxfontsize 15
property maxzoom 6.25
property netcolor #628d30
property objecthighlight0 #fe00f6
property objecthighlight1 #ffea00
property objecthighlight2 #84e413
property objecthighlight3 #0288d1
property objecthighlight4 #8a60ff
property objecthighlight5 #ffa358
property objecthighlight6 #ff2b2b
property objecthighlight7 #00e0ff
property objecthighlight8 #c0ca33
property objecthighlight9 #b16eff
property objecthighlight10 #46a466
property objecthighlight11 #caff78
property objecthighlight12 #ab47bc
property objecthighlight13 #b4602c
property objecthighlight14 #c20f8c
property objecthighlight15 #00ffaa
property objecthighlight16 #ff9fe4
property objecthighlight17 #ff8019
property objecthighlight18 #26b3ff
property objecthighlight19 #e5551c
property overlaycolor #628d30
property pbuscolor #ffffff
property pbusnamecolor #f7f8f9
property pinattrmax 20
property pinorder 2
property pinpermute 0
property portcolor #ffffff
property portnamecolor #f7f8f9
property ripindexfontsize 4
property rippercolor #ffffff
property rubberbandcolor #f7f8f9
property rubberbandfontsize 16
property selectattr 0
property selectionappearance 2
property selectioncolor #58a2ff
property sheetheight 44
property sheetwidth 68
property showmarks 1
property shownetname 0
property showpagenumbers 1
property showripindex 1
property timelimit 1
#
module new top_module work:top_module:NOFILE -nosplit
load symbol mac work:mac:NOFILE HIERBOX pin clk input.left pin confidence input.left pin reset input.left pin valid_data input.left pinBus acc output.right [15:0] pinBus pixel input.left [15:0] pinBus weight input.left [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mac__parameterized0 work:mac__parameterized0:NOFILE HIERBOX pin clk input.left pin confidence input.left pin reset input.left pin valid_data input.left pinBus acc output.right [15:0] pinBus pixel input.left [15:0] pinBus weight input.left [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mac__parameterized1 work:mac__parameterized1:NOFILE HIERBOX pin clk input.left pin confidence input.left pin reset input.left pin valid_data input.left pinBus acc output.right [15:0] pinBus pixel input.left [15:0] pinBus weight input.left [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mac__parameterized1 work:abstract:NOFILE HIERBOX pin clk input.left pin confidence input.left pin reset input.left pin valid_data input.left pinBus acc output.right [15:0] pinBus pixel input.left [15:0] pinBus weight input.left [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol mac__parameterized0 work:abstract:NOFILE HIERBOX pin clk input.left pin confidence input.left pin reset input.left pin valid_data input.left pinBus acc output.right [15:0] pinBus pixel input.left [15:0] pinBus weight input.left [15:0] boxcolor 1 fillcolor 2 minwidth 13%
load symbol RTL_MUX0 work MUX pin S input.bot pinBus I0 input.left [15:0] pinBus I1 input.left [15:0] pinBus O output.right [15:0] fillcolor 1
load symbol RTL_ADD0 work RTL(+) pinBus I0 input.left [15:0] pinBus I1 input.left [15:0] pinBus O output.right [15:0] fillcolor 1
load symbol RTL_OR work OR pinBus I0 input [3:0] pinBus I1 input [3:0] pinBus O output [3:0] fillcolor 1
load symbol RTL_ADD work RTL(+) pinBus I0 input.left [11:0] pinBus I1 input.left [11:0] pinBus O output.right [11:0] fillcolor 1
load symbol RTL_MULT work RTL(*) pinBus I0 input.left [15:0] pinBus I1 input.left [15:0] pinBus O output.right [27:0] fillcolor 1
load symbol RTL_REG_SYNC__BREG_1 work[15:0]sswws GEN pin C input.clk.left pin CE input.left pinBus D input.left [15:0] pinBus Q output.right [15:0] pin RST input.top fillcolor 1 sandwich 3 prop @bundle 16
load port clk input -pg 1 -lvl 0 -x 0 -y 60
load port global_confidence input -pg 1 -lvl 0 -x 0 -y 90
load port global_valid input -pg 1 -lvl 0 -x 0 -y 180
load port reset input -pg 1 -lvl 0 -x 0 -y 150
load portBus conv1_out output [15:0] -attr @name conv1_out[15:0] -pg 1 -lvl 2 -x 2060 -y 100
load portBus conv2_out output [15:0] -attr @name conv2_out[15:0] -pg 1 -lvl 2 -x 2060 -y 290
load portBus conv3_out output [15:0] -attr @name conv3_out[15:0] -pg 1 -lvl 2 -x 2060 -y 480
load portBus fc1_out output [15:0] -attr @name fc1_out[15:0] -pg 1 -lvl 2 -x 2060 -y 670
load portBus fc2_out output [15:0] -attr @name fc2_out[15:0] -pg 1 -lvl 2 -x 2060 -y 860
load portBus pixel_in input [15:0] -attr @name pixel_in[15:0] -pg 1 -lvl 0 -x 0 -y 120
load portBus weight_in input [15:0] -attr @name weight_in[15:0] -pg 1 -lvl 0 -x 0 -y 210
load inst mac_conv1 mac work:mac:NOFILE -autohide -attr @cell(#f7f8f9) mac -attr @fillcolor #21222b -pinBusAttr acc @name acc[15:0] -pinBusAttr pixel @name pixel[15:0] -pinBusAttr weight @name weight[15:0] -pg 1 -lvl 1 -x 220 -y 58
load inst mac_conv2 mac__parameterized0 work:mac__parameterized0:NOFILE -autohide -attr @cell(#f7f8f9) mac__parameterized0 -pinBusAttr acc @name acc[15:0] -pinBusAttr pixel @name pixel[15:0] -pinBusAttr weight @name weight[15:0] -pg 1 -lvl 1 -x 220 -y 568
load inst mac_conv3 mac__parameterized1 work:mac__parameterized1:NOFILE -autohide -attr @cell(#f7f8f9) mac__parameterized1 -pinBusAttr acc @name acc[15:0] -pinBusAttr pixel @name pixel[15:0] -pinBusAttr weight @name weight[15:0] -pg 1 -lvl 1 -x 220 -y 758
load inst mac_fc1 mac__parameterized1 work:abstract:NOFILE -autohide -attr @cell(#f7f8f9) mac__parameterized1 -pinBusAttr acc @name acc[15:0] -pinBusAttr pixel @name pixel[15:0] -pinBusAttr weight @name weight[15:0] -pg 1 -lvl 1 -x 220 -y 948
load inst mac_fc2 mac__parameterized0 work:abstract:NOFILE -autohide -attr @cell(#f7f8f9) mac__parameterized0 -pinBusAttr acc @name acc[15:0] -pinBusAttr pixel @name pixel[15:0] -pinBusAttr weight @name weight[15:0] -pg 1 -lvl 1 -x 220 -y 1138
load inst mac_conv1|acc0_i RTL_MUX0 work -hier mac_conv1 -attr @cell(#f7f8f9) RTL_MUX -attr @name acc0_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 5 -x 1520 -y 278
load inst mac_conv1|exact_sum_i RTL_ADD0 work -hier mac_conv1 -attr @cell(#f7f8f9) RTL_ADD -attr @name exact_sum_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I1 @name I1[15:0] -pinBusAttr O @name O[15:0] -pg 1 -lvl 4 -x 1230 -y 128
load inst mac_conv1|isolated_a_i RTL_MUX0 work -hier mac_conv1 -attr @cell(#f7f8f9) RTL_MUX -attr @name isolated_a_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 3 -x 970 -y 248
load inst mac_conv1|isolated_b_i RTL_MUX0 work -hier mac_conv1 -attr @cell(#f7f8f9) RTL_MUX -attr @name isolated_b_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I0 @attr S=1'b1 -pinBusAttr I1 @name I1[15:0] -pinBusAttr I1 @attr S=default -pinBusAttr O @name O[15:0] -pg 1 -lvl 3 -x 970 -y 98
load inst mac_conv1|loa_sum0_i RTL_OR work -hier mac_conv1 -attr @cell(#f7f8f9) RTL_OR -attr @name loa_sum0_i -pinBusAttr I0 @name I0[3:0] -pinBusAttr I1 @name I1[3:0] -pinBusAttr O @name O[3:0] -pg 1 -lvl 4 -x 1230 -y 208
load inst mac_conv1|loa_sum0_i__0 RTL_ADD work -hier mac_conv1 -attr @cell(#f7f8f9) RTL_ADD -attr @name loa_sum0_i__0 -pinBusAttr I0 @name I0[11:0] -pinBusAttr I1 @name I1[11:0] -pinBusAttr O @name O[11:0] -pg 1 -lvl 4 -x 1230 -y 288
load inst mac_conv1|mult_result_i RTL_MULT work -hier mac_conv1 -attr @cell(#f7f8f9) RTL_MULT -attr @name mult_result_i -pinBusAttr I0 @name I0[15:0] -pinBusAttr I1 @name I1[15:0] -pinBusAttr O @name O[27:0] -pg 1 -lvl 2 -x 670 -y 448
load inst mac_conv1|pixel_reg_reg[15:0] RTL_REG_SYNC__BREG_1 work[15:0]sswws -hier mac_conv1 -attr @cell(#f7f8f9) RTL_REG_SYNC -attr @name pixel_reg_reg[15:0] -pg 1 -lvl 1 -x 350 -y 108
load inst mac_conv1|acc_reg[15:0] RTL_REG_SYNC__BREG_1 work[15:0]sswws -hier mac_conv1 -attr @cell(#f7f8f9) RTL_REG_SYNC -attr @name acc_reg[15:0] -pg 1 -lvl 6 -x 1700 -y 378
load inst mac_conv1|weight_reg_reg[15:0] RTL_REG_SYNC__BREG_1 work[15:0]sswws -hier mac_conv1 -attr @cell(#f7f8f9) RTL_REG_SYNC -attr @name weight_reg_reg[15:0] -pg 1 -lvl 1 -x 350 -y 278
load net clk -port clk -pin mac_conv1 clk -pin mac_conv2 clk -pin mac_conv3 clk -pin mac_fc1 clk -pin mac_fc2 clk
netloc clk 1 0 1 120 60n
load net conv1_out[0] -attr @rip acc[0] -port conv1_out[0] -pin mac_conv1 acc[0]
load net conv1_out[10] -attr @rip acc[10] -port conv1_out[10] -pin mac_conv1 acc[10]
load net conv1_out[11] -attr @rip acc[11] -port conv1_out[11] -pin mac_conv1 acc[11]
load net conv1_out[12] -attr @rip acc[12] -port conv1_out[12] -pin mac_conv1 acc[12]
load net conv1_out[13] -attr @rip acc[13] -port conv1_out[13] -pin mac_conv1 acc[13]
load net conv1_out[14] -attr @rip acc[14] -port conv1_out[14] -pin mac_conv1 acc[14]
load net conv1_out[15] -attr @rip acc[15] -port conv1_out[15] -pin mac_conv1 acc[15]
load net conv1_out[1] -attr @rip acc[1] -port conv1_out[1] -pin mac_conv1 acc[1]
load net conv1_out[2] -attr @rip acc[2] -port conv1_out[2] -pin mac_conv1 acc[2]
load net conv1_out[3] -attr @rip acc[3] -port conv1_out[3] -pin mac_conv1 acc[3]
load net conv1_out[4] -attr @rip acc[4] -port conv1_out[4] -pin mac_conv1 acc[4]
load net conv1_out[5] -attr @rip acc[5] -port conv1_out[5] -pin mac_conv1 acc[5]
load net conv1_out[6] -attr @rip acc[6] -port conv1_out[6] -pin mac_conv1 acc[6]
load net conv1_out[7] -attr @rip acc[7] -port conv1_out[7] -pin mac_conv1 acc[7]
load net conv1_out[8] -attr @rip acc[8] -port conv1_out[8] -pin mac_conv1 acc[8]
load net conv1_out[9] -attr @rip acc[9] -port conv1_out[9] -pin mac_conv1 acc[9]
load net conv2_out[0] -attr @rip acc[0] -port conv2_out[0] -pin mac_conv2 acc[0]
load net conv2_out[10] -attr @rip acc[10] -port conv2_out[10] -pin mac_conv2 acc[10]
load net conv2_out[11] -attr @rip acc[11] -port conv2_out[11] -pin mac_conv2 acc[11]
load net conv2_out[12] -attr @rip acc[12] -port conv2_out[12] -pin mac_conv2 acc[12]
load net conv2_out[13] -attr @rip acc[13] -port conv2_out[13] -pin mac_conv2 acc[13]
load net conv2_out[14] -attr @rip acc[14] -port conv2_out[14] -pin mac_conv2 acc[14]
load net conv2_out[15] -attr @rip acc[15] -port conv2_out[15] -pin mac_conv2 acc[15]
load net conv2_out[1] -attr @rip acc[1] -port conv2_out[1] -pin mac_conv2 acc[1]
load net conv2_out[2] -attr @rip acc[2] -port conv2_out[2] -pin mac_conv2 acc[2]
load net conv2_out[3] -attr @rip acc[3] -port conv2_out[3] -pin mac_conv2 acc[3]
load net conv2_out[4] -attr @rip acc[4] -port conv2_out[4] -pin mac_conv2 acc[4]
load net conv2_out[5] -attr @rip acc[5] -port conv2_out[5] -pin mac_conv2 acc[5]
load net conv2_out[6] -attr @rip acc[6] -port conv2_out[6] -pin mac_conv2 acc[6]
load net conv2_out[7] -attr @rip acc[7] -port conv2_out[7] -pin mac_conv2 acc[7]
load net conv2_out[8] -attr @rip acc[8] -port conv2_out[8] -pin mac_conv2 acc[8]
load net conv2_out[9] -attr @rip acc[9] -port conv2_out[9] -pin mac_conv2 acc[9]
load net conv3_out[0] -attr @rip acc[0] -port conv3_out[0] -pin mac_conv3 acc[0]
load net conv3_out[10] -attr @rip acc[10] -port conv3_out[10] -pin mac_conv3 acc[10]
load net conv3_out[11] -attr @rip acc[11] -port conv3_out[11] -pin mac_conv3 acc[11]
load net conv3_out[12] -attr @rip acc[12] -port conv3_out[12] -pin mac_conv3 acc[12]
load net conv3_out[13] -attr @rip acc[13] -port conv3_out[13] -pin mac_conv3 acc[13]
load net conv3_out[14] -attr @rip acc[14] -port conv3_out[14] -pin mac_conv3 acc[14]
load net conv3_out[15] -attr @rip acc[15] -port conv3_out[15] -pin mac_conv3 acc[15]
load net conv3_out[1] -attr @rip acc[1] -port conv3_out[1] -pin mac_conv3 acc[1]
load net conv3_out[2] -attr @rip acc[2] -port conv3_out[2] -pin mac_conv3 acc[2]
load net conv3_out[3] -attr @rip acc[3] -port conv3_out[3] -pin mac_conv3 acc[3]
load net conv3_out[4] -attr @rip acc[4] -port conv3_out[4] -pin mac_conv3 acc[4]
load net conv3_out[5] -attr @rip acc[5] -port conv3_out[5] -pin mac_conv3 acc[5]
load net conv3_out[6] -attr @rip acc[6] -port conv3_out[6] -pin mac_conv3 acc[6]
load net conv3_out[7] -attr @rip acc[7] -port conv3_out[7] -pin mac_conv3 acc[7]
load net conv3_out[8] -attr @rip acc[8] -port conv3_out[8] -pin mac_conv3 acc[8]
load net conv3_out[9] -attr @rip acc[9] -port conv3_out[9] -pin mac_conv3 acc[9]
load net fc1_out[0] -attr @rip acc[0] -port fc1_out[0] -pin mac_fc1 acc[0]
load net fc1_out[10] -attr @rip acc[10] -port fc1_out[10] -pin mac_fc1 acc[10]
load net fc1_out[11] -attr @rip acc[11] -port fc1_out[11] -pin mac_fc1 acc[11]
load net fc1_out[12] -attr @rip acc[12] -port fc1_out[12] -pin mac_fc1 acc[12]
load net fc1_out[13] -attr @rip acc[13] -port fc1_out[13] -pin mac_fc1 acc[13]
load net fc1_out[14] -attr @rip acc[14] -port fc1_out[14] -pin mac_fc1 acc[14]
load net fc1_out[15] -attr @rip acc[15] -port fc1_out[15] -pin mac_fc1 acc[15]
load net fc1_out[1] -attr @rip acc[1] -port fc1_out[1] -pin mac_fc1 acc[1]
load net fc1_out[2] -attr @rip acc[2] -port fc1_out[2] -pin mac_fc1 acc[2]
load net fc1_out[3] -attr @rip acc[3] -port fc1_out[3] -pin mac_fc1 acc[3]
load net fc1_out[4] -attr @rip acc[4] -port fc1_out[4] -pin mac_fc1 acc[4]
load net fc1_out[5] -attr @rip acc[5] -port fc1_out[5] -pin mac_fc1 acc[5]
load net fc1_out[6] -attr @rip acc[6] -port fc1_out[6] -pin mac_fc1 acc[6]
load net fc1_out[7] -attr @rip acc[7] -port fc1_out[7] -pin mac_fc1 acc[7]
load net fc1_out[8] -attr @rip acc[8] -port fc1_out[8] -pin mac_fc1 acc[8]
load net fc1_out[9] -attr @rip acc[9] -port fc1_out[9] -pin mac_fc1 acc[9]
load net fc2_out[0] -attr @rip acc[0] -port fc2_out[0] -pin mac_fc2 acc[0]
load net fc2_out[10] -attr @rip acc[10] -port fc2_out[10] -pin mac_fc2 acc[10]
load net fc2_out[11] -attr @rip acc[11] -port fc2_out[11] -pin mac_fc2 acc[11]
load net fc2_out[12] -attr @rip acc[12] -port fc2_out[12] -pin mac_fc2 acc[12]
load net fc2_out[13] -attr @rip acc[13] -port fc2_out[13] -pin mac_fc2 acc[13]
load net fc2_out[14] -attr @rip acc[14] -port fc2_out[14] -pin mac_fc2 acc[14]
load net fc2_out[15] -attr @rip acc[15] -port fc2_out[15] -pin mac_fc2 acc[15]
load net fc2_out[1] -attr @rip acc[1] -port fc2_out[1] -pin mac_fc2 acc[1]
load net fc2_out[2] -attr @rip acc[2] -port fc2_out[2] -pin mac_fc2 acc[2]
load net fc2_out[3] -attr @rip acc[3] -port fc2_out[3] -pin mac_fc2 acc[3]
load net fc2_out[4] -attr @rip acc[4] -port fc2_out[4] -pin mac_fc2 acc[4]
load net fc2_out[5] -attr @rip acc[5] -port fc2_out[5] -pin mac_fc2 acc[5]
load net fc2_out[6] -attr @rip acc[6] -port fc2_out[6] -pin mac_fc2 acc[6]
load net fc2_out[7] -attr @rip acc[7] -port fc2_out[7] -pin mac_fc2 acc[7]
load net fc2_out[8] -attr @rip acc[8] -port fc2_out[8] -pin mac_fc2 acc[8]
load net fc2_out[9] -attr @rip acc[9] -port fc2_out[9] -pin mac_fc2 acc[9]
load net global_confidence -port global_confidence -pin mac_conv1 confidence -pin mac_conv2 confidence -pin mac_conv3 confidence -pin mac_fc1 confidence -pin mac_fc2 confidence
netloc global_confidence 1 0 1 100 90n
load net global_valid -port global_valid -pin mac_conv1 valid_data -pin mac_conv2 valid_data -pin mac_conv3 valid_data -pin mac_fc1 valid_data -pin mac_fc2 valid_data
netloc global_valid 1 0 1 40 180n
load net pixel_in[0] -attr @rip pixel_in[0] -pin mac_conv1 pixel[0] -pin mac_conv2 pixel[0] -pin mac_conv3 pixel[0] -pin mac_fc1 pixel[0] -pin mac_fc2 pixel[0] -port pixel_in[0]
load net pixel_in[10] -attr @rip pixel_in[10] -pin mac_conv1 pixel[10] -pin mac_conv2 pixel[10] -pin mac_conv3 pixel[10] -pin mac_fc1 pixel[10] -pin mac_fc2 pixel[10] -port pixel_in[10]
load net pixel_in[11] -attr @rip pixel_in[11] -pin mac_conv1 pixel[11] -pin mac_conv2 pixel[11] -pin mac_conv3 pixel[11] -pin mac_fc1 pixel[11] -pin mac_fc2 pixel[11] -port pixel_in[11]
load net pixel_in[12] -attr @rip pixel_in[12] -pin mac_conv1 pixel[12] -pin mac_conv2 pixel[12] -pin mac_conv3 pixel[12] -pin mac_fc1 pixel[12] -pin mac_fc2 pixel[12] -port pixel_in[12]
load net pixel_in[13] -attr @rip pixel_in[13] -pin mac_conv1 pixel[13] -pin mac_conv2 pixel[13] -pin mac_conv3 pixel[13] -pin mac_fc1 pixel[13] -pin mac_fc2 pixel[13] -port pixel_in[13]
load net pixel_in[14] -attr @rip pixel_in[14] -pin mac_conv1 pixel[14] -pin mac_conv2 pixel[14] -pin mac_conv3 pixel[14] -pin mac_fc1 pixel[14] -pin mac_fc2 pixel[14] -port pixel_in[14]
load net pixel_in[15] -attr @rip pixel_in[15] -pin mac_conv1 pixel[15] -pin mac_conv2 pixel[15] -pin mac_conv3 pixel[15] -pin mac_fc1 pixel[15] -pin mac_fc2 pixel[15] -port pixel_in[15]
load net pixel_in[1] -attr @rip pixel_in[1] -pin mac_conv1 pixel[1] -pin mac_conv2 pixel[1] -pin mac_conv3 pixel[1] -pin mac_fc1 pixel[1] -pin mac_fc2 pixel[1] -port pixel_in[1]
load net pixel_in[2] -attr @rip pixel_in[2] -pin mac_conv1 pixel[2] -pin mac_conv2 pixel[2] -pin mac_conv3 pixel[2] -pin mac_fc1 pixel[2] -pin mac_fc2 pixel[2] -port pixel_in[2]
load net pixel_in[3] -attr @rip pixel_in[3] -pin mac_conv1 pixel[3] -pin mac_conv2 pixel[3] -pin mac_conv3 pixel[3] -pin mac_fc1 pixel[3] -pin mac_fc2 pixel[3] -port pixel_in[3]
load net pixel_in[4] -attr @rip pixel_in[4] -pin mac_conv1 pixel[4] -pin mac_conv2 pixel[4] -pin mac_conv3 pixel[4] -pin mac_fc1 pixel[4] -pin mac_fc2 pixel[4] -port pixel_in[4]
load net pixel_in[5] -attr @rip pixel_in[5] -pin mac_conv1 pixel[5] -pin mac_conv2 pixel[5] -pin mac_conv3 pixel[5] -pin mac_fc1 pixel[5] -pin mac_fc2 pixel[5] -port pixel_in[5]
load net pixel_in[6] -attr @rip pixel_in[6] -pin mac_conv1 pixel[6] -pin mac_conv2 pixel[6] -pin mac_conv3 pixel[6] -pin mac_fc1 pixel[6] -pin mac_fc2 pixel[6] -port pixel_in[6]
load net pixel_in[7] -attr @rip pixel_in[7] -pin mac_conv1 pixel[7] -pin mac_conv2 pixel[7] -pin mac_conv3 pixel[7] -pin mac_fc1 pixel[7] -pin mac_fc2 pixel[7] -port pixel_in[7]
load net pixel_in[8] -attr @rip pixel_in[8] -pin mac_conv1 pixel[8] -pin mac_conv2 pixel[8] -pin mac_conv3 pixel[8] -pin mac_fc1 pixel[8] -pin mac_fc2 pixel[8] -port pixel_in[8]
load net pixel_in[9] -attr @rip pixel_in[9] -pin mac_conv1 pixel[9] -pin mac_conv2 pixel[9] -pin mac_conv3 pixel[9] -pin mac_fc1 pixel[9] -pin mac_fc2 pixel[9] -port pixel_in[9]
load net reset -pin mac_conv1 reset -pin mac_conv2 reset -pin mac_conv3 reset -pin mac_fc1 reset -pin mac_fc2 reset -port reset
netloc reset 1 0 1 60 150n
load net weight_in[0] -attr @rip weight_in[0] -pin mac_conv1 weight[0] -pin mac_conv2 weight[0] -pin mac_conv3 weight[0] -pin mac_fc1 weight[0] -pin mac_fc2 weight[0] -port weight_in[0]
load net weight_in[10] -attr @rip weight_in[10] -pin mac_conv1 weight[10] -pin mac_conv2 weight[10] -pin mac_conv3 weight[10] -pin mac_fc1 weight[10] -pin mac_fc2 weight[10] -port weight_in[10]
load net weight_in[11] -attr @rip weight_in[11] -pin mac_conv1 weight[11] -pin mac_conv2 weight[11] -pin mac_conv3 weight[11] -pin mac_fc1 weight[11] -pin mac_fc2 weight[11] -port weight_in[11]
load net weight_in[12] -attr @rip weight_in[12] -pin mac_conv1 weight[12] -pin mac_conv2 weight[12] -pin mac_conv3 weight[12] -pin mac_fc1 weight[12] -pin mac_fc2 weight[12] -port weight_in[12]
load net weight_in[13] -attr @rip weight_in[13] -pin mac_conv1 weight[13] -pin mac_conv2 weight[13] -pin mac_conv3 weight[13] -pin mac_fc1 weight[13] -pin mac_fc2 weight[13] -port weight_in[13]
load net weight_in[14] -attr @rip weight_in[14] -pin mac_conv1 weight[14] -pin mac_conv2 weight[14] -pin mac_conv3 weight[14] -pin mac_fc1 weight[14] -pin mac_fc2 weight[14] -port weight_in[14]
load net weight_in[15] -attr @rip weight_in[15] -pin mac_conv1 weight[15] -pin mac_conv2 weight[15] -pin mac_conv3 weight[15] -pin mac_fc1 weight[15] -pin mac_fc2 weight[15] -port weight_in[15]
load net weight_in[1] -attr @rip weight_in[1] -pin mac_conv1 weight[1] -pin mac_conv2 weight[1] -pin mac_conv3 weight[1] -pin mac_fc1 weight[1] -pin mac_fc2 weight[1] -port weight_in[1]
load net weight_in[2] -attr @rip weight_in[2] -pin mac_conv1 weight[2] -pin mac_conv2 weight[2] -pin mac_conv3 weight[2] -pin mac_fc1 weight[2] -pin mac_fc2 weight[2] -port weight_in[2]
load net weight_in[3] -attr @rip weight_in[3] -pin mac_conv1 weight[3] -pin mac_conv2 weight[3] -pin mac_conv3 weight[3] -pin mac_fc1 weight[3] -pin mac_fc2 weight[3] -port weight_in[3]
load net weight_in[4] -attr @rip weight_in[4] -pin mac_conv1 weight[4] -pin mac_conv2 weight[4] -pin mac_conv3 weight[4] -pin mac_fc1 weight[4] -pin mac_fc2 weight[4] -port weight_in[4]
load net weight_in[5] -attr @rip weight_in[5] -pin mac_conv1 weight[5] -pin mac_conv2 weight[5] -pin mac_conv3 weight[5] -pin mac_fc1 weight[5] -pin mac_fc2 weight[5] -port weight_in[5]
load net weight_in[6] -attr @rip weight_in[6] -pin mac_conv1 weight[6] -pin mac_conv2 weight[6] -pin mac_conv3 weight[6] -pin mac_fc1 weight[6] -pin mac_fc2 weight[6] -port weight_in[6]
load net weight_in[7] -attr @rip weight_in[7] -pin mac_conv1 weight[7] -pin mac_conv2 weight[7] -pin mac_conv3 weight[7] -pin mac_fc1 weight[7] -pin mac_fc2 weight[7] -port weight_in[7]
load net weight_in[8] -attr @rip weight_in[8] -pin mac_conv1 weight[8] -pin mac_conv2 weight[8] -pin mac_conv3 weight[8] -pin mac_fc1 weight[8] -pin mac_fc2 weight[8] -port weight_in[8]
load net weight_in[9] -attr @rip weight_in[9] -pin mac_conv1 weight[9] -pin mac_conv2 weight[9] -pin mac_conv3 weight[9] -pin mac_fc1 weight[9] -pin mac_fc2 weight[9] -port weight_in[9]
load net mac_conv1|<const0> -ground -attr @name <const0> -pin mac_conv1|isolated_a_i I0[15] -pin mac_conv1|isolated_a_i I0[14] -pin mac_conv1|isolated_a_i I0[13] -pin mac_conv1|isolated_a_i I0[12] -pin mac_conv1|isolated_a_i I0[11] -pin mac_conv1|isolated_a_i I0[10] -pin mac_conv1|isolated_a_i I0[9] -pin mac_conv1|isolated_a_i I0[8] -pin mac_conv1|isolated_a_i I0[7] -pin mac_conv1|isolated_a_i I0[6] -pin mac_conv1|isolated_a_i I0[5] -pin mac_conv1|isolated_a_i I0[4] -pin mac_conv1|isolated_a_i I0[3] -pin mac_conv1|isolated_a_i I0[2] -pin mac_conv1|isolated_a_i I0[1] -pin mac_conv1|isolated_a_i I0[0] -pin mac_conv1|isolated_b_i I0[15] -pin mac_conv1|isolated_b_i I0[14] -pin mac_conv1|isolated_b_i I0[13] -pin mac_conv1|isolated_b_i I0[12] -pin mac_conv1|isolated_b_i I0[11] -pin mac_conv1|isolated_b_i I0[10] -pin mac_conv1|isolated_b_i I0[9] -pin mac_conv1|isolated_b_i I0[8] -pin mac_conv1|isolated_b_i I0[7] -pin mac_conv1|isolated_b_i I0[6] -pin mac_conv1|isolated_b_i I0[5] -pin mac_conv1|isolated_b_i I0[4] -pin mac_conv1|isolated_b_i I0[3] -pin mac_conv1|isolated_b_i I0[2] -pin mac_conv1|isolated_b_i I0[1] -pin mac_conv1|isolated_b_i I0[0]
load net mac_conv1|acc0[0] -attr @rip(#f7f8f9) O[0] -attr @name acc0[0] -pin mac_conv1|acc0_i O[0] -pin mac_conv1|acc_reg[15:0] D[0]
load net mac_conv1|acc0[10] -attr @rip(#f7f8f9) O[10] -attr @name acc0[10] -pin mac_conv1|acc0_i O[10] -pin mac_conv1|acc_reg[15:0] D[10]
load net mac_conv1|acc0[11] -attr @rip(#f7f8f9) O[11] -attr @name acc0[11] -pin mac_conv1|acc0_i O[11] -pin mac_conv1|acc_reg[15:0] D[11]
load net mac_conv1|acc0[12] -attr @rip(#f7f8f9) O[12] -attr @name acc0[12] -pin mac_conv1|acc0_i O[12] -pin mac_conv1|acc_reg[15:0] D[12]
load net mac_conv1|acc0[13] -attr @rip(#f7f8f9) O[13] -attr @name acc0[13] -pin mac_conv1|acc0_i O[13] -pin mac_conv1|acc_reg[15:0] D[13]
load net mac_conv1|acc0[14] -attr @rip(#f7f8f9) O[14] -attr @name acc0[14] -pin mac_conv1|acc0_i O[14] -pin mac_conv1|acc_reg[15:0] D[14]
load net mac_conv1|acc0[15] -attr @rip(#f7f8f9) O[15] -attr @name acc0[15] -pin mac_conv1|acc0_i O[15] -pin mac_conv1|acc_reg[15:0] D[15]
load net mac_conv1|acc0[1] -attr @rip(#f7f8f9) O[1] -attr @name acc0[1] -pin mac_conv1|acc0_i O[1] -pin mac_conv1|acc_reg[15:0] D[1]
load net mac_conv1|acc0[2] -attr @rip(#f7f8f9) O[2] -attr @name acc0[2] -pin mac_conv1|acc0_i O[2] -pin mac_conv1|acc_reg[15:0] D[2]
load net mac_conv1|acc0[3] -attr @rip(#f7f8f9) O[3] -attr @name acc0[3] -pin mac_conv1|acc0_i O[3] -pin mac_conv1|acc_reg[15:0] D[3]
load net mac_conv1|acc0[4] -attr @rip(#f7f8f9) O[4] -attr @name acc0[4] -pin mac_conv1|acc0_i O[4] -pin mac_conv1|acc_reg[15:0] D[4]
load net mac_conv1|acc0[5] -attr @rip(#f7f8f9) O[5] -attr @name acc0[5] -pin mac_conv1|acc0_i O[5] -pin mac_conv1|acc_reg[15:0] D[5]
load net mac_conv1|acc0[6] -attr @rip(#f7f8f9) O[6] -attr @name acc0[6] -pin mac_conv1|acc0_i O[6] -pin mac_conv1|acc_reg[15:0] D[6]
load net mac_conv1|acc0[7] -attr @rip(#f7f8f9) O[7] -attr @name acc0[7] -pin mac_conv1|acc0_i O[7] -pin mac_conv1|acc_reg[15:0] D[7]
load net mac_conv1|acc0[8] -attr @rip(#f7f8f9) O[8] -attr @name acc0[8] -pin mac_conv1|acc0_i O[8] -pin mac_conv1|acc_reg[15:0] D[8]
load net mac_conv1|acc0[9] -attr @rip(#f7f8f9) O[9] -attr @name acc0[9] -pin mac_conv1|acc0_i O[9] -pin mac_conv1|acc_reg[15:0] D[9]
load net mac_conv1|acc[0] -attr @rip(#f7f8f9) 0 -attr @name acc[0] -hierPin mac_conv1 acc[0] -pin mac_conv1|acc_reg[15:0] Q[0] -pin mac_conv1|isolated_b_i I1[0] -pin mac_conv1|loa_sum0_i I1[0]
load net mac_conv1|acc[10] -attr @name acc[10] -hierPin mac_conv1 acc[10] -pin mac_conv1|acc_reg[15:0] Q[10] -pin mac_conv1|isolated_b_i I1[10] -pin mac_conv1|loa_sum0_i__0 I1[6]
load net mac_conv1|acc[11] -attr @name acc[11] -hierPin mac_conv1 acc[11] -pin mac_conv1|acc_reg[15:0] Q[11] -pin mac_conv1|isolated_b_i I1[11] -pin mac_conv1|loa_sum0_i__0 I1[7]
load net mac_conv1|acc[12] -attr @name acc[12] -hierPin mac_conv1 acc[12] -pin mac_conv1|acc_reg[15:0] Q[12] -pin mac_conv1|isolated_b_i I1[12] -pin mac_conv1|loa_sum0_i__0 I1[8]
load net mac_conv1|acc[13] -attr @name acc[13] -hierPin mac_conv1 acc[13] -pin mac_conv1|acc_reg[15:0] Q[13] -pin mac_conv1|isolated_b_i I1[13] -pin mac_conv1|loa_sum0_i__0 I1[9]
load net mac_conv1|acc[14] -attr @name acc[14] -hierPin mac_conv1 acc[14] -pin mac_conv1|acc_reg[15:0] Q[14] -pin mac_conv1|isolated_b_i I1[14] -pin mac_conv1|loa_sum0_i__0 I1[10]
load net mac_conv1|acc[15] -attr @name acc[15] -hierPin mac_conv1 acc[15] -pin mac_conv1|acc_reg[15:0] Q[15] -pin mac_conv1|isolated_b_i I1[15] -pin mac_conv1|loa_sum0_i__0 I1[11]
load net mac_conv1|acc[1] -attr @rip(#f7f8f9) 1 -attr @name acc[1] -hierPin mac_conv1 acc[1] -pin mac_conv1|acc_reg[15:0] Q[1] -pin mac_conv1|isolated_b_i I1[1] -pin mac_conv1|loa_sum0_i I1[1]
load net mac_conv1|acc[2] -attr @rip(#f7f8f9) 2 -attr @name acc[2] -hierPin mac_conv1 acc[2] -pin mac_conv1|acc_reg[15:0] Q[2] -pin mac_conv1|isolated_b_i I1[2] -pin mac_conv1|loa_sum0_i I1[2]
load net mac_conv1|acc[3] -attr @rip(#f7f8f9) 3 -attr @name acc[3] -hierPin mac_conv1 acc[3] -pin mac_conv1|acc_reg[15:0] Q[3] -pin mac_conv1|isolated_b_i I1[3] -pin mac_conv1|loa_sum0_i I1[3]
load net mac_conv1|acc[4] -attr @name acc[4] -hierPin mac_conv1 acc[4] -pin mac_conv1|acc_reg[15:0] Q[4] -pin mac_conv1|isolated_b_i I1[4] -pin mac_conv1|loa_sum0_i__0 I1[0]
load net mac_conv1|acc[5] -attr @name acc[5] -hierPin mac_conv1 acc[5] -pin mac_conv1|acc_reg[15:0] Q[5] -pin mac_conv1|isolated_b_i I1[5] -pin mac_conv1|loa_sum0_i__0 I1[1]
load net mac_conv1|acc[6] -attr @name acc[6] -hierPin mac_conv1 acc[6] -pin mac_conv1|acc_reg[15:0] Q[6] -pin mac_conv1|isolated_b_i I1[6] -pin mac_conv1|loa_sum0_i__0 I1[2]
load net mac_conv1|acc[7] -attr @name acc[7] -hierPin mac_conv1 acc[7] -pin mac_conv1|acc_reg[15:0] Q[7] -pin mac_conv1|isolated_b_i I1[7] -pin mac_conv1|loa_sum0_i__0 I1[3]
load net mac_conv1|acc[8] -attr @name acc[8] -hierPin mac_conv1 acc[8] -pin mac_conv1|acc_reg[15:0] Q[8] -pin mac_conv1|isolated_b_i I1[8] -pin mac_conv1|loa_sum0_i__0 I1[4]
load net mac_conv1|acc[9] -attr @name acc[9] -hierPin mac_conv1 acc[9] -pin mac_conv1|acc_reg[15:0] Q[9] -pin mac_conv1|isolated_b_i I1[9] -pin mac_conv1|loa_sum0_i__0 I1[5]
load net mac_conv1|clk -attr @name clk -hierPin mac_conv1 clk -pin mac_conv1|acc_reg[15:0] C -pin mac_conv1|pixel_reg_reg[15:0] C -pin mac_conv1|weight_reg_reg[15:0] C
netloc mac_conv1|clk 1 0 6 310 358 NJ 358 NJ 358 NJ 358 NJ 358 N
load net mac_conv1|confidence -attr @name confidence -hierPin mac_conv1 confidence -pin mac_conv1|acc0_i S -pin mac_conv1|isolated_a_i S -pin mac_conv1|isolated_b_i S
netloc mac_conv1|confidence 1 0 5 NJ 188 NJ 188 800 308N 1090 338 NJ
load net mac_conv1|exact_sum[0] -attr @rip(#f7f8f9) O[0] -attr @name exact_sum[0] -pin mac_conv1|acc0_i I1[0] -pin mac_conv1|exact_sum_i O[0]
load net mac_conv1|exact_sum[10] -attr @rip(#f7f8f9) O[10] -attr @name exact_sum[10] -pin mac_conv1|acc0_i I1[10] -pin mac_conv1|exact_sum_i O[10]
load net mac_conv1|exact_sum[11] -attr @rip(#f7f8f9) O[11] -attr @name exact_sum[11] -pin mac_conv1|acc0_i I1[11] -pin mac_conv1|exact_sum_i O[11]
load net mac_conv1|exact_sum[12] -attr @rip(#f7f8f9) O[12] -attr @name exact_sum[12] -pin mac_conv1|acc0_i I1[12] -pin mac_conv1|exact_sum_i O[12]
load net mac_conv1|exact_sum[13] -attr @rip(#f7f8f9) O[13] -attr @name exact_sum[13] -pin mac_conv1|acc0_i I1[13] -pin mac_conv1|exact_sum_i O[13]
load net mac_conv1|exact_sum[14] -attr @rip(#f7f8f9) O[14] -attr @name exact_sum[14] -pin mac_conv1|acc0_i I1[14] -pin mac_conv1|exact_sum_i O[14]
load net mac_conv1|exact_sum[15] -attr @rip(#f7f8f9) O[15] -attr @name exact_sum[15] -pin mac_conv1|acc0_i I1[15] -pin mac_conv1|exact_sum_i O[15]
load net mac_conv1|exact_sum[1] -attr @rip(#f7f8f9) O[1] -attr @name exact_sum[1] -pin mac_conv1|acc0_i I1[1] -pin mac_conv1|exact_sum_i O[1]
load net mac_conv1|exact_sum[2] -attr @rip(#f7f8f9) O[2] -attr @name exact_sum[2] -pin mac_conv1|acc0_i I1[2] -pin mac_conv1|exact_sum_i O[2]
load net mac_conv1|exact_sum[3] -attr @rip(#f7f8f9) O[3] -attr @name exact_sum[3] -pin mac_conv1|acc0_i I1[3] -pin mac_conv1|exact_sum_i O[3]
load net mac_conv1|exact_sum[4] -attr @rip(#f7f8f9) O[4] -attr @name exact_sum[4] -pin mac_conv1|acc0_i I1[4] -pin mac_conv1|exact_sum_i O[4]
load net mac_conv1|exact_sum[5] -attr @rip(#f7f8f9) O[5] -attr @name exact_sum[5] -pin mac_conv1|acc0_i I1[5] -pin mac_conv1|exact_sum_i O[5]
load net mac_conv1|exact_sum[6] -attr @rip(#f7f8f9) O[6] -attr @name exact_sum[6] -pin mac_conv1|acc0_i I1[6] -pin mac_conv1|exact_sum_i O[6]
load net mac_conv1|exact_sum[7] -attr @rip(#f7f8f9) O[7] -attr @name exact_sum[7] -pin mac_conv1|acc0_i I1[7] -pin mac_conv1|exact_sum_i O[7]
load net mac_conv1|exact_sum[8] -attr @rip(#f7f8f9) O[8] -attr @name exact_sum[8] -pin mac_conv1|acc0_i I1[8] -pin mac_conv1|exact_sum_i O[8]
load net mac_conv1|exact_sum[9] -attr @rip(#f7f8f9) O[9] -attr @name exact_sum[9] -pin mac_conv1|acc0_i I1[9] -pin mac_conv1|exact_sum_i O[9]
load net mac_conv1|isolated_a[0] -attr @rip(#f7f8f9) O[0] -attr @name isolated_a[0] -pin mac_conv1|exact_sum_i I0[0] -pin mac_conv1|isolated_a_i O[0]
load net mac_conv1|isolated_a[10] -attr @rip(#f7f8f9) O[10] -attr @name isolated_a[10] -pin mac_conv1|exact_sum_i I0[10] -pin mac_conv1|isolated_a_i O[10]
load net mac_conv1|isolated_a[11] -attr @rip(#f7f8f9) O[11] -attr @name isolated_a[11] -pin mac_conv1|exact_sum_i I0[11] -pin mac_conv1|isolated_a_i O[11]
load net mac_conv1|isolated_a[12] -attr @rip(#f7f8f9) O[12] -attr @name isolated_a[12] -pin mac_conv1|exact_sum_i I0[12] -pin mac_conv1|isolated_a_i O[12]
load net mac_conv1|isolated_a[13] -attr @rip(#f7f8f9) O[13] -attr @name isolated_a[13] -pin mac_conv1|exact_sum_i I0[13] -pin mac_conv1|isolated_a_i O[13]
load net mac_conv1|isolated_a[14] -attr @rip(#f7f8f9) O[14] -attr @name isolated_a[14] -pin mac_conv1|exact_sum_i I0[14] -pin mac_conv1|isolated_a_i O[14]
load net mac_conv1|isolated_a[15] -attr @rip(#f7f8f9) O[15] -attr @name isolated_a[15] -pin mac_conv1|exact_sum_i I0[15] -pin mac_conv1|isolated_a_i O[15]
load net mac_conv1|isolated_a[1] -attr @rip(#f7f8f9) O[1] -attr @name isolated_a[1] -pin mac_conv1|exact_sum_i I0[1] -pin mac_conv1|isolated_a_i O[1]
load net mac_conv1|isolated_a[2] -attr @rip(#f7f8f9) O[2] -attr @name isolated_a[2] -pin mac_conv1|exact_sum_i I0[2] -pin mac_conv1|isolated_a_i O[2]
load net mac_conv1|isolated_a[3] -attr @rip(#f7f8f9) O[3] -attr @name isolated_a[3] -pin mac_conv1|exact_sum_i I0[3] -pin mac_conv1|isolated_a_i O[3]
load net mac_conv1|isolated_a[4] -attr @rip(#f7f8f9) O[4] -attr @name isolated_a[4] -pin mac_conv1|exact_sum_i I0[4] -pin mac_conv1|isolated_a_i O[4]
load net mac_conv1|isolated_a[5] -attr @rip(#f7f8f9) O[5] -attr @name isolated_a[5] -pin mac_conv1|exact_sum_i I0[5] -pin mac_conv1|isolated_a_i O[5]
load net mac_conv1|isolated_a[6] -attr @rip(#f7f8f9) O[6] -attr @name isolated_a[6] -pin mac_conv1|exact_sum_i I0[6] -pin mac_conv1|isolated_a_i O[6]
load net mac_conv1|isolated_a[7] -attr @rip(#f7f8f9) O[7] -attr @name isolated_a[7] -pin mac_conv1|exact_sum_i I0[7] -pin mac_conv1|isolated_a_i O[7]
load net mac_conv1|isolated_a[8] -attr @rip(#f7f8f9) O[8] -attr @name isolated_a[8] -pin mac_conv1|exact_sum_i I0[8] -pin mac_conv1|isolated_a_i O[8]
load net mac_conv1|isolated_a[9] -attr @rip(#f7f8f9) O[9] -attr @name isolated_a[9] -pin mac_conv1|exact_sum_i I0[9] -pin mac_conv1|isolated_a_i O[9]
load net mac_conv1|isolated_b[0] -attr @rip(#f7f8f9) O[0] -attr @name isolated_b[0] -pin mac_conv1|exact_sum_i I1[0] -pin mac_conv1|isolated_b_i O[0]
load net mac_conv1|isolated_b[10] -attr @rip(#f7f8f9) O[10] -attr @name isolated_b[10] -pin mac_conv1|exact_sum_i I1[10] -pin mac_conv1|isolated_b_i O[10]
load net mac_conv1|isolated_b[11] -attr @rip(#f7f8f9) O[11] -attr @name isolated_b[11] -pin mac_conv1|exact_sum_i I1[11] -pin mac_conv1|isolated_b_i O[11]
load net mac_conv1|isolated_b[12] -attr @rip(#f7f8f9) O[12] -attr @name isolated_b[12] -pin mac_conv1|exact_sum_i I1[12] -pin mac_conv1|isolated_b_i O[12]
load net mac_conv1|isolated_b[13] -attr @rip(#f7f8f9) O[13] -attr @name isolated_b[13] -pin mac_conv1|exact_sum_i I1[13] -pin mac_conv1|isolated_b_i O[13]
load net mac_conv1|isolated_b[14] -attr @rip(#f7f8f9) O[14] -attr @name isolated_b[14] -pin mac_conv1|exact_sum_i I1[14] -pin mac_conv1|isolated_b_i O[14]
load net mac_conv1|isolated_b[15] -attr @rip(#f7f8f9) O[15] -attr @name isolated_b[15] -pin mac_conv1|exact_sum_i I1[15] -pin mac_conv1|isolated_b_i O[15]
load net mac_conv1|isolated_b[1] -attr @rip(#f7f8f9) O[1] -attr @name isolated_b[1] -pin mac_conv1|exact_sum_i I1[1] -pin mac_conv1|isolated_b_i O[1]
load net mac_conv1|isolated_b[2] -attr @rip(#f7f8f9) O[2] -attr @name isolated_b[2] -pin mac_conv1|exact_sum_i I1[2] -pin mac_conv1|isolated_b_i O[2]
load net mac_conv1|isolated_b[3] -attr @rip(#f7f8f9) O[3] -attr @name isolated_b[3] -pin mac_conv1|exact_sum_i I1[3] -pin mac_conv1|isolated_b_i O[3]
load net mac_conv1|isolated_b[4] -attr @rip(#f7f8f9) O[4] -attr @name isolated_b[4] -pin mac_conv1|exact_sum_i I1[4] -pin mac_conv1|isolated_b_i O[4]
load net mac_conv1|isolated_b[5] -attr @rip(#f7f8f9) O[5] -attr @name isolated_b[5] -pin mac_conv1|exact_sum_i I1[5] -pin mac_conv1|isolated_b_i O[5]
load net mac_conv1|isolated_b[6] -attr @rip(#f7f8f9) O[6] -attr @name isolated_b[6] -pin mac_conv1|exact_sum_i I1[6] -pin mac_conv1|isolated_b_i O[6]
load net mac_conv1|isolated_b[7] -attr @rip(#f7f8f9) O[7] -attr @name isolated_b[7] -pin mac_conv1|exact_sum_i I1[7] -pin mac_conv1|isolated_b_i O[7]
load net mac_conv1|isolated_b[8] -attr @rip(#f7f8f9) O[8] -attr @name isolated_b[8] -pin mac_conv1|exact_sum_i I1[8] -pin mac_conv1|isolated_b_i O[8]
load net mac_conv1|isolated_b[9] -attr @rip(#f7f8f9) O[9] -attr @name isolated_b[9] -pin mac_conv1|exact_sum_i I1[9] -pin mac_conv1|isolated_b_i O[9]
load net mac_conv1|loa_sum[0] -attr @rip(#f7f8f9) O[0] -attr @name loa_sum[0] -pin mac_conv1|acc0_i I0[0] -pin mac_conv1|loa_sum0_i O[0]
load net mac_conv1|loa_sum[10] -attr @rip(#f7f8f9) O[6] -attr @name loa_sum[10] -pin mac_conv1|acc0_i I0[10] -pin mac_conv1|loa_sum0_i__0 O[6]
load net mac_conv1|loa_sum[11] -attr @rip(#f7f8f9) O[7] -attr @name loa_sum[11] -pin mac_conv1|acc0_i I0[11] -pin mac_conv1|loa_sum0_i__0 O[7]
load net mac_conv1|loa_sum[12] -attr @rip(#f7f8f9) O[8] -attr @name loa_sum[12] -pin mac_conv1|acc0_i I0[12] -pin mac_conv1|loa_sum0_i__0 O[8]
load net mac_conv1|loa_sum[13] -attr @rip(#f7f8f9) O[9] -attr @name loa_sum[13] -pin mac_conv1|acc0_i I0[13] -pin mac_conv1|loa_sum0_i__0 O[9]
load net mac_conv1|loa_sum[14] -attr @rip(#f7f8f9) O[10] -attr @name loa_sum[14] -pin mac_conv1|acc0_i I0[14] -pin mac_conv1|loa_sum0_i__0 O[10]
load net mac_conv1|loa_sum[15] -attr @rip(#f7f8f9) O[11] -attr @name loa_sum[15] -pin mac_conv1|acc0_i I0[15] -pin mac_conv1|loa_sum0_i__0 O[11]
load net mac_conv1|loa_sum[1] -attr @rip(#f7f8f9) O[1] -attr @name loa_sum[1] -pin mac_conv1|acc0_i I0[1] -pin mac_conv1|loa_sum0_i O[1]
load net mac_conv1|loa_sum[2] -attr @rip(#f7f8f9) O[2] -attr @name loa_sum[2] -pin mac_conv1|acc0_i I0[2] -pin mac_conv1|loa_sum0_i O[2]
load net mac_conv1|loa_sum[3] -attr @rip(#f7f8f9) O[3] -attr @name loa_sum[3] -pin mac_conv1|acc0_i I0[3] -pin mac_conv1|loa_sum0_i O[3]
load net mac_conv1|loa_sum[4] -attr @rip(#f7f8f9) O[0] -attr @name loa_sum[4] -pin mac_conv1|acc0_i I0[4] -pin mac_conv1|loa_sum0_i__0 O[0]
load net mac_conv1|loa_sum[5] -attr @rip(#f7f8f9) O[1] -attr @name loa_sum[5] -pin mac_conv1|acc0_i I0[5] -pin mac_conv1|loa_sum0_i__0 O[1]
load net mac_conv1|loa_sum[6] -attr @rip(#f7f8f9) O[2] -attr @name loa_sum[6] -pin mac_conv1|acc0_i I0[6] -pin mac_conv1|loa_sum0_i__0 O[2]
load net mac_conv1|loa_sum[7] -attr @rip(#f7f8f9) O[3] -attr @name loa_sum[7] -pin mac_conv1|acc0_i I0[7] -pin mac_conv1|loa_sum0_i__0 O[3]
load net mac_conv1|loa_sum[8] -attr @rip(#f7f8f9) O[4] -attr @name loa_sum[8] -pin mac_conv1|acc0_i I0[8] -pin mac_conv1|loa_sum0_i__0 O[4]
load net mac_conv1|loa_sum[9] -attr @rip(#f7f8f9) O[5] -attr @name loa_sum[9] -pin mac_conv1|acc0_i I0[9] -pin mac_conv1|loa_sum0_i__0 O[5]
load net mac_conv1|pixel[0] -attr @rip(#f7f8f9) pixel[0] -attr @name pixel[0] -hierPin mac_conv1 pixel[0] -pin mac_conv1|pixel_reg_reg[15:0] D[0]
load net mac_conv1|pixel[10] -attr @rip(#f7f8f9) pixel[10] -attr @name pixel[10] -hierPin mac_conv1 pixel[10] -pin mac_conv1|pixel_reg_reg[15:0] D[10]
load net mac_conv1|pixel[11] -attr @rip(#f7f8f9) pixel[11] -attr @name pixel[11] -hierPin mac_conv1 pixel[11] -pin mac_conv1|pixel_reg_reg[15:0] D[11]
load net mac_conv1|pixel[12] -attr @rip(#f7f8f9) pixel[12] -attr @name pixel[12] -hierPin mac_conv1 pixel[12] -pin mac_conv1|pixel_reg_reg[15:0] D[12]
load net mac_conv1|pixel[13] -attr @rip(#f7f8f9) pixel[13] -attr @name pixel[13] -hierPin mac_conv1 pixel[13] -pin mac_conv1|pixel_reg_reg[15:0] D[13]
load net mac_conv1|pixel[14] -attr @rip(#f7f8f9) pixel[14] -attr @name pixel[14] -hierPin mac_conv1 pixel[14] -pin mac_conv1|pixel_reg_reg[15:0] D[14]
load net mac_conv1|pixel[15] -attr @rip(#f7f8f9) pixel[15] -attr @name pixel[15] -hierPin mac_conv1 pixel[15] -pin mac_conv1|pixel_reg_reg[15:0] D[15]
load net mac_conv1|pixel[1] -attr @rip(#f7f8f9) pixel[1] -attr @name pixel[1] -hierPin mac_conv1 pixel[1] -pin mac_conv1|pixel_reg_reg[15:0] D[1]
load net mac_conv1|pixel[2] -attr @rip(#f7f8f9) pixel[2] -attr @name pixel[2] -hierPin mac_conv1 pixel[2] -pin mac_conv1|pixel_reg_reg[15:0] D[2]
load net mac_conv1|pixel[3] -attr @rip(#f7f8f9) pixel[3] -attr @name pixel[3] -hierPin mac_conv1 pixel[3] -pin mac_conv1|pixel_reg_reg[15:0] D[3]
load net mac_conv1|pixel[4] -attr @rip(#f7f8f9) pixel[4] -attr @name pixel[4] -hierPin mac_conv1 pixel[4] -pin mac_conv1|pixel_reg_reg[15:0] D[4]
load net mac_conv1|pixel[5] -attr @rip(#f7f8f9) pixel[5] -attr @name pixel[5] -hierPin mac_conv1 pixel[5] -pin mac_conv1|pixel_reg_reg[15:0] D[5]
load net mac_conv1|pixel[6] -attr @rip(#f7f8f9) pixel[6] -attr @name pixel[6] -hierPin mac_conv1 pixel[6] -pin mac_conv1|pixel_reg_reg[15:0] D[6]
load net mac_conv1|pixel[7] -attr @rip(#f7f8f9) pixel[7] -attr @name pixel[7] -hierPin mac_conv1 pixel[7] -pin mac_conv1|pixel_reg_reg[15:0] D[7]
load net mac_conv1|pixel[8] -attr @rip(#f7f8f9) pixel[8] -attr @name pixel[8] -hierPin mac_conv1 pixel[8] -pin mac_conv1|pixel_reg_reg[15:0] D[8]
load net mac_conv1|pixel[9] -attr @rip(#f7f8f9) pixel[9] -attr @name pixel[9] -hierPin mac_conv1 pixel[9] -pin mac_conv1|pixel_reg_reg[15:0] D[9]
load net mac_conv1|pixel_reg[0] -attr @rip(#f7f8f9) 0 -attr @name pixel_reg[0] -pin mac_conv1|mult_result_i I1[0] -pin mac_conv1|pixel_reg_reg[15:0] Q[0]
load net mac_conv1|pixel_reg[10] -attr @rip(#f7f8f9) 10 -attr @name pixel_reg[10] -pin mac_conv1|mult_result_i I1[10] -pin mac_conv1|pixel_reg_reg[15:0] Q[10]
load net mac_conv1|pixel_reg[11] -attr @rip(#f7f8f9) 11 -attr @name pixel_reg[11] -pin mac_conv1|mult_result_i I1[11] -pin mac_conv1|pixel_reg_reg[15:0] Q[11]
load net mac_conv1|pixel_reg[12] -attr @rip(#f7f8f9) 12 -attr @name pixel_reg[12] -pin mac_conv1|mult_result_i I1[12] -pin mac_conv1|pixel_reg_reg[15:0] Q[12]
load net mac_conv1|pixel_reg[13] -attr @rip(#f7f8f9) 13 -attr @name pixel_reg[13] -pin mac_conv1|mult_result_i I1[13] -pin mac_conv1|pixel_reg_reg[15:0] Q[13]
load net mac_conv1|pixel_reg[14] -attr @rip(#f7f8f9) 14 -attr @name pixel_reg[14] -pin mac_conv1|mult_result_i I1[14] -pin mac_conv1|pixel_reg_reg[15:0] Q[14]
load net mac_conv1|pixel_reg[15] -attr @rip(#f7f8f9) 15 -attr @name pixel_reg[15] -pin mac_conv1|mult_result_i I1[15] -pin mac_conv1|pixel_reg_reg[15:0] Q[15]
load net mac_conv1|pixel_reg[1] -attr @rip(#f7f8f9) 1 -attr @name pixel_reg[1] -pin mac_conv1|mult_result_i I1[1] -pin mac_conv1|pixel_reg_reg[15:0] Q[1]
load net mac_conv1|pixel_reg[2] -attr @rip(#f7f8f9) 2 -attr @name pixel_reg[2] -pin mac_conv1|mult_result_i I1[2] -pin mac_conv1|pixel_reg_reg[15:0] Q[2]
load net mac_conv1|pixel_reg[3] -attr @rip(#f7f8f9) 3 -attr @name pixel_reg[3] -pin mac_conv1|mult_result_i I1[3] -pin mac_conv1|pixel_reg_reg[15:0] Q[3]
load net mac_conv1|pixel_reg[4] -attr @rip(#f7f8f9) 4 -attr @name pixel_reg[4] -pin mac_conv1|mult_result_i I1[4] -pin mac_conv1|pixel_reg_reg[15:0] Q[4]
load net mac_conv1|pixel_reg[5] -attr @rip(#f7f8f9) 5 -attr @name pixel_reg[5] -pin mac_conv1|mult_result_i I1[5] -pin mac_conv1|pixel_reg_reg[15:0] Q[5]
load net mac_conv1|pixel_reg[6] -attr @rip(#f7f8f9) 6 -attr @name pixel_reg[6] -pin mac_conv1|mult_result_i I1[6] -pin mac_conv1|pixel_reg_reg[15:0] Q[6]
load net mac_conv1|pixel_reg[7] -attr @rip(#f7f8f9) 7 -attr @name pixel_reg[7] -pin mac_conv1|mult_result_i I1[7] -pin mac_conv1|pixel_reg_reg[15:0] Q[7]
load net mac_conv1|pixel_reg[8] -attr @rip(#f7f8f9) 8 -attr @name pixel_reg[8] -pin mac_conv1|mult_result_i I1[8] -pin mac_conv1|pixel_reg_reg[15:0] Q[8]
load net mac_conv1|pixel_reg[9] -attr @rip(#f7f8f9) 9 -attr @name pixel_reg[9] -pin mac_conv1|mult_result_i I1[9] -pin mac_conv1|pixel_reg_reg[15:0] Q[9]
load net mac_conv1|reset -attr @name reset -hierPin mac_conv1 reset -pin mac_conv1|acc_reg[15:0] RST -pin mac_conv1|pixel_reg_reg[15:0] RST -pin mac_conv1|weight_reg_reg[15:0] RST
netloc mac_conv1|reset 1 0 6 290 38N 590 398 NJ 398 NJ 398 NJ 398 1640J
load net mac_conv1|scaled_mult[0] -attr @rip(#f7f8f9) O[12] -attr @name scaled_mult[0] -pin mac_conv1|isolated_a_i I1[0] -pin mac_conv1|loa_sum0_i I0[0] -pin mac_conv1|mult_result_i O[12]
load net mac_conv1|scaled_mult[10] -attr @rip(#f7f8f9) O[22] -attr @name scaled_mult[10] -pin mac_conv1|isolated_a_i I1[10] -pin mac_conv1|loa_sum0_i__0 I0[6] -pin mac_conv1|mult_result_i O[22]
load net mac_conv1|scaled_mult[11] -attr @rip(#f7f8f9) O[23] -attr @name scaled_mult[11] -pin mac_conv1|isolated_a_i I1[11] -pin mac_conv1|loa_sum0_i__0 I0[7] -pin mac_conv1|mult_result_i O[23]
load net mac_conv1|scaled_mult[12] -attr @rip(#f7f8f9) O[24] -attr @name scaled_mult[12] -pin mac_conv1|isolated_a_i I1[12] -pin mac_conv1|loa_sum0_i__0 I0[8] -pin mac_conv1|mult_result_i O[24]
load net mac_conv1|scaled_mult[13] -attr @rip(#f7f8f9) O[25] -attr @name scaled_mult[13] -pin mac_conv1|isolated_a_i I1[13] -pin mac_conv1|loa_sum0_i__0 I0[9] -pin mac_conv1|mult_result_i O[25]
load net mac_conv1|scaled_mult[14] -attr @rip(#f7f8f9) O[26] -attr @name scaled_mult[14] -pin mac_conv1|isolated_a_i I1[14] -pin mac_conv1|loa_sum0_i__0 I0[10] -pin mac_conv1|mult_result_i O[26]
load net mac_conv1|scaled_mult[15] -attr @rip(#f7f8f9) O[27] -attr @name scaled_mult[15] -pin mac_conv1|isolated_a_i I1[15] -pin mac_conv1|loa_sum0_i__0 I0[11] -pin mac_conv1|mult_result_i O[27]
load net mac_conv1|scaled_mult[1] -attr @rip(#f7f8f9) O[13] -attr @name scaled_mult[1] -pin mac_conv1|isolated_a_i I1[1] -pin mac_conv1|loa_sum0_i I0[1] -pin mac_conv1|mult_result_i O[13]
load net mac_conv1|scaled_mult[2] -attr @rip(#f7f8f9) O[14] -attr @name scaled_mult[2] -pin mac_conv1|isolated_a_i I1[2] -pin mac_conv1|loa_sum0_i I0[2] -pin mac_conv1|mult_result_i O[14]
load net mac_conv1|scaled_mult[3] -attr @rip(#f7f8f9) O[15] -attr @name scaled_mult[3] -pin mac_conv1|isolated_a_i I1[3] -pin mac_conv1|loa_sum0_i I0[3] -pin mac_conv1|mult_result_i O[15]
load net mac_conv1|scaled_mult[4] -attr @rip(#f7f8f9) O[16] -attr @name scaled_mult[4] -pin mac_conv1|isolated_a_i I1[4] -pin mac_conv1|loa_sum0_i__0 I0[0] -pin mac_conv1|mult_result_i O[16]
load net mac_conv1|scaled_mult[5] -attr @rip(#f7f8f9) O[17] -attr @name scaled_mult[5] -pin mac_conv1|isolated_a_i I1[5] -pin mac_conv1|loa_sum0_i__0 I0[1] -pin mac_conv1|mult_result_i O[17]
load net mac_conv1|scaled_mult[6] -attr @rip(#f7f8f9) O[18] -attr @name scaled_mult[6] -pin mac_conv1|isolated_a_i I1[6] -pin mac_conv1|loa_sum0_i__0 I0[2] -pin mac_conv1|mult_result_i O[18]
load net mac_conv1|scaled_mult[7] -attr @rip(#f7f8f9) O[19] -attr @name scaled_mult[7] -pin mac_conv1|isolated_a_i I1[7] -pin mac_conv1|loa_sum0_i__0 I0[3] -pin mac_conv1|mult_result_i O[19]
load net mac_conv1|scaled_mult[8] -attr @rip(#f7f8f9) O[20] -attr @name scaled_mult[8] -pin mac_conv1|isolated_a_i I1[8] -pin mac_conv1|loa_sum0_i__0 I0[4] -pin mac_conv1|mult_result_i O[20]
load net mac_conv1|scaled_mult[9] -attr @rip(#f7f8f9) O[21] -attr @name scaled_mult[9] -pin mac_conv1|isolated_a_i I1[9] -pin mac_conv1|loa_sum0_i__0 I0[5] -pin mac_conv1|mult_result_i O[21]
load net mac_conv1|valid_data -attr @name valid_data -hierPin mac_conv1 valid_data -pin mac_conv1|acc_reg[15:0] CE -pin mac_conv1|pixel_reg_reg[15:0] CE -pin mac_conv1|weight_reg_reg[15:0] CE
netloc mac_conv1|valid_data 1 0 6 270 378 NJ 378 NJ 378 NJ 378 NJ 378 N
load net mac_conv1|weight[0] -attr @rip(#f7f8f9) weight[0] -attr @name weight[0] -hierPin mac_conv1 weight[0] -pin mac_conv1|weight_reg_reg[15:0] D[0]
load net mac_conv1|weight[10] -attr @rip(#f7f8f9) weight[10] -attr @name weight[10] -hierPin mac_conv1 weight[10] -pin mac_conv1|weight_reg_reg[15:0] D[10]
load net mac_conv1|weight[11] -attr @rip(#f7f8f9) weight[11] -attr @name weight[11] -hierPin mac_conv1 weight[11] -pin mac_conv1|weight_reg_reg[15:0] D[11]
load net mac_conv1|weight[12] -attr @rip(#f7f8f9) weight[12] -attr @name weight[12] -hierPin mac_conv1 weight[12] -pin mac_conv1|weight_reg_reg[15:0] D[12]
load net mac_conv1|weight[13] -attr @rip(#f7f8f9) weight[13] -attr @name weight[13] -hierPin mac_conv1 weight[13] -pin mac_conv1|weight_reg_reg[15:0] D[13]
load net mac_conv1|weight[14] -attr @rip(#f7f8f9) weight[14] -attr @name weight[14] -hierPin mac_conv1 weight[14] -pin mac_conv1|weight_reg_reg[15:0] D[14]
load net mac_conv1|weight[15] -attr @rip(#f7f8f9) weight[15] -attr @name weight[15] -hierPin mac_conv1 weight[15] -pin mac_conv1|weight_reg_reg[15:0] D[15]
load net mac_conv1|weight[1] -attr @rip(#f7f8f9) weight[1] -attr @name weight[1] -hierPin mac_conv1 weight[1] -pin mac_conv1|weight_reg_reg[15:0] D[1]
load net mac_conv1|weight[2] -attr @rip(#f7f8f9) weight[2] -attr @name weight[2] -hierPin mac_conv1 weight[2] -pin mac_conv1|weight_reg_reg[15:0] D[2]
load net mac_conv1|weight[3] -attr @rip(#f7f8f9) weight[3] -attr @name weight[3] -hierPin mac_conv1 weight[3] -pin mac_conv1|weight_reg_reg[15:0] D[3]
load net mac_conv1|weight[4] -attr @rip(#f7f8f9) weight[4] -attr @name weight[4] -hierPin mac_conv1 weight[4] -pin mac_conv1|weight_reg_reg[15:0] D[4]
load net mac_conv1|weight[5] -attr @rip(#f7f8f9) weight[5] -attr @name weight[5] -hierPin mac_conv1 weight[5] -pin mac_conv1|weight_reg_reg[15:0] D[5]
load net mac_conv1|weight[6] -attr @rip(#f7f8f9) weight[6] -attr @name weight[6] -hierPin mac_conv1 weight[6] -pin mac_conv1|weight_reg_reg[15:0] D[6]
load net mac_conv1|weight[7] -attr @rip(#f7f8f9) weight[7] -attr @name weight[7] -hierPin mac_conv1 weight[7] -pin mac_conv1|weight_reg_reg[15:0] D[7]
load net mac_conv1|weight[8] -attr @rip(#f7f8f9) weight[8] -attr @name weight[8] -hierPin mac_conv1 weight[8] -pin mac_conv1|weight_reg_reg[15:0] D[8]
load net mac_conv1|weight[9] -attr @rip(#f7f8f9) weight[9] -attr @name weight[9] -hierPin mac_conv1 weight[9] -pin mac_conv1|weight_reg_reg[15:0] D[9]
load net mac_conv1|weight_reg[0] -attr @rip(#f7f8f9) 0 -attr @name weight_reg[0] -pin mac_conv1|mult_result_i I0[0] -pin mac_conv1|weight_reg_reg[15:0] Q[0]
load net mac_conv1|weight_reg[10] -attr @rip(#f7f8f9) 10 -attr @name weight_reg[10] -pin mac_conv1|mult_result_i I0[10] -pin mac_conv1|weight_reg_reg[15:0] Q[10]
load net mac_conv1|weight_reg[11] -attr @rip(#f7f8f9) 11 -attr @name weight_reg[11] -pin mac_conv1|mult_result_i I0[11] -pin mac_conv1|weight_reg_reg[15:0] Q[11]
load net mac_conv1|weight_reg[12] -attr @rip(#f7f8f9) 12 -attr @name weight_reg[12] -pin mac_conv1|mult_result_i I0[12] -pin mac_conv1|weight_reg_reg[15:0] Q[12]
load net mac_conv1|weight_reg[13] -attr @rip(#f7f8f9) 13 -attr @name weight_reg[13] -pin mac_conv1|mult_result_i I0[13] -pin mac_conv1|weight_reg_reg[15:0] Q[13]
load net mac_conv1|weight_reg[14] -attr @rip(#f7f8f9) 14 -attr @name weight_reg[14] -pin mac_conv1|mult_result_i I0[14] -pin mac_conv1|weight_reg_reg[15:0] Q[14]
load net mac_conv1|weight_reg[15] -attr @rip(#f7f8f9) 15 -attr @name weight_reg[15] -pin mac_conv1|mult_result_i I0[15] -pin mac_conv1|weight_reg_reg[15:0] Q[15]
load net mac_conv1|weight_reg[1] -attr @rip(#f7f8f9) 1 -attr @name weight_reg[1] -pin mac_conv1|mult_result_i I0[1] -pin mac_conv1|weight_reg_reg[15:0] Q[1]
load net mac_conv1|weight_reg[2] -attr @rip(#f7f8f9) 2 -attr @name weight_reg[2] -pin mac_conv1|mult_result_i I0[2] -pin mac_conv1|weight_reg_reg[15:0] Q[2]
load net mac_conv1|weight_reg[3] -attr @rip(#f7f8f9) 3 -attr @name weight_reg[3] -pin mac_conv1|mult_result_i I0[3] -pin mac_conv1|weight_reg_reg[15:0] Q[3]
load net mac_conv1|weight_reg[4] -attr @rip(#f7f8f9) 4 -attr @name weight_reg[4] -pin mac_conv1|mult_result_i I0[4] -pin mac_conv1|weight_reg_reg[15:0] Q[4]
load net mac_conv1|weight_reg[5] -attr @rip(#f7f8f9) 5 -attr @name weight_reg[5] -pin mac_conv1|mult_result_i I0[5] -pin mac_conv1|weight_reg_reg[15:0] Q[5]
load net mac_conv1|weight_reg[6] -attr @rip(#f7f8f9) 6 -attr @name weight_reg[6] -pin mac_conv1|mult_result_i I0[6] -pin mac_conv1|weight_reg_reg[15:0] Q[6]
load net mac_conv1|weight_reg[7] -attr @rip(#f7f8f9) 7 -attr @name weight_reg[7] -pin mac_conv1|mult_result_i I0[7] -pin mac_conv1|weight_reg_reg[15:0] Q[7]
load net mac_conv1|weight_reg[8] -attr @rip(#f7f8f9) 8 -attr @name weight_reg[8] -pin mac_conv1|mult_result_i I0[8] -pin mac_conv1|weight_reg_reg[15:0] Q[8]
load net mac_conv1|weight_reg[9] -attr @rip(#f7f8f9) 9 -attr @name weight_reg[9] -pin mac_conv1|mult_result_i I0[9] -pin mac_conv1|weight_reg_reg[15:0] Q[9]
load netBundle @mac_conv1|pixel 16 mac_conv1|pixel[15] mac_conv1|pixel[14] mac_conv1|pixel[13] mac_conv1|pixel[12] mac_conv1|pixel[11] mac_conv1|pixel[10] mac_conv1|pixel[9] mac_conv1|pixel[8] mac_conv1|pixel[7] mac_conv1|pixel[6] mac_conv1|pixel[5] mac_conv1|pixel[4] mac_conv1|pixel[3] mac_conv1|pixel[2] mac_conv1|pixel[1] mac_conv1|pixel[0] -autobundled
netbloc @mac_conv1|pixel 1 0 1 250 128n
load netBundle @mac_conv1|weight 16 mac_conv1|weight[15] mac_conv1|weight[14] mac_conv1|weight[13] mac_conv1|weight[12] mac_conv1|weight[11] mac_conv1|weight[10] mac_conv1|weight[9] mac_conv1|weight[8] mac_conv1|weight[7] mac_conv1|weight[6] mac_conv1|weight[5] mac_conv1|weight[4] mac_conv1|weight[3] mac_conv1|weight[2] mac_conv1|weight[1] mac_conv1|weight[0] -autobundled
netbloc @mac_conv1|weight 1 0 1 N 298
load netBundle @mac_conv1|acc0 16 mac_conv1|acc0[15] mac_conv1|acc0[14] mac_conv1|acc0[13] mac_conv1|acc0[12] mac_conv1|acc0[11] mac_conv1|acc0[10] mac_conv1|acc0[9] mac_conv1|acc0[8] mac_conv1|acc0[7] mac_conv1|acc0[6] mac_conv1|acc0[5] mac_conv1|acc0[4] mac_conv1|acc0[3] mac_conv1|acc0[2] mac_conv1|acc0[1] mac_conv1|acc0[0] -autobundled
netbloc @mac_conv1|acc0 1 5 1 1660 278n
load netBundle @mac_conv1|exact_sum 16 mac_conv1|exact_sum[15] mac_conv1|exact_sum[14] mac_conv1|exact_sum[13] mac_conv1|exact_sum[12] mac_conv1|exact_sum[11] mac_conv1|exact_sum[10] mac_conv1|exact_sum[9] mac_conv1|exact_sum[8] mac_conv1|exact_sum[7] mac_conv1|exact_sum[6] mac_conv1|exact_sum[5] mac_conv1|exact_sum[4] mac_conv1|exact_sum[3] mac_conv1|exact_sum[2] mac_conv1|exact_sum[1] mac_conv1|exact_sum[0] -autobundled
netbloc @mac_conv1|exact_sum 1 4 1 1390 128n
load netBundle @mac_conv1|isolated_a 16 mac_conv1|isolated_a[15] mac_conv1|isolated_a[14] mac_conv1|isolated_a[13] mac_conv1|isolated_a[12] mac_conv1|isolated_a[11] mac_conv1|isolated_a[10] mac_conv1|isolated_a[9] mac_conv1|isolated_a[8] mac_conv1|isolated_a[7] mac_conv1|isolated_a[6] mac_conv1|isolated_a[5] mac_conv1|isolated_a[4] mac_conv1|isolated_a[3] mac_conv1|isolated_a[2] mac_conv1|isolated_a[1] mac_conv1|isolated_a[0] -autobundled
netbloc @mac_conv1|isolated_a 1 3 1 1130 118n
load netBundle @mac_conv1|isolated_b 16 mac_conv1|isolated_b[15] mac_conv1|isolated_b[14] mac_conv1|isolated_b[13] mac_conv1|isolated_b[12] mac_conv1|isolated_b[11] mac_conv1|isolated_b[10] mac_conv1|isolated_b[9] mac_conv1|isolated_b[8] mac_conv1|isolated_b[7] mac_conv1|isolated_b[6] mac_conv1|isolated_b[5] mac_conv1|isolated_b[4] mac_conv1|isolated_b[3] mac_conv1|isolated_b[2] mac_conv1|isolated_b[1] mac_conv1|isolated_b[0] -autobundled
netbloc @mac_conv1|isolated_b 1 3 1 1150 98n
load netBundle @mac_conv1|loa_sum 4 mac_conv1|loa_sum[3] mac_conv1|loa_sum[2] mac_conv1|loa_sum[1] mac_conv1|loa_sum[0] -autobundled
netbloc @mac_conv1|loa_sum 1 4 1 1370 208n
load netBundle @mac_conv1|loa_sum_1 12 mac_conv1|loa_sum[15] mac_conv1|loa_sum[14] mac_conv1|loa_sum[13] mac_conv1|loa_sum[12] mac_conv1|loa_sum[11] mac_conv1|loa_sum[10] mac_conv1|loa_sum[9] mac_conv1|loa_sum[8] mac_conv1|loa_sum[7] mac_conv1|loa_sum[6] mac_conv1|loa_sum[5] mac_conv1|loa_sum[4] -autobundled
netbloc @mac_conv1|loa_sum_1 1 4 1 1370 268n
load netBundle @mac_conv1|scaled_mult 16 mac_conv1|scaled_mult[15] mac_conv1|scaled_mult[14] mac_conv1|scaled_mult[13] mac_conv1|scaled_mult[12] mac_conv1|scaled_mult[11] mac_conv1|scaled_mult[10] mac_conv1|scaled_mult[9] mac_conv1|scaled_mult[8] mac_conv1|scaled_mult[7] mac_conv1|scaled_mult[6] mac_conv1|scaled_mult[5] mac_conv1|scaled_mult[4] mac_conv1|scaled_mult[3] mac_conv1|scaled_mult[2] mac_conv1|scaled_mult[1] mac_conv1|scaled_mult[0] -autobundled
netbloc @mac_conv1|scaled_mult 1 2 2 820 338 1150
load netBundle @mac_conv1|pixel_reg 16 mac_conv1|pixel_reg[15] mac_conv1|pixel_reg[14] mac_conv1|pixel_reg[13] mac_conv1|pixel_reg[12] mac_conv1|pixel_reg[11] mac_conv1|pixel_reg[10] mac_conv1|pixel_reg[9] mac_conv1|pixel_reg[8] mac_conv1|pixel_reg[7] mac_conv1|pixel_reg[6] mac_conv1|pixel_reg[5] mac_conv1|pixel_reg[4] mac_conv1|pixel_reg[3] mac_conv1|pixel_reg[2] mac_conv1|pixel_reg[1] mac_conv1|pixel_reg[0] -autobundled
netbloc @mac_conv1|pixel_reg 1 1 1 570 108n
load netBundle @mac_conv1|acc 16 mac_conv1|acc[15] mac_conv1|acc[14] mac_conv1|acc[13] mac_conv1|acc[12] mac_conv1|acc[11] mac_conv1|acc[10] mac_conv1|acc[9] mac_conv1|acc[8] mac_conv1|acc[7] mac_conv1|acc[6] mac_conv1|acc[5] mac_conv1|acc[4] mac_conv1|acc[3] mac_conv1|acc[2] mac_conv1|acc[1] mac_conv1|acc[0] -autobundled
netbloc @mac_conv1|acc 1 2 5 820 188 1110 458 NJ 458 NJ 458 1850
load netBundle @mac_conv1|weight_reg 16 mac_conv1|weight_reg[15] mac_conv1|weight_reg[14] mac_conv1|weight_reg[13] mac_conv1|weight_reg[12] mac_conv1|weight_reg[11] mac_conv1|weight_reg[10] mac_conv1|weight_reg[9] mac_conv1|weight_reg[8] mac_conv1|weight_reg[7] mac_conv1|weight_reg[6] mac_conv1|weight_reg[5] mac_conv1|weight_reg[4] mac_conv1|weight_reg[3] mac_conv1|weight_reg[2] mac_conv1|weight_reg[1] mac_conv1|weight_reg[0] -autobundled
netbloc @mac_conv1|weight_reg 1 1 1 550 278n
load netBundle @pixel_in 16 pixel_in[15] pixel_in[14] pixel_in[13] pixel_in[12] pixel_in[11] pixel_in[10] pixel_in[9] pixel_in[8] pixel_in[7] pixel_in[6] pixel_in[5] pixel_in[4] pixel_in[3] pixel_in[2] pixel_in[1] pixel_in[0] -autobundled
netbloc @pixel_in 1 0 1 80 120n
load netBundle @weight_in 16 weight_in[15] weight_in[14] weight_in[13] weight_in[12] weight_in[11] weight_in[10] weight_in[9] weight_in[8] weight_in[7] weight_in[6] weight_in[5] weight_in[4] weight_in[3] weight_in[2] weight_in[1] weight_in[0] -autobundled
netbloc @weight_in 1 0 1 20 210n
load netBundle @conv1_out 16 conv1_out[15] conv1_out[14] conv1_out[13] conv1_out[12] conv1_out[11] conv1_out[10] conv1_out[9] conv1_out[8] conv1_out[7] conv1_out[6] conv1_out[5] conv1_out[4] conv1_out[3] conv1_out[2] conv1_out[1] conv1_out[0] -autobundled
netbloc @conv1_out 1 1 1 1960J 100n
load netBundle @conv2_out 16 conv2_out[15] conv2_out[14] conv2_out[13] conv2_out[12] conv2_out[11] conv2_out[10] conv2_out[9] conv2_out[8] conv2_out[7] conv2_out[6] conv2_out[5] conv2_out[4] conv2_out[3] conv2_out[2] conv2_out[1] conv2_out[0] -autobundled
netbloc @conv2_out 1 1 1 1980J 290n
load netBundle @conv3_out 16 conv3_out[15] conv3_out[14] conv3_out[13] conv3_out[12] conv3_out[11] conv3_out[10] conv3_out[9] conv3_out[8] conv3_out[7] conv3_out[6] conv3_out[5] conv3_out[4] conv3_out[3] conv3_out[2] conv3_out[1] conv3_out[0] -autobundled
netbloc @conv3_out 1 1 1 2000J 480n
load netBundle @fc1_out 16 fc1_out[15] fc1_out[14] fc1_out[13] fc1_out[12] fc1_out[11] fc1_out[10] fc1_out[9] fc1_out[8] fc1_out[7] fc1_out[6] fc1_out[5] fc1_out[4] fc1_out[3] fc1_out[2] fc1_out[1] fc1_out[0] -autobundled
netbloc @fc1_out 1 1 1 2020J 670n
load netBundle @fc2_out 16 fc2_out[15] fc2_out[14] fc2_out[13] fc2_out[12] fc2_out[11] fc2_out[10] fc2_out[9] fc2_out[8] fc2_out[7] fc2_out[6] fc2_out[5] fc2_out[4] fc2_out[3] fc2_out[2] fc2_out[1] fc2_out[0] -autobundled
netbloc @fc2_out 1 1 1 2040J 860n
levelinfo -pg 1 0 220 2060
levelinfo -hier mac_conv1 * 350 670 970 1230 1520 1700 *
pagesize -pg 1 -db -bbox -sgen -170 -10 2210 1290
pagesize -hier mac_conv1 -db -bbox -sgen 220 28 1880 498
show
zoom 0.752643
scrollpos -115 -2
#
# initialize ictrl to current module top_module work:top_module:NOFILE
ictrl init topinfo |
