/*
 * Madgwick_segments_mexutil.c
 *
 * Code generation for function 'Madgwick_segments_mexutil'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Madgwick_segments.h"
#include "Madgwick_segments_mexutil.h"

/* Function Definitions */
real_T emlrt_update_log_1(real_T in, emlrtLocationLoggingDataType table[410])
{
  real_T localMin;
  real_T localMax;
  localMin = table[0U].SimMin;
  localMax = table[0U].SimMax;

  /* Simulation Min-Max logging. */
  if (in < localMin) {
    localMin = in;
  }

  if (in > localMax) {
    localMax = in;
  }

  table[0U].SimMin = localMin;
  table[0U].SimMax = localMax;

  /* IsAlwaysInteger logging. */
  if (in != muDoubleScalarFloor(in)) {
    table[0U].IsAlwaysInteger = false;
  }

  return in;
}

/* End of code generation (Madgwick_segments_mexutil.c) */
