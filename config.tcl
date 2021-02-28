# User config
set ::env(DESIGN_NAME) adder

# Change if needed
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/verilog/*.v]

# Fill this
set ::env(CLOCK_PERIOD) 0
set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_TREE_SYNTH) 0
# set ::env(PL_SKIP_INITIAL_PLACEMENT) 1

set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
if { [file exists $filename] == 1} {
	source $filename
}

