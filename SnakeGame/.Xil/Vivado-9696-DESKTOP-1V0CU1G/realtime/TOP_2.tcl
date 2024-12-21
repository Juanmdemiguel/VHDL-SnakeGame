# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/.Xil/Vivado-9696-DESKTOP-1V0CU1G/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    rt::set_parameter datapathDensePacking false
    set rt::partid xc7a100tcsg324-1
    source $::env(HRT_TCL_PATH)/rtSynthParallelPrep.tcl
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common.tcl
    set rt::defaultWorkLibName xil_defaultlib
    rt::set_parameter defaultVhdlWorkLib xil_defaultlib

    rt::set_parameter loadVhdl2008Libs false
    rt::set_parameter loadVhdl2019Libs false
    rt::set_parameter deferParseUntilElab true
    rt::set_parameter sortHdlCommandLine true
    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv C:/XILINX1/Vivado/2024.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      rt::read_verilog {
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/imports/hdl/PS2Receiver.v
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/imports/hdl/debouncer.v
    }
      rt::read_vhdl -lib xil_defaultlib {
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/.Xil/Vivado-9696-DESKTOP-1V0CU1G/realtime/PLL100to108_stub.vhdl
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/BUTTONS_SYNCHRONIZER.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_Converter.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_distributor.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/new/DISPLAY_BCD.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/EDGEDTCTR.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Types.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/GAME_PLAY.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Letters.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Main_Game.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaled_String.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Scaler.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/new/TOP_TEC.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Draw.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_DrawStr.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Manager.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/VGA_Sync.vhd
      C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Top2LaSecuela.vhd
    }
      rt::read_vhdl -lib xpm C:/XILINX1/Vivado/2024.1/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top TOP_2
    rt::set_parameter enableIncremental true
    rt::set_parameter markDebugPreservationLevel "enable"
    set rt::reportTiming false
    rt::set_parameter elaborateOnly false
    rt::set_parameter elaborateRtl false
    rt::set_parameter eliminateRedundantBitOperator true
    rt::set_parameter linterFlow true
    rt::set_parameter synthReportEmptyAndUndriven false
    rt::set_parameter dataflowBusHighlighting false
    rt::set_parameter generateDataflowBusNetlist false
    rt::set_parameter dataFlowViewInElab false
    rt::set_parameter busViewFixBrokenConnections false
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter synthDebugLog false
    rt::set_parameter printModuleName false
    rt::set_parameter enableSplitFlowPath "C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/.Xil/Vivado-9696-DESKTOP-1V0CU1G/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_synthesis -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    rt::HARTNDb_reportJobStats "Synthesis Optimization Runtime"
    rt::HARTNDb_stopSystemStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}
