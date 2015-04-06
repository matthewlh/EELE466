@echo off
set MATLAB=C:\MATLAB\R2014a
set MATLAB_ARCH=win64
set MATLAB_BIN="C:\MATLAB\R2014a\bin"
set ENTRYPOINT=mexFunction
set OUTDIR=.\
set LIB_NAME=Madgwick_segments_float_mex
set MEX_NAME=Madgwick_segments_float_mex
set MEX_EXT=.mexw64
call mexopts.bat
echo # Make settings for Madgwick_segments > Madgwick_segments_mex.mki
echo COMPILER=%COMPILER%>> Madgwick_segments_mex.mki
echo COMPFLAGS=%COMPFLAGS%>> Madgwick_segments_mex.mki
echo OPTIMFLAGS=%OPTIMFLAGS%>> Madgwick_segments_mex.mki
echo DEBUGFLAGS=%DEBUGFLAGS%>> Madgwick_segments_mex.mki
echo LINKER=%LINKER%>> Madgwick_segments_mex.mki
echo LINKFLAGS=%LINKFLAGS%>> Madgwick_segments_mex.mki
echo LINKOPTIMFLAGS=%LINKOPTIMFLAGS%>> Madgwick_segments_mex.mki
echo LINKDEBUGFLAGS=%LINKDEBUGFLAGS%>> Madgwick_segments_mex.mki
echo MATLAB_ARCH=%MATLAB_ARCH%>> Madgwick_segments_mex.mki
echo BORLAND=%BORLAND%>> Madgwick_segments_mex.mki
echo OMPFLAGS= >> Madgwick_segments_mex.mki
echo OMPLINKFLAGS= >> Madgwick_segments_mex.mki
echo EMC_COMPILER=msvc100>> Madgwick_segments_mex.mki
echo EMC_CONFIG=optim>> Madgwick_segments_mex.mki
"C:\MATLAB\R2014a\bin\win64\gmake" -B -f Madgwick_segments_mex.mk
