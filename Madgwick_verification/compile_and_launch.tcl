proc vsimulink {args} {
  lappend sllibarg -foreign \{simlinkserver \{C:/MATLAB/R2014a/toolbox/edalink/extensions/modelsim/windows64/liblfmhdls_gcc450.dll\}
  set socket 60320
  if {[catch {lsearch -exact $args -socket} idx]==0  && $idx >= 0} {
    set socket [lindex $args [expr {$idx + 1}]]
    set args [lreplace $args $idx [expr {$idx + 1}]]
  }
  set runmode "Batch"
  if { $runmode == "Batch" || $runmode == "Batch with Xterm"} {
    lappend sllibarg " \; -batch"
  }
  append socketarg " \; -socket " "$socket"
  lappend sllibarg $socketarg
  lappend sllibarg \}
  set args [linsert $args 0 vsim]
  lappend args [join $sllibarg]
  uplevel 1 [join $args]
}
proc vsimmatlab {args} {
  lappend mllibarg -foreign \{matlabclient \{C:/MATLAB/R2014a/toolbox/edalink/extensions/modelsim/windows64/liblfmhdlc_gcc450.dll\}
  lappend mllibarg \}
  lappend mlinput 
  lappend mlinput [join $args]
  lappend mlinput [join $mllibarg]
   set mlinput [linsert $mlinput 0 vsim]
  uplevel 1 [join $mlinput]
}
proc wrapverilog {args} {

  error "wrapverilog has been removed. HDL Verifier now supports Verilog models directly, without requiring a VHDL wrapper."}

proc vsimmatlabsysobj {args} {
  lappend sllibarg -foreign \{matlabsysobjserver \{C:/MATLAB/R2014a/toolbox/edalink/extensions/modelsim/windows64/liblfmhdls_gcc450.dll\}
  if {[catch {lsearch -exact $args -socket} idx]==0  && $idx >= 0} {
    set socket [lindex $args [expr {$idx + 1}]]
    set args [lreplace $args $idx [expr {$idx + 1}]]
    append socketarg " \; -socket " "$socket"
    lappend sllibarg $socketarg
  }
  set runmode "Batch"
  if { $runmode == "Batch" || $runmode == "Batch with Xterm"} {
    lappend sllibarg " \; -batch"
  }
  lappend sllibarg \}
  set args [linsert $args 0 vsim]
  lappend args [join $sllibarg]
  uplevel 1 [join $args]
}
onElabError {echo "Loading simulation and HDL Verifier library failed."; quit -f}
transcript file "tp8a376984_b6b6_4f81_a254_82f81138aaa7.log"
if { [catch {vsimulink madgwick_seqments -t 1ns -novopt  } errmsg] } {
    echo "Loading simulation and HDL Verifier library failed."; 
    echo $errmsg; 
    quit -f; 
}

