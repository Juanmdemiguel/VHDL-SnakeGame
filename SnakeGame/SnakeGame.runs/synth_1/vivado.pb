
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:132

00:00:152	
539.5202	
236.691Z17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/utils_1/imports/synth_1/VGA_Sync.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2x
vC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/utils_1/imports/synth_1/VGA_Sync.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
read_checkpoint: 2

00:00:012

00:00:082	
554.1452
0.000Z17-268h px� 
a
Command: %s
53*	vivadotcl20
.synth_design -top TOP_2 -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 
[
$Part: %s does not have CEAM library.966*device2
xc7a100tcsg324-1Z21-9227h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
31736Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:10 . Memory (MB): peak = 1413.129 ; gain = 447.281
h px� 
�
(invalid size of integer constant literal5952*oasys2�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/imports/hdl/PS2Receiver.v2
398@Z8-9694h px� 
�
synthesizing module '%s'638*oasys2
TOP_22u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
768@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
FLIP_FLOP_Pyton2u
sC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/FLIP_FLOP_Pyton.vhd2
262
Inst_Flip_Flop2
FLIP_FLOP_Pyton2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
2438@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
FLIP_FLOP_Pyton2w
sC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/FLIP_FLOP_Pyton.vhd2
398@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
FLIP_FLOP_Pyton2
02
12w
sC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/FLIP_FLOP_Pyton.vhd2
398@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Clock_Manager2s
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_Manager.vhd2
252
Inst_Clock_Manager2
Clock_manager2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
2548@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Clock_Manager2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_Manager.vhd2
398@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Clock_distributor2w
uC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_distributor.vhd2
272
Inst_ClockDistributor2
clock_distributor2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_Manager.vhd2
668@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Clock_distributor2y
uC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_distributor.vhd2
368@Z8-638h px� 
�
,binding component instance '%s' to cell '%s'113*oasys2
	bufg_inst2
BUFG2y
uC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_distributor.vhd2
418@Z8-113h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Clock_distributor2
02
12y
uC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_distributor.vhd2
368@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
PLL100to1082�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.runs/synth_1/.Xil/Vivado-26528-DESKTOP-1V0CU1G/realtime/PLL100to108_stub.vhdl2
62

Inst_PLL2
PLL100to1082u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_Manager.vhd2
768@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
PLL100to1082�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.runs/synth_1/.Xil/Vivado-26528-DESKTOP-1V0CU1G/realtime/PLL100to108_stub.vhdl2
148@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Clock_Converter2u
sC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_Converter.vhd2
262
Inst_Clock_Converter2
Clock_Converter2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_Manager.vhd2
818@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Clock_Converter2w
sC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_Converter.vhd2
338@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Clock_Converter2
02
12w
sC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_Converter.vhd2
338@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Clock_Manager2
02
12u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_Manager.vhd2
398@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Scaled_String2s
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd2
262
Inst_ScaledString2
Scaled_String2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
2678@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Scaled_String2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd2
348@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Scaler2l
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
262
Inst_Scaler2
SCALER2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd2
498@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
Scaler2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Scaler2
02
12n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
348@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Scaler2l
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
262
Inst_Scaler2
SCALER2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd2
498@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Scaler2l
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
262
Inst_Scaler2
SCALER2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd2
498@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Scaler2l
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
262
Inst_Scaler2
SCALER2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd2
498@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Scaler2l
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
262
Inst_Scaler2
SCALER2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd2
498@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Scaler2l
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
262
Inst_Scaler2
SCALER2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd2
498@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Scaler2l
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
262
Inst_Scaler2
SCALER2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd2
498@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Scaler2l
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
262
Inst_Scaler2
SCALER2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd2
498@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
Scaler2l
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
262
Inst_Scaler2
SCALER2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd2
498@Z8-3491h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
Scaled_String2
02
12u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd2
348@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
BUTTONS_Sync2z
xC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/BUTTONS_SYNCHRONIZER.vhd2
272
Inst_Buttons_Sync2
BUTTONS_Sync2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
2748@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
BUTTONS_Sync2|
xC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/BUTTONS_SYNCHRONIZER.vhd2
358@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
BUTTONS_Sync2
02
12|
xC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/BUTTONS_SYNCHRONIZER.vhd2
358@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	EDGEDTCTR2o
mC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/EDGEDTCTR.vhd2
252
	Inst_edge2
	EDGEDTCTR2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
2828@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	EDGEDTCTR2q
mC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/EDGEDTCTR.vhd2
328@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	EDGEDTCTR2
02
12q
mC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/EDGEDTCTR.vhd2
328@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	Main_Game2o
mC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Main_Game.vhd2
252
Inst_MainFSM2
	Main_Game2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
2898@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	Main_Game2q
mC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Main_Game.vhd2
348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	Main_Game2
02
12q
mC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Main_Game.vhd2
348@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	GAME_Play2o
mC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/GAME_PLAY.vhd2
272
Inst_GAME_Play2
	GAME_Play2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
2978@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
	GAME_Play2q
mC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/GAME_PLAY.vhd2
458@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
sig_pyton_mesh_pos2q
mC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/GAME_PLAY.vhd2
578@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
inited2q
mC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/GAME_PLAY.vhd2
578@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	GAME_Play2
02
12q
mC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/GAME_PLAY.vhd2
458@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
VGA_Manager2q
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
272
Inst_VGA_Manager2
VGA_Manager2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
3128@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
VGA_Manager2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
428@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

VGA_Sync2n
lC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Sync.vhd2
262
Inst_VGA_Sync2

VGA_Sync2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
808@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

VGA_Sync2p
lC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Sync.vhd2
548@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

VGA_Sync2
02
12p
lC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Sync.vhd2
548@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

VGA_Draw2n
lC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Draw.vhd2
282
Inst_VGA_Draw2

VGA_Draw2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
908@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2

VGA_Draw2p
lC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Draw.vhd2
418@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
enable2p
lC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Draw.vhd2
448@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
pyton_length2p
lC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Draw.vhd2
448@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
pyton_mesh_pos2p
lC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Draw.vhd2
448@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
	apple_pos2p
lC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Draw.vhd2
448@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2

VGA_Draw2
02
12p
lC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Draw.vhd2
418@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
VGA_DrawStr2q
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_DrawStr.vhd2
282
Inst_VGA_DrawStr2
VGA_DrawStr2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
1038@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
VGA_DrawStr2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_DrawStr.vhd2
418@Z8-638h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
mode2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_DrawStr.vhd2
518@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
enable2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_DrawStr.vhd2
638@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
Strlen2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_DrawStr.vhd2
638@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
START2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_DrawStr.vhd2
638@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

GAMEOVER2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_DrawStr.vhd2
638@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
VGA_DrawStr2
02
12s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_DrawStr.vhd2
418@Z8-256h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
mode2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
1168@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
red_s2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
1168@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2	
green_s2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
1168@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
blue_s2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
1168@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
red_g2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
1168@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2	
green_g2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
1168@Z8-614h px� 
�
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
blue_g2s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
1168@Z8-614h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
VGA_Manager2
02
12s
oC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd2
428@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
TOP_TECLADO2
}C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/new/TOP_TEC.vhd2
272
Inst_Teclado2
TOP_TECLADO2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
3288@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
TOP_TECLADO2�
}C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/new/TOP_TEC.vhd2
458@Z8-638h px� 
�
synthesizing module '%s'%s4497*oasys2
PS2Receiver2
 2�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/imports/hdl/PS2Receiver.v2
