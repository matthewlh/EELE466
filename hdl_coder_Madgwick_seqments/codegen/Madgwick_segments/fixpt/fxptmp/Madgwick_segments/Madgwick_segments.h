/*
 * Madgwick_segments.h
 *
 * Code generation for function 'Madgwick_segments'
 *
 */

#ifndef __MADGWICK_SEGMENTS_H__
#define __MADGWICK_SEGMENTS_H__

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
extern void Madgwick_segments(const emlrtStack *sp, real_T *q0, real_T *q1,
  real_T *q2, real_T *q3, real_T gx, real_T gy, real_T gz, real_T ax, real_T ay,
  real_T az, real_T mx, real_T my, real_T mz);

#endif

/* End of code generation (Madgwick_segments.h) */
