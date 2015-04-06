/*
 * Madgwick_normalize.c
 *
 * Code generation for function 'Madgwick_normalize'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Madgwick_segments.h"
#include "Madgwick_normalize.h"
#include "eml_error.h"
#include "Madgwick_segments_mexutil.h"
#include "Madgwick_segments_data.h"

/* Variable Definitions */
static emlrtRSInfo h_emlrtRSI = { 6, "Madgwick_normalize",
  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_normalize.m"
};

/* Function Definitions */
void Madgwick_normalize(const emlrtStack *sp, real_T *ax, real_T *ay, real_T *az,
  real_T *aw)
{
  real_T dotproduct;
  emlrtStack st;
  emlrtStack b_st;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;

  /* logging input variable 'ax' for function 'Madgwick_normalize' */
  emlrt_update_log_1(*ax, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[80U]);

  /* logging input variable 'ay' for function 'Madgwick_normalize' */
  emlrt_update_log_1(*ay, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[81U]);

  /* logging input variable 'az' for function 'Madgwick_normalize' */
  emlrt_update_log_1(*az, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[82U]);

  /* logging input variable 'aw' for function 'Madgwick_normalize' */
  emlrt_update_log_1(*aw, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[83U]);
  *aw = emlrt_update_log_1(*aw, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[87U]);
  *az = emlrt_update_log_1(*az, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[86U]);
  *ay = emlrt_update_log_1(*ay, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[85U]);
  *ax = emlrt_update_log_1(*ax, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[84U]);
  covrtLogFcn(&gCoverageLoggingInstance, (uint32_T)2, 0);
  covrtLogBasicBlock(&gCoverageLoggingInstance, (uint32_T)2, 0);
  dotproduct = emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(*ax * *ax, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[91U]) +
     emlrt_update_log_1(*ay * *ay, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[92U]),
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[90U])
    + emlrt_update_log_1(*az * *az, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[93U]), *(emlrtLocationLoggingDataType (*)[410])
    &emlrtLocationLoggingDataTables[89U]) + emlrt_update_log_1(*aw * *aw,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[94U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[88U]);
  if (covrtLogIf(&gCoverageLoggingInstance, (uint32_T)2, (uint32_T)0, 0,
                 dotproduct != 0.0)) {
    covrtLogBasicBlock(&gCoverageLoggingInstance, (uint32_T)2, 1);
    st.site = &h_emlrtRSI;
    if (dotproduct < 0.0) {
      b_st.site = &i_emlrtRSI;
      eml_error(&b_st);
    }

    dotproduct = emlrt_update_log_1(muDoubleScalarSqrt(dotproduct),
      *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
      [96U]);
    dotproduct = emlrt_update_log_1(1.0 / dotproduct,
      *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
      [95U]);
    *ax = emlrt_update_log_1(*ax * dotproduct, *(emlrtLocationLoggingDataType (*)
      [410])&emlrtLocationLoggingDataTables[97U]);
    *ay = emlrt_update_log_1(*ay * dotproduct, *(emlrtLocationLoggingDataType (*)
      [410])&emlrtLocationLoggingDataTables[98U]);
    *az = emlrt_update_log_1(*az * dotproduct, *(emlrtLocationLoggingDataType (*)
      [410])&emlrtLocationLoggingDataTables[99U]);
    *aw = emlrt_update_log_1(*aw * dotproduct, *(emlrtLocationLoggingDataType (*)
      [410])&emlrtLocationLoggingDataTables[100U]);
  }
}

/* End of code generation (Madgwick_normalize.c) */
