# Create design library
vlib work
# Create and open project
project new . compile_project
project open compile_project
# Add source files to project
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/vhdl source/init_guess.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/vhdl source/interate.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/vhdl source/lookup.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/vhdl source/lzc.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/vhdl source/rsr.vhd"
# Calculate compilation order
project calculateorder
set compcmd [project compileall -n]
# Close project
project close
# Compile all files and report error
if [catch {eval $compcmd}] {
    exit -code 1
}
