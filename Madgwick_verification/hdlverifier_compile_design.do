# Create design library
vlib work
# Create and open project
project new . compile_project
project open compile_project
# Add source files to project
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/init_guess.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/interate.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/lookup.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/lzc.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/Madgwick_correction_fixpt.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/Madgwick_correction_fixpt_pac.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/Madgwick_normalize_fixpt.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/Madgwick_qDot_fixpt.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/Madgwick_segments.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/Madgwick_update_fixpt.vhd"
project addfile "C:/Users/z68j959/Documents/GitHub/EELE466/Madgwick_verification/rsr.vhd"
# Calculate compilation order
project calculateorder
set compcmd [project compileall -n]
# Close project
project close
# Compile all files and report error
if [catch {eval $compcmd}] {
    exit -code 1
}
