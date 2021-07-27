if {[catch {

# define run engine funtion
source [file join {C:/lscc/radiant/2.2} scripts tcl flow run_engine.tcl]
# define global variables
global para
set para(gui_mode) 1
set para(prj_dir) "C:/Users/ubu/my_designs/led_ice40up_bb"
# synthesize IPs
# synthesize VMs
# synthesize top design
file delete -force -- led_ice40up_bb_impl_1.vm led_ice40up_bb_impl_1.ldc
run_engine synpwrap -prj "led_ice40up_bb_impl_1_synplify.tcl" -log "led_ice40up_bb_impl_1.srf"
run_postsyn [list -a iCE40UP -p iCE40UP5K -t SG48 -sp High-Performance_1.2V -oc Industrial -top -w -o led_ice40up_bb_impl_1_syn.udb led_ice40up_bb_impl_1.vm] "C:/Users/ubu/my_designs/led_ice40up_bb/impl_1/led_ice40up_bb_impl_1.ldc"

} out]} {
   runtime_log $out
   exit 1
}