238@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	debouncer2
 2�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/imports/hdl/debouncer.v2
238@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	debouncer2
 2
02
12�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/imports/hdl/debouncer.v2
238@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/imports/hdl/PS2Receiver.v2
538@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
PS2Receiver2
 2
02
12�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/imports/hdl/PS2Receiver.v2
238@Z8-6155h px� 
�
synthesizing module '%s'638*oasys2
MAQUINA_ESTADOS_TECLADO2�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/new/DISPLAY_BCD.vhd2
228@Z8-638h px� 
�
default block is never used226*oasys2�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/new/DISPLAY_BCD.vhd2
2488@Z8-226h px� 
�
default block is never used226*oasys2�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/new/DISPLAY_BCD.vhd2
2908@Z8-226h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
MAQUINA_ESTADOS_TECLADO2
02
12�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/new/DISPLAY_BCD.vhd2
228@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TOP_TECLADO2
02
12�
}C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/new/TOP_TEC.vhd2
458@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
TOP_22
02
12u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
768@Z8-256h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2

UART_TXD2
TOP_TECLADO2�
}C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/new/TOP_TEC.vhd2
368@Z8-3848h px� 
�
0Net %s in module/entity %s does not have driver.3422*oasys2
LEDs2
TOP_22u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
588@Z8-3848h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[31]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[30]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[29]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[28]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[27]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[26]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[25]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[24]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[23]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[22]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[21]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[20]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[19]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[18]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[17]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[16]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[15]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[14]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[13]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[12]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[11]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 

