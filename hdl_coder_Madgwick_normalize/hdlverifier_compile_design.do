# Create design library
vlib work
# Create and open project
project new . compile_project
project open compile_project
# Add source files to project
vmap Madgwick_correction C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/Madgwick_correction
vmap Madgwick_normalize C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/Madgwick_normalize
vmap Madgwick_qDot C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/Madgwick_qDot
vmap Madgwick_update C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/Madgwick_update
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/Madgwick_segments.vhd"
# Calculate compilation order
project calculateorder
set compcmd [project compileall -n]
# Close project
project close
# Compile all files and report error
if [catch {eval $compcmd}] {
    exit -code 1
}
