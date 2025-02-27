# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
namespace eval ::optrace {
  variable script "C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.runs/synth_1/TOP_2.tcl"
  variable category "vivado_synth"
}

# Try to connect to running dispatch if we haven't done so already.
# This code assumes that the Tcl interpreter is not using threads,
# since the ::dispatch::connected variable isn't mutex protected.
if {![info exists ::dispatch::connected]} {
  namespace eval ::dispatch {
    variable connected false
    if {[llength [array get env XILINX_CD_CONNECT_ID]] > 0} {
      set result "true"
      if {[catch {
        if {[lsearch -exact [package names] DispatchTcl] < 0} {
          set result [load librdi_cd_clienttcl[info sharedlibextension]] 
        }
        if {$result eq "false"} {
          puts "WARNING: Could not load dispatch client library"
        }
        set connect_id [ ::dispatch::init_client -mode EXISTING_SERVER ]
        if { $connect_id eq "" } {
          puts "WARNING: Could not initialize dispatch client"
        } else {
          puts "INFO: Dispatch client connection id - $connect_id"
          set connected true
        }
      } catch_res]} {
        puts "WARNING: failed to connect to dispatch server - $catch_res"
      }
    }
  }
}
if {$::dispatch::connected} {
  # Remove the dummy proc if it exists.
  if { [expr {[llength [info procs ::OPTRACE]] > 0}] } {
    rename ::OPTRACE ""
  }
  proc ::OPTRACE { task action {tags {} } } {
    ::vitis_log::op_trace "$task" $action -tags $tags -script $::optrace::script -category $::optrace::category
  }
  # dispatch is generic. We specifically want to attach logging.
  ::vitis_log::connect_client
} else {
  # Add dummy proc if it doesn't exist.
  if { [expr {[llength [info procs ::OPTRACE]] == 0}] } {
    proc ::OPTRACE {{arg1 \"\" } {arg2 \"\"} {arg3 \"\" } {arg4 \"\"} {arg5 \"\" } {arg6 \"\"}} {
        # Do nothing
    }
  }
}

OPTRACE "synth_1" START { ROLLUP_AUTO }
set_param chipscope.maxJobs 4
OPTRACE "Creating in-memory project" START { }
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.cache/wt [current_project]
set_property parent.project_path C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part digilentinc.com:nexys4_ddr:part0:1.1 [current_project]
set_property ip_output_repo c:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
OPTRACE "Creating in-memory project" END { }
OPTRACE "Adding files" START { }
read_verilog -library xil_defaultlib {
  C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/imports/hdl/PS2Receiver.v
  C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/imports/hdl/debouncer.v
}
read_vhdl -library xil_defaultlib {
  C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/BUTTONS_SYNCHRONIZER.vhd
  C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_Converter.vhd
  C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_Manager.vhd
  C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Clock_distributor.vhd
  C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/imports/sources_1/new/DISPLAY_BCD.vhd
  C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/EDGEDTCTR.vhd
  C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/Types.vhd
  C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/new/FLIP_FLOP_Pyton.vhd
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
read_ip -quiet C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/sources_1/ip/PLL100to108/PLL100to108.xci
set_property used_in_implementation false [get_files -all c:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108_board.xdc]
set_property used_in_implementation false [get_files -all c:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108.xdc]
set_property used_in_implementation false [get_files -all c:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.gen/sources_1/ip/PLL100to108/PLL100to108_ooc.xdc]

OPTRACE "Adding files" END { }
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/constrs_1/imports/new/Nexys-4-DDR-Master.xdc
set_property used_in_implementation false [get_files C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/constrs_1/imports/new/Nexys-4-DDR-Master.xdc]

set_param ips.enableIPCacheLiteLoad 1

read_checkpoint -auto_incremental -incremental C:/Users/ivano/OneDrive/Documentos/GitHub/VHDL-SnakeGame/SnakeGame/SnakeGame.srcs/utils_1/imports/synth_1/VGA_Sync.dcp
close [open __synthesis_is_running__ w]

OPTRACE "synth_design" START { }
synth_design -top TOP_2 -part xc7a100tcsg324-1
OPTRACE "synth_design" END { }
if { [get_msg_config -count -severity {CRITICAL WARNING}] > 0 } {
 send_msg_id runtcl-6 info "Synthesis results are not added to the cache due to CRITICAL_WARNING"
}


OPTRACE "write_checkpoint" START { CHECKPOINT }
# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef TOP_2.dcp
OPTRACE "write_checkpoint" END { }
OPTRACE "synth reports" START { REPORT }
generate_parallel_reports -reports { "report_utilization -file TOP_2_utilization_synth.rpt -pb TOP_2_utilization_synth.pb"  } 
OPTRACE "synth reports" END { }
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
OPTRACE "synth_1" END { }