9Port %s in module %s is either unconnected or has no load4866*oasys2
x[10]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
x[9]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 
~
9Port %s in module %s is either unconnected or has no load4866*oasys2
x[8]2
MAQUINA_ESTADOS_TECLADOZ8-7129h px� 
v
9Port %s in module %s is either unconnected or has no load4866*oasys2

UART_TXD2
TOP_TECLADOZ8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LEDs[4]2
TOP_2Z8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LEDs[3]2
TOP_2Z8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LEDs[2]2
TOP_2Z8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LEDs[1]2
TOP_2Z8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LEDs[0]2
TOP_2Z8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:16 ; elapsed = 00:00:20 . Memory (MB): peak = 1670.160 ; gain = 704.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1670.160 ; gain = 704.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:17 ; elapsed = 00:00:20 . Memory (MB): peak = 1670.160 ; gain = 704.312
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:032

00:00:032

1670.1602
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
�c:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108/PLL100to108_in_context.xdc2
Inst_Clock_Manager/Inst_PLL	8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
�c:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108/PLL100to108_in_context.xdc2
Inst_Clock_Manager/Inst_PLL	8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
~C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/constrs_1/imports/new/Nexys-4-DDR-Master.xdc8Z20-179h px� 
�
No ports matched '%s'.
584*	planAhead2
	button_up2�
~C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/constrs_1/imports/new/Nexys-4-DDR-Master.xdc2
868@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
button_left2�
~C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/constrs_1/imports/new/Nexys-4-DDR-Master.xdc2
878@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
button_right2�
~C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/constrs_1/imports/new/Nexys-4-DDR-Master.xdc2
888@Z12-584h px�
�
No ports matched '%s'.
584*	planAhead2
button_down2�
~C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/constrs_1/imports/new/Nexys-4-DDR-Master.xdc2
898@Z12-584h px�
�
Finished Parsing XDC File [%s]
178*designutils2�
~C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/constrs_1/imports/new/Nexys-4-DDR-Master.xdc8Z20-178h px� 
�
�One or more constraints failed evaluation while reading constraint file [%s] and the design contains unresolved black boxes. These constraints will be read post-synthesis (as long as their source constraint file is marked as used_in_implementation) and should be applied correctly then. You should review the constraints listed in the file [%s] and check the run log file to verify that these constraints were correctly applied.301*project2�
~C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/constrs_1/imports/new/Nexys-4-DDR-Master.xdc2
.Xil/TOP_2_propImpl.xdcZ1-498h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
~C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/constrs_1/imports/new/Nexys-4-DDR-Master.xdc2
.Xil/TOP_2_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0172

1981.5312
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:012
00:00:00.3942

