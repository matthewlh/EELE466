# Create design library
vlib work
# Create and open project
project new . compile_project
project open compile_project
# Add source files to project
project addfile "C:/Users/w92p177/Documents/GitHub/EELE466/rsrt_verification/rsr.vhd"
project addfile "C:/Users/w92p177/Documents/GitHub/EELE466/rsrt_verification/init_guess.vhd"
project addfile "C:/Users/w92p177/Documents/GitHub/EELE466/rsrt_verification/interate.vhd"
project addfile "C:/Users/w92p177/Documents/GitHub/EELE466/rsrt_verification/lzc.vhd"
# Calculate compilation order
project calculateorder
set compcmd [project compileall -n]
# Close project
project close
# Compile all files and report error
if [catch {eval $compcmd}] {
    exit -code 1
}
