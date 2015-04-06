/*
 * Madgwick_normalize.h
 *
 * Code generation for function 'Madgwick_normalize'
 *
 */

#ifndef __MADGWICK_NORMALIZE_H__
#define __MADGWICK_NORMALIZE_H__

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
extern void Madgwick_normalize(const emlrtStack *sp, real_T *ax, real_T *ay,
  real_T *az, real_T *aw);

#endif

/* End of code generation (Madgwick_normalize.h) */