1981.5312
0.000Z17-268h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Constraint Validation : Time (s): cpu = 00:00:53 ; elapsed = 00:00:58 . Memory (MB): peak = 1981.531 ; gain = 1015.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:53 ; elapsed = 00:00:58 . Memory (MB): peak = 1981.531 ; gain = 1015.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:53 ; elapsed = 00:00:58 . Memory (MB): peak = 1981.531 ; gain = 1015.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
7
%s
*synth2
Start Preparing Guide Design
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
got a mismatch GAME_Play
h p
x
� 
0
%s
*synth2
Is not a child genome
h p
x
� 
�
,IncrSynth : %sReverting to default synthesis4534*oasys2h
fDesign change found in an area of the design that prevents previous synthesis information being used, Z8-6702h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Doing Graph Differ : Time (s): cpu = 00:00:55 ; elapsed = 00:01:01 . Memory (MB): peak = 1981.531 ; gain = 1015.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Preparing Guide Design : Time (s): cpu = 00:00:55 ; elapsed = 00:01:01 . Memory (MB): peak = 1981.531 ; gain = 1015.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
3inferred FSM for state register '%s' in module '%s'802*oasys2
cur_state_reg2
	Main_GameZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
current_state_reg2
MAQUINA_ESTADOS_TECLADOZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                s0_start |                              001 |                               00
h p
x
� 
y
%s
*synth2a
_                 s1_game |                              010 |                               01
h p
x
� 
y
%s
*synth2a
_                   s2_go |                              100 |                               10
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
cur_state_reg2	
one-hot2
	Main_GameZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2

inited_reg2q
mC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/GAME_PLAY.vhd2
738@Z8-327h px� 
�
!inferring latch for variable '%s'327*oasys2
drawPyton.draw_management_reg2p
lC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Draw.vhd2
608@Z8-327h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_                es_reset |                            00001 |                              000
h p
x
� 
y
%s
*synth2a
_              es_derecha |                            00010 |                              100
h p
x
� 
y
%s
*synth2a
_                es_abajo |                            00100 |                              010
h p
x
� 
y
%s
*synth2a
_            es_izquierda |                            01000 |                              011
h p
x
� 
y
%s
*synth2a
_               es_arriba |                            10000 |                              001
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
current_state_reg2	
one-hot2
MAQUINA_ESTADOS_TECLADOZ8-3354h px� 
�
!inferring latch for variable '%s'327*oasys2
sig_buttons_lock_reg2u
qC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd2
2318@Z8-327h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:01:03 ; elapsed = 00:01:10 . Memory (MB): peak = 1981.531 ; gain = 1015.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
C
%s
*synth2+
)

Incremental Synthesis Report Summary:

h p
x
� 
<
%s
*synth2$
"1. Incremental synthesis run: no

h p
x
� 
�
%s
*synth2�
�   Reason for not running incremental synthesis : Design change found in an area of the design that prevents previous synthesis information being used


