/*
 * Madgwick_segments_mexutil.h
 *
 * Code generation for function 'Madgwick_segments_mexutil'
 *
 */

#ifndef __MADGWICK_SEGMENTS_MEXUTIL_H__
#define __MADGWICK_SEGMENTS_MEXUTIL_H__

/* Include files */
#include <math.h>
#include <stdlib.h>
#include <string.h>
#include "mwmathutil.h"
#include "tmwtypes.h"
#include "mex.h"
#include "emlrt.h"
#include "covrt.h"
#include "blas.h"
#include "rtwtypes.h"
#include "Madgwick_segments_types.h"

/* Function Declarations */
extern real_T emlrt_update_log_1(real_T in, emlrtLocationLoggingDataType table
  [410]);

#ifdef __WATCOMC__

#pragma aux emlrt_update_log_1 value [8087];

#endif
#endif

/* End of code generation (Madgwick_segments_mexutil.h) */