h p
x
� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}4868*oasysZ8-7130h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit       Adders := 103   
h p
x
� 
F
%s
*synth2.
,	   2 Input   31 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   20 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   17 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit       Adders := 410   
h p
x
� 
F
%s
*synth2.
,	   3 Input   16 Bit       Adders := 402   
h p
x
� 
F
%s
*synth2.
,	   2 Input   11 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit       Adders := 1     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               80 Bit    Registers := 117   
h p
x
� 
H
%s
*synth20
.	               32 Bit    Registers := 204   
h p
x
� 
H
%s
*synth20
.	               20 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               16 Bit    Registers := 4     
h p
x
� 
H
%s
*synth20
.	               11 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                8 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                7 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                4 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                3 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 22    
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   32 Bit        Muxes := 104   
h p
x
� 
F
%s
*synth2.
,	   4 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   5 Input   32 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   31 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   16 Bit        Muxes := 204   
h p
x
� 
F
%s
*synth2.
,	   8 Input    8 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    7 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   3 Input    5 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   5 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   6 Input    5 Bit        Muxes := 4     
h p
x
� 
F
%s
*synth2.
,	   4 Input    5 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    4 Bit        Muxes := 5     
h p
x
� 
F
%s
*synth2.
,	   3 Input    4 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   4 Input    4 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	   5 Input    3 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    2 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 706   
h p
x
� 
F
%s
*synth2.
,	   3 Input    1 Bit        Muxes := 3     
h p
x
� 
F
%s
*synth2.
,	  12 Input    1 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 2     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LEDs[4]2
TOP_2Z8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LEDs[3]2
TOP_2Z8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LEDs[2]2
TOP_2Z8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LEDs[1]2
TOP_2Z8-7129h px� 
o
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LEDs[0]2
TOP_2Z8-7129h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
Strlen2
22
5Z8-5544h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[0].Inst_Scaler/char_scaled_reg[35][0:79]22
0scaling[0].Inst_Scaler/char_scaled_reg[30][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[0].Inst_Scaler/char_scaled_reg[40][0:79]22
0scaling[0].Inst_Scaler/char_scaled_reg[25][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[0].Inst_Scaler/char_scaled_reg[45][0:79]22
0scaling[0].Inst_Scaler/char_scaled_reg[25][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[0].Inst_Scaler/char_scaled_reg[50][0:79]22
0scaling[0].Inst_Scaler/char_scaled_reg[20][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[0].Inst_Scaler/char_scaled_reg[55][0:79]22
0scaling[0].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys21
/scaling[1].Inst_Scaler/char_scaled_reg[5][0:79]21
/scaling[1].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[1].Inst_Scaler/char_scaled_reg[10][0:79]21
/scaling[1].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[1].Inst_Scaler/char_scaled_reg[20][0:79]22
0scaling[1].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[1].Inst_Scaler/char_scaled_reg[30][0:79]22
0scaling[1].Inst_Scaler/char_scaled_reg[25][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[1].Inst_Scaler/char_scaled_reg[35][0:79]21
/scaling[1].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[1].Inst_Scaler/char_scaled_reg[40][0:79]22
0scaling[1].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[1].Inst_Scaler/char_scaled_reg[45][0:79]22
0scaling[1].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[1].Inst_Scaler/char_scaled_reg[50][0:79]21
/scaling[1].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[1].Inst_Scaler/char_scaled_reg[55][0:79]21
/scaling[1].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[1].Inst_Scaler/char_scaled_reg[60][0:79]21
/scaling[1].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[2].Inst_Scaler/char_scaled_reg[30][0:79]22
0scaling[2].Inst_Scaler/char_scaled_reg[25][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[2].Inst_Scaler/char_scaled_reg[35][0:79]22
0scaling[2].Inst_Scaler/char_scaled_reg[25][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[3].Inst_Scaler/char_scaled_reg[35][0:79]22
0scaling[3].Inst_Scaler/char_scaled_reg[30][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[3].Inst_Scaler/char_scaled_reg[40][0:79]22
0scaling[3].Inst_Scaler/char_scaled_reg[30][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[3].Inst_Scaler/char_scaled_reg[45][0:79]22
0scaling[3].Inst_Scaler/char_scaled_reg[30][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[3].Inst_Scaler/char_scaled_reg[50][0:79]22
0scaling[3].Inst_Scaler/char_scaled_reg[30][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[3].Inst_Scaler/char_scaled_reg[55][0:79]22
0scaling[3].Inst_Scaler/char_scaled_reg[30][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[3].Inst_Scaler/char_scaled_reg[60][0:79]22
0scaling[3].Inst_Scaler/char_scaled_reg[30][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[4].Inst_Scaler/char_scaled_reg[30][0:79]22
0scaling[4].Inst_Scaler/char_scaled_reg[25][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[4].Inst_Scaler/char_scaled_reg[35][0:79]22
0scaling[4].Inst_Scaler/char_scaled_reg[25][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[4].Inst_Scaler/char_scaled_reg[40][0:79]22
0scaling[4].Inst_Scaler/char_scaled_reg[20][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[4].Inst_Scaler/char_scaled_reg[45][0:79]22
0scaling[4].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[4].Inst_Scaler/char_scaled_reg[50][0:79]22
0scaling[4].Inst_Scaler/char_scaled_reg[10][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[4].Inst_Scaler/char_scaled_reg[55][0:79]21
/scaling[4].Inst_Scaler/char_scaled_reg[5][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[4].Inst_Scaler/char_scaled_reg[60][0:79]21
/scaling[4].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[5].Inst_Scaler/char_scaled_reg[30][0:79]21
/scaling[5].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[5].Inst_Scaler/char_scaled_reg[45][0:79]22
0scaling[5].Inst_Scaler/char_scaled_reg[10][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[5].Inst_Scaler/char_scaled_reg[50][0:79]22
0scaling[5].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys21
/scaling[7].Inst_Scaler/char_scaled_reg[5][0:79]21
/scaling[7].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[7].Inst_Scaler/char_scaled_reg[10][0:79]21
/scaling[7].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[7].Inst_Scaler/char_scaled_reg[20][0:79]22
0scaling[7].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[7].Inst_Scaler/char_scaled_reg[25][0:79]22
0scaling[7].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[7].Inst_Scaler/char_scaled_reg[30][0:79]22
0scaling[7].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[7].Inst_Scaler/char_scaled_reg[35][0:79]22
0scaling[7].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[7].Inst_Scaler/char_scaled_reg[40][0:79]22
0scaling[7].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[7].Inst_Scaler/char_scaled_reg[45][0:79]22
0scaling[7].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[7].Inst_Scaler/char_scaled_reg[50][0:79]22
0scaling[7].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[7].Inst_Scaler/char_scaled_reg[55][0:79]22
0scaling[7].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[7].Inst_Scaler/char_scaled_reg[60][0:79]22
0scaling[7].Inst_Scaler/char_scaled_reg[15][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys21
/scaling[8].Inst_Scaler/char_scaled_reg[5][0:79]21
/scaling[8].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[8].Inst_Scaler/char_scaled_reg[10][0:79]21
/scaling[8].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[8].Inst_Scaler/char_scaled_reg[15][0:79]21
/scaling[8].Inst_Scaler/char_scaled_reg[0][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[8].Inst_Scaler/char_scaled_reg[25][0:79]22
0scaling[8].Inst_Scaler/char_scaled_reg[20][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[8].Inst_Scaler/char_scaled_reg[35][0:79]22
0scaling[8].Inst_Scaler/char_scaled_reg[30][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[8].Inst_Scaler/char_scaled_reg[45][0:79]22
0scaling[8].Inst_Scaler/char_scaled_reg[40][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
merging register '%s' into '%s'3619*oasys22
0scaling[8].Inst_Scaler/char_scaled_reg[55][0:79]22
0scaling[8].Inst_Scaler/char_scaled_reg[50][0:79]2n
jC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd2
568@Z8-4471h px� 
�
RFound unconnected internal register '%s' and it is trimmed from '%s' to '%s' bits.3455*oasys2#
!Inst_Teclado/keyboard/keycode_reg2
322
242�
�C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/imports/hdl/PS2Receiver.v2
748@Z8-3936h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
Inst_Teclado/sevenSeg/an2
32
5Z8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
Inst_Teclado/keyboard/datacur2
42
5Z8-5544h px� 
�
[ROM "%s" won't be mapped to Block RAM because address size (%s) smaller than threshold (%s)3996*oasys2
Inst_Teclado/sevenSeg/seg2
42
5Z8-5544h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][0]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][1]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][2]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][3]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][4]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][5]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][6]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][7]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][8]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][9]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][10]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][11]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][12]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][13]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][14]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][15]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][16]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][17]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][18]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][19]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][20]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][21]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][22]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][23]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][24]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][25]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][26]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][27]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][28]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][29]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][30]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][31]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][32]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][33]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][34]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][35]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][36]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][37]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][38]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][39]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][40]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][41]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][42]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][43]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][44]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][45]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][46]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][47]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][48]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][49]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][50]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][51]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][52]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][53]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][54]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][55]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][56]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][57]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][58]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][59]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][60]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][61]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][62]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][63]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][64]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][65]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][66]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][67]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][68]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][69]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][70]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][71]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][72]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][73]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][74]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][75]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][76]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][77]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][78]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][0][79]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][0]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][1]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][2]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][3]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][4]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][5]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][6]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][7]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][8]2
0Z8-3917h px� 
v
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][9]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][10]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][11]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][12]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][13]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][14]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][15]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][16]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][17]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][18]2
0Z8-3917h px� 
w
+design %s has port %s driven by constant %s3447*oasys2

TOP_2__GC02
GAME_OVER[4][1][19]2
0Z8-3917h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-39172
100Z17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-39172
100Z17-14h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][79]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][78]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][78]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][77]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][77]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][76]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][76]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][75]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][75]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][74]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][73]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][73]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][72]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][72]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][71]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][71]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][70]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][70]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][69]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][69]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][68]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][68]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][67]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][67]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][66]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][66]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][65]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][65]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][64]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][64]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][63]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][63]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][62]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][62]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][61]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][61]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][60]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][60]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][59]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][59]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][58]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][58]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][57]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][57]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][56]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][56]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][55]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][55]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][54]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][54]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][53]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][53]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][52]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][52]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][51]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][51]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][50]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][50]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][49]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][49]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][48]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][48]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][47]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][47]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][46]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][46]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][45]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][45]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][44]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][44]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][43]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][43]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][42]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][42]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][41]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][41]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][40]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][40]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][39]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][39]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][38]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][38]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][37]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][37]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][36]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][36]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][35]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][35]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][34]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][34]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][33]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][33]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][32]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][32]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][31]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][31]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][30]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][30]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][29]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][29]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][28]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][28]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][27]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][27]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][26]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][26]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][25]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][25]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][24]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][24]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][23]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][23]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][22]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][22]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][21]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][21]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][20]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][20]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][19]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][19]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][18]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][18]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][17]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][17]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][16]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][16]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][15]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][14]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][14]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][13]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][13]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][12]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][12]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][11]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][10]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][10]2
FDE2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][9]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][9]2
FDE2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][8]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][8]2
FDE2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][7]2
FDE2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][6]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][6]2
FDE2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][5]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][5]2
FDE2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][4]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][4]2
FDE2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][3]2
FDE2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][2]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][2]2
FDE2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][1]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][1]2
FDE2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][0]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2@
>Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[0][0]2
FDE2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][25]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][0]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][1]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][1]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][2]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][2]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][3]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][3]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][4]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][4]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][5]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][5]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][6]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][6]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][7]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][7]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][8]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][8]2
FDE2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][9]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
?Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][9]2
FDE2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][10]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][10]2
FDE2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][11]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][11]2
FDE2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][12]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][12]2
FDE2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][13]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][13]2
FDE2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][14]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][14]2
FDE2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][15]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][15]2
FDE2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][16]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][16]2
FDE2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][17]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][17]2
FDE2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][18]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][18]2
FDE2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][19]Z8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][19]2
FDE2B
@Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][20]Z8-3886h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-38862
100Z17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2
Synth 8-38862
100Z17-14h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02D
B\Inst_ScaledString/scaling[7].Inst_Scaler/char_scaled_reg[15][79] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02D
B\Inst_ScaledString/scaling[6].Inst_Scaler/char_scaled_reg[60][79] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02D
B\Inst_ScaledString/scaling[5].Inst_Scaler/char_scaled_reg[60][59] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02D
B\Inst_ScaledString/scaling[8].Inst_Scaler/char_scaled_reg[60][79] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02D
B\Inst_ScaledString/scaling[4].Inst_Scaler/char_scaled_reg[25][79] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02D
B\Inst_ScaledString/scaling[1].Inst_Scaler/char_scaled_reg[25][79] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02D
B\Inst_ScaledString/scaling[3].Inst_Scaler/char_scaled_reg[30][54] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02B
@\Inst_ScaledString/scaling[0].Inst_Scaler/char_scaled_reg[0][0] Z8-3333h px� 
�
6propagating constant %s across sequential element (%s)3333*oasys2
02D
B\Inst_ScaledString/scaling[2].Inst_Scaler/char_scaled_reg[60][79] Z8-3333h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:01:53 ; elapsed = 00:02:51 . Memory (MB): peak = 1981.531 ; gain = 1015.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:04:03 ; elapsed = 00:05:19 . Memory (MB): peak = 1981.531 ; gain = 1015.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
~Finished Timing Optimization : Time (s): cpu = 00:04:52 ; elapsed = 00:06:13 . Memory (MB): peak = 1981.531 ; gain = 1015.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Technology Mapping : Time (s): cpu = 00:05:04 ; elapsed = 00:06:31 . Memory (MB): peak = 1981.531 ; gain = 1015.684
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2y
wFinished IO Insertion : Time (s): cpu = 00:05:16 ; elapsed = 00:06:45 . Memory (MB): peak = 1993.414 ; gain = 1027.566
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:05:16 ; elapsed = 00:06:46 . Memory (MB): peak = 1993.414 ; gain = 1027.566
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:05:19 ; elapsed = 00:06:49 . Memory (MB): peak = 1993.414 ; gain = 1027.566
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:05:20 ; elapsed = 00:06:49 . Memory (MB): peak = 1993.414 ; gain = 1027.566
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:05:20 ; elapsed = 00:06:49 . Memory (MB): peak = 1993.414 ; gain = 1027.566
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:05:20 ; elapsed = 00:06:50 . Memory (MB): peak = 1993.414 ; gain = 1027.566
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|      |BlackBox name |Instances |
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
=
%s
*synth2%
#|1     |PLL100to108   |         1|
h p
x
� 
=
%s
*synth2%
#+------+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
<
%s*synth2$
"+------+-----------------+------+
h px� 
<
%s*synth2$
"|      |Cell             |Count |
h px� 
<
%s*synth2$
"+------+-----------------+------+
h px� 
<
%s*synth2$
"|1     |PLL100to108_bbox |     1|
h px� 
<
%s*synth2$
"|2     |BUFG             |     4|
h px� 
<
%s*synth2$
"|3     |CARRY4           |  4004|
h px� 
<
%s*synth2$
"|4     |LUT1             |  8527|
h px� 
<
%s*synth2$
"|5     |LUT2             |  7368|
h px� 
<
%s*synth2$
"|6     |LUT3             |   288|
h px� 
<
%s*synth2$
"|7     |LUT4             |   818|
h px� 
<
%s*synth2$
"|8     |LUT5             |  1328|
h px� 
<
%s*synth2$
"|9     |LUT6             |  1781|
h px� 
<
%s*synth2$
"|10    |MUXF7            |    13|
h px� 
<
%s*synth2$
"|11    |MUXF8            |     2|
h px� 
<
%s*synth2$
"|12    |FDCE             |  2294|
h px� 
<
%s*synth2$
"|13    |FDPE             |   812|
h px� 
<
%s*synth2$
"|14    |FDRE             |  1766|
h px� 
<
%s*synth2$
"|15    |FDSE             |     2|
h px� 
<
%s*synth2$
"|16    |LD               |    35|
h px� 
<
%s*synth2$
"|17    |IBUF             |     4|
h px� 
<
%s*synth2$
"|18    |OBUF             |    36|
h px� 
<
%s*synth2$
"|19    |OBUFT            |     5|
h px� 
<
%s*synth2$
"+------+-----------------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:05:20 ; elapsed = 00:06:50 . Memory (MB): peak = 1993.414 ; gain = 1027.566
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
b
%s
*synth2J
HSynthesis finished with 0 errors, 0 critical warnings and 110 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:04:37 ; elapsed = 00:06:24 . Memory (MB): peak = 1993.414 ; gain = 716.195
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:05:20 ; elapsed = 00:06:51 . Memory (MB): peak = 1993.414 ; gain = 1027.566
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.6272

1993.4142
0.000Z17-268h px� 
V
-Analyzing %s Unisim elements for replacement
17*netlist2
4054Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
U
1Inserted %s IBUFs to IO ports without IO buffers.100*opt2
1Z31-140h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0052

1997.4222
0.000Z17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2I
G  A total of 35 instances were transformed.
  LD => LDCE: 35 instances
Z1-111h px� 
U
%Synth Design complete | Checksum: %s
562*	vivadotcl2	
8116b25Z4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
2592
1662
02
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:05:362

00:07:102

1997.4222

1443.277Z17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.1732

1997.4222
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2e
cC:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.runs/synth_1/TOP_2.dcpZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
write_checkpoint: 2

00:00:102

00:00:112

1997.4222
0.000Z17-268h px� 
�
Executing command : %s
56330*	planAhead2U
Sreport_utilization -file TOP_2_utilization_synth.rpt -pb TOP_2_utilization_synth.pbZ12-24828h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Thu Jan 23 17:53:04 2025Z17-206h px� 


End Record