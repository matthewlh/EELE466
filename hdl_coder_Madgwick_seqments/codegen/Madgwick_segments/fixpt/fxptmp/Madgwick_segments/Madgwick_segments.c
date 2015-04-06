/*
 * Madgwick_segments.c
 *
 * Code generation for function 'Madgwick_segments'
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
static emlrtRSInfo emlrtRSI = { 24, "Madgwick_segments",
  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_segments.m"
};

static emlrtRSInfo b_emlrtRSI = { 25, "Madgwick_segments",
  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_segments.m"
};

static emlrtRSInfo c_emlrtRSI = { 26, "Madgwick_segments",
  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_segments.m"
};

static emlrtRSInfo d_emlrtRSI = { 27, "Madgwick_segments",
  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_segments.m"
};

static emlrtRSInfo e_emlrtRSI = { 28, "Madgwick_segments",
  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_segments.m"
};

static emlrtRSInfo f_emlrtRSI = { 29, "Madgwick_segments",
  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_segments.m"
};

static emlrtRSInfo g_emlrtRSI = { 30, "Madgwick_segments",
  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_segments.m"
};

static emlrtRSInfo j_emlrtRSI = { 28, "Madgwick_correction",
  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_correction.m"
};

/* Function Declarations */
static void emlrtInitVarDataTables(emlrtLocationLoggingDataType dataTables[410]);

/* Function Definitions */
static void emlrtInitVarDataTables(emlrtLocationLoggingDataType dataTables[410])
{
  int32_T i;
  for (i = 0; i < 410; i++) {
    dataTables[i].SimMin = rtInf;
    dataTables[i].SimMax = rtMinusInf;
    dataTables[i].OverflowWraps = 0;
    dataTables[i].Saturations = 0;
    dataTables[i].IsAlwaysInteger = true;
    dataTables[i].HistogramTable = (emlrtLocationLoggingHistogramType *)NULL;
  }
}

void Madgwick_segments(const emlrtStack *sp, real_T *q0, real_T *q1, real_T *q2,
  real_T *q3, real_T gx, real_T gy, real_T gz, real_T ax, real_T ay, real_T az,
  real_T mx, real_T my, real_T mz)
{
  real_T qDot1;
  real_T qDot2;
  real_T qDot3;
  real_T qDot4;
  real_T v2q0mz;
  real_T v2q0mx;
  real_T v2q0my;
  real_T v2q1mx;
  real_T v2q0;
  real_T v2q1;
  real_T v2q2;
  real_T v2q3;
  real_T v2q0q2;
  real_T v2q2q3;
  real_T q0q0;
  real_T q0q1;
  real_T q0q2;
  real_T q0q3;
  real_T q1q1;
  real_T q1q2;
  real_T q1q3;
  real_T q2q2;
  real_T q2q3;
  real_T q3q3;
  real_T hx;
  real_T hy;
  real_T s1;
  emlrtStack st;
  emlrtStack b_st;
  emlrtStack c_st;
  st.prev = sp;
  st.tls = sp->tls;
  b_st.prev = &st;
  b_st.tls = st.tls;
  c_st.prev = &b_st;
  c_st.tls = b_st.tls;
  emlrtInitVarDataTables(emlrtLocationLoggingDataTables);

  /* logging input variable 'q0' for function 'Madgwick_segments' */
  emlrt_update_log_1(*q0, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[0U]);

  /* logging input variable 'q1' for function 'Madgwick_segments' */
  emlrt_update_log_1(*q1, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[1U]);

  /* logging input variable 'q2' for function 'Madgwick_segments' */
  emlrt_update_log_1(*q2, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[2U]);

  /* logging input variable 'q3' for function 'Madgwick_segments' */
  emlrt_update_log_1(*q3, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[3U]);

  /* logging input variable 'gx' for function 'Madgwick_segments' */
  emlrt_update_log_1(gx, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[4U]);

  /* logging input variable 'gy' for function 'Madgwick_segments' */
  emlrt_update_log_1(gy, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[5U]);

  /* logging input variable 'gz' for function 'Madgwick_segments' */
  emlrt_update_log_1(gz, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[6U]);

  /* logging input variable 'ax' for function 'Madgwick_segments' */
  emlrt_update_log_1(ax, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[7U]);

  /* logging input variable 'ay' for function 'Madgwick_segments' */
  emlrt_update_log_1(ay, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[8U]);

  /* logging input variable 'az' for function 'Madgwick_segments' */
  emlrt_update_log_1(az, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[9U]);

  /* logging input variable 'mx' for function 'Madgwick_segments' */
  emlrt_update_log_1(mx, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[10U]);

  /* logging input variable 'my' for function 'Madgwick_segments' */
  emlrt_update_log_1(my, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[11U]);

  /* logging input variable 'mz' for function 'Madgwick_segments' */
  emlrt_update_log_1(mz, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[12U]);
  *q3 = emlrt_update_log_1(*q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[16U]);
  *q2 = emlrt_update_log_1(*q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[15U]);
  *q1 = emlrt_update_log_1(*q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[14U]);
  *q0 = emlrt_update_log_1(*q0, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[13U]);
  covrtLogFcn(&gCoverageLoggingInstance, (uint32_T)0, 0);
  covrtLogBasicBlock(&gCoverageLoggingInstance, (uint32_T)0, 0);

  /* ===================================================================================================== */
  /*  Madgwick.m is a direct Matlab port of MadgwickAHRS.c */
  /* ===================================================================================================== */
  /*  */
  /*  sampleFreq	= 512.0;		% sample frequency in Hz */
  /*  sampleTime    = 1/sampleFreq; */
  /*  betaDef		= 0.1;		% 2 * proportional gain */
  /*  beta = betaDef;     % 2 * proportional gain (Kp) */
  /*  */
  /*  % quaternion of sensor frame relative to auxiliary frame */
  /*  q0 = 1.0; */
  /*  q1 = 0.0; */
  /*  q2 = 0.0; */
  /*  q3 = 0.0; */
  /*  */
  emlrt_update_log_1(512.0, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[17U]);

  /*  sample frequency in Hz */
  emlrt_update_log_1(0.001953125, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[18U]);
  emlrt_update_log_1(0.1, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[19U]);

  /*  2 * proportional gain */
  emlrt_update_log_1(0.1, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[20U]);

  /*  2 * proportional gain (Kp) */
  st.site = &emlrtRSI;

  /* logging input variable 'q0' for function 'Madgwick_qDot' */
  emlrt_update_log_1(*q0, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[49U]);

  /* logging input variable 'q1' for function 'Madgwick_qDot' */
  emlrt_update_log_1(*q1, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[50U]);

  /* logging input variable 'q2' for function 'Madgwick_qDot' */
  emlrt_update_log_1(*q2, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[51U]);

  /* logging input variable 'q3' for function 'Madgwick_qDot' */
  emlrt_update_log_1(*q3, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[52U]);

  /* logging input variable 'gx' for function 'Madgwick_qDot' */
  emlrt_update_log_1(gx, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[53U]);

  /* logging input variable 'gy' for function 'Madgwick_qDot' */
  emlrt_update_log_1(gy, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[54U]);

  /* logging input variable 'gz' for function 'Madgwick_qDot' */
  emlrt_update_log_1(gz, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[55U]);
  covrtLogFcn(&gCoverageLoggingInstance, (uint32_T)1, 0);
  covrtLogBasicBlock(&gCoverageLoggingInstance, (uint32_T)1, 0);

  /*  Rate of change of quaternion from gyroscope */
  qDot1 = emlrt_update_log_1(0.5 * emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(-*q1 * gx, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[59U]) -
     emlrt_update_log_1(*q2 * gy, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[60U]),
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[58U])
    - emlrt_update_log_1(*q3 * gz, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[61U]), *(emlrtLocationLoggingDataType (*)[410])
    &emlrtLocationLoggingDataTables[57U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[56U]);
  qDot2 = emlrt_update_log_1(0.5 * emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(*q0 * gx, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[65U]) +
     emlrt_update_log_1(*q2 * gz, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[66U]),
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[64U])
    - emlrt_update_log_1(*q3 * gy, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[67U]), *(emlrtLocationLoggingDataType (*)[410])
    &emlrtLocationLoggingDataTables[63U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[62U]);
  qDot3 = emlrt_update_log_1(0.5 * emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(*q0 * gy, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[71U]) -
     emlrt_update_log_1(*q1 * gz, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[72U]),
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[70U])
    + emlrt_update_log_1(*q3 * gx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[73U]), *(emlrtLocationLoggingDataType (*)[410])
    &emlrtLocationLoggingDataTables[69U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[68U]);
  qDot4 = emlrt_update_log_1(0.5 * emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(*q0 * gz, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[77U]) +
     emlrt_update_log_1(*q1 * gy, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[78U]),
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[76U])
    - emlrt_update_log_1(*q2 * gx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[79U]), *(emlrtLocationLoggingDataType (*)[410])
    &emlrtLocationLoggingDataTables[75U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[74U]);
  qDot1 = emlrt_update_log_1(qDot1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[21U]);
  qDot2 = emlrt_update_log_1(qDot2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[22U]);
  qDot3 = emlrt_update_log_1(qDot3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[23U]);
  qDot4 = emlrt_update_log_1(qDot4, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[24U]);
  v2q0mz = 0.0;
  st.site = &b_emlrtRSI;
  Madgwick_normalize(&st, &ax, &ay, &az, &v2q0mz);
  ax = emlrt_update_log_1(ax, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[25U]);
  ay = emlrt_update_log_1(ay, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[26U]);
  az = emlrt_update_log_1(az, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[27U]);
  emlrt_update_log_1(v2q0mz, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[28U]);
  v2q0mz = 0.0;
  st.site = &c_emlrtRSI;
  Madgwick_normalize(&st, &mx, &my, &mz, &v2q0mz);
  mx = emlrt_update_log_1(mx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[29U]);
  my = emlrt_update_log_1(my, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[30U]);
  mz = emlrt_update_log_1(mz, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[31U]);
  emlrt_update_log_1(v2q0mz, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[32U]);
  st.site = &d_emlrtRSI;

  /* logging input variable 'q0' for function 'Madgwick_correction' */
  emlrt_update_log_1(*q0, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[101U]);

  /* logging input variable 'q1' for function 'Madgwick_correction' */
  emlrt_update_log_1(*q1, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[102U]);

  /* logging input variable 'q2' for function 'Madgwick_correction' */
  emlrt_update_log_1(*q2, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[103U]);

  /* logging input variable 'q3' for function 'Madgwick_correction' */
  emlrt_update_log_1(*q3, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[104U]);

  /* logging input variable 'ax' for function 'Madgwick_correction' */
  emlrt_update_log_1(ax, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[105U]);

  /* logging input variable 'ay' for function 'Madgwick_correction' */
  emlrt_update_log_1(ay, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[106U]);

  /* logging input variable 'az' for function 'Madgwick_correction' */
  emlrt_update_log_1(az, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[107U]);

  /* logging input variable 'mx' for function 'Madgwick_correction' */
  emlrt_update_log_1(mx, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[108U]);

  /* logging input variable 'my' for function 'Madgwick_correction' */
  emlrt_update_log_1(my, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[109U]);

  /* logging input variable 'mz' for function 'Madgwick_correction' */
  emlrt_update_log_1(mz, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[110U]);
  covrtLogFcn(&gCoverageLoggingInstance, (uint32_T)3, 0);
  covrtLogBasicBlock(&gCoverageLoggingInstance, (uint32_T)3, 0);

  /*  Auxiliary variables to avoid repeated arithmetic */
  v2q0mx = emlrt_update_log_1(emlrt_update_log_1(2.0 * *q0,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[112U])
    * mx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[111U]);
  v2q0my = emlrt_update_log_1(emlrt_update_log_1(2.0 * *q0,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[114U])
    * my, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[113U]);
  v2q0mz = emlrt_update_log_1(emlrt_update_log_1(2.0 * *q0,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[116U])
    * mz, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[115U]);
  v2q1mx = emlrt_update_log_1(emlrt_update_log_1(2.0 * *q1,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[118U])
    * mx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[117U]);
  v2q0 = emlrt_update_log_1(2.0 * *q0, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[119U]);
  v2q1 = emlrt_update_log_1(2.0 * *q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[120U]);
  v2q2 = emlrt_update_log_1(2.0 * *q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[121U]);
  v2q3 = emlrt_update_log_1(2.0 * *q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[122U]);
  v2q0q2 = emlrt_update_log_1(emlrt_update_log_1(2.0 * *q0,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[124U])
    * *q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[123U]);
  v2q2q3 = emlrt_update_log_1(emlrt_update_log_1(2.0 * *q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[126U])
    * *q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[125U]);
  q0q0 = emlrt_update_log_1(*q0 * *q0, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[127U]);
  q0q1 = emlrt_update_log_1(*q0 * *q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[128U]);
  q0q2 = emlrt_update_log_1(*q0 * *q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[129U]);
  q0q3 = emlrt_update_log_1(*q0 * *q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[130U]);
  q1q1 = emlrt_update_log_1(*q1 * *q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[131U]);
  q1q2 = emlrt_update_log_1(*q1 * *q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[132U]);
  q1q3 = emlrt_update_log_1(*q1 * *q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[133U]);
  q2q2 = emlrt_update_log_1(*q2 * *q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[134U]);
  q2q3 = emlrt_update_log_1(*q2 * *q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[135U]);
  q3q3 = emlrt_update_log_1(*q3 * *q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[136U]);

  /*  Reference direction of Earth's magnetic field */
  hx = emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1
                               (emlrt_update_log_1(mx * q0q0,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[144U])
    - emlrt_update_log_1(v2q0my * *q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[145U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[143U]) + emlrt_update_log_1(v2q0mz *
    *q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[146U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[142U]) + emlrt_update_log_1(mx * q1q1,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[147U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[141U])
                        + emlrt_update_log_1(emlrt_update_log_1(v2q1 * my,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[149U])
    * *q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[148U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[140U]) + emlrt_update_log_1
     (emlrt_update_log_1(v2q1 * mz, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[151U]) * *q3, *(emlrtLocationLoggingDataType
                              (*)[410])&emlrtLocationLoggingDataTables[150U]),
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [139U]) - emlrt_update_log_1(mx * q2q2, *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[152U]), *(emlrtLocationLoggingDataType
                            (*)[410])&emlrtLocationLoggingDataTables[138U]) -
    emlrt_update_log_1(mx * q3q3, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[153U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[137U]);
  hy = emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1
                               (emlrt_update_log_1(v2q0mx * *q3,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[161U])
    + emlrt_update_log_1(my * q0q0, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[162U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[160U]) - emlrt_update_log_1(v2q0mz *
    *q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[163U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[159U]) + emlrt_update_log_1(v2q1mx *
    *q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[164U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[158U]) - emlrt_update_log_1(my * q1q1,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[165U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[157U]) +
     emlrt_update_log_1(my * q2q2, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[166U]),
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [156U]) + emlrt_update_log_1(emlrt_update_log_1(v2q2 * mz,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[168U])
    * *q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[167U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[155U]) - emlrt_update_log_1(my * q3q3,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[169U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[154U]);
  v2q0mz = emlrt_update_log_1(emlrt_update_log_1(hx * hx,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[172U])
    + emlrt_update_log_1(hy * hy, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[173U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[171U]);
  b_st.site = &j_emlrtRSI;
  if (v2q0mz < 0.0) {
    c_st.site = &i_emlrtRSI;
    eml_error(&c_st);
  }

  hy = emlrt_update_log_1(muDoubleScalarSqrt(v2q0mz),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[170U]);
  v2q0my = emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1
                                   (emlrt_update_log_1(-v2q0mx * *q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[181U])
    + emlrt_update_log_1(v2q0my * *q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[182U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[180U]) + emlrt_update_log_1(mz * q0q0,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[183U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[179U])
    + emlrt_update_log_1(v2q1mx * *q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[184U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[178U]) - emlrt_update_log_1(mz * q1q1,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[185U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[177U]) +
     emlrt_update_log_1(emlrt_update_log_1(v2q2 * my,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[187U])
                        * *q3, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[186U]),
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [176U]) - emlrt_update_log_1(mz * q2q2, *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[188U]), *(emlrtLocationLoggingDataType
                                (*)[410])&emlrtLocationLoggingDataTables[175U])
    + emlrt_update_log_1(mz * q3q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[189U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[174U]);
  v2q0mz = emlrt_update_log_1(2.0 * hy, *(emlrtLocationLoggingDataType (*)[410])
    &emlrtLocationLoggingDataTables[190U]);
  v2q0mx = emlrt_update_log_1(2.0 * v2q0my, *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[191U]);

  /*  Gradient decent algorithm corrective step */
  q0q0 = emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(-v2q2 * emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(2.0 * q1q3,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[199U])
                        - v2q0q2, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[198U]) - ax,
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [197U]), *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[196U]) + emlrt_update_log_1(v2q1 *
    emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(2.0 * q0q1,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[203U])
    + v2q2q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[202U]) - ay, *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[201U]), *(emlrtLocationLoggingDataType
                                 (*)[410])&emlrtLocationLoggingDataTables[200U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[195U]) -
     emlrt_update_log_1(emlrt_update_log_1(v2q0my * *q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[205U])
                        * emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(hy * emlrt_update_log_1(emlrt_update_log_1(0.5 - q2q2,
                                    *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[210U]) - q3q3, *(emlrtLocationLoggingDataType
                                    (*)[410])&emlrtLocationLoggingDataTables
    [209U]), *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[208U]) +
     emlrt_update_log_1(v2q0my * emlrt_update_log_1(q1q3 - q0q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[212U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[211U]),
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [207U]) - mx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[206U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[204U]), *(emlrtLocationLoggingDataType
                               (*)[410])&emlrtLocationLoggingDataTables[194U]) +
    emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(-hy * *q3,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[215U])
    + emlrt_update_log_1(v2q0my * *q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[216U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[214U]) * emlrt_update_log_1
                       (emlrt_update_log_1(emlrt_update_log_1(hy *
    emlrt_update_log_1(q1q2 - q0q3, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[220U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[219U])
    + emlrt_update_log_1(v2q0my * emlrt_update_log_1(q0q1 + q2q3,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[222U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[221U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[218U])
                        - my, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[217U]),
                       *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[213U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[193U])
    + emlrt_update_log_1(emlrt_update_log_1(hy * *q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[224U])
    * emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(hy *
    emlrt_update_log_1(q0q2 + q1q3, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[228U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[227U])
    + emlrt_update_log_1(v2q0my * emlrt_update_log_1(emlrt_update_log_1(0.5 -
    q1q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[231U]) - q2q2, *(emlrtLocationLoggingDataType
                                  (*)[410])&emlrtLocationLoggingDataTables[230U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[229U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[226U])
    - mz, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[225U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[223U]), *(emlrtLocationLoggingDataType
                             (*)[410])&emlrtLocationLoggingDataTables[192U]);
  s1 = emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(v2q3 *
    emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(2.0 * q1q3,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[240U])
    - v2q0q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[239U]) - ax, *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[238U]), *(emlrtLocationLoggingDataType
                                (*)[410])&emlrtLocationLoggingDataTables[237U])
    + emlrt_update_log_1(v2q0 * emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(2.0 * q0q1, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[244U]) + v2q2q3,
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [243U]) - ay, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[242U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[241U]), *(emlrtLocationLoggingDataType
                               (*)[410])&emlrtLocationLoggingDataTables[236U]) -
                        emlrt_update_log_1(emlrt_update_log_1(4.0 * *q1,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[246U])
    * emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(1.0 -
    emlrt_update_log_1(2.0 * q1q1, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[250U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[249U])
    - emlrt_update_log_1(2.0 * q2q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[251U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[248U]) - az,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[247U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[245U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[235U]) +
     emlrt_update_log_1(emlrt_update_log_1(v2q0my * *q3,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[253U])
                        * emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(hy * emlrt_update_log_1(emlrt_update_log_1(0.5 - q2q2,
                                  *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[258U]) - q3q3, *(emlrtLocationLoggingDataType
                                  (*)[410])&emlrtLocationLoggingDataTables[257U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[256U]) +
     emlrt_update_log_1(v2q0my * emlrt_update_log_1(q1q3 - q0q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[260U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[259U]),
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [255U]) - mx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[254U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[252U]), *(emlrtLocationLoggingDataType
                             (*)[410])&emlrtLocationLoggingDataTables[234U]) +
    emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(hy * *q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[263U])
    + emlrt_update_log_1(v2q0my * *q0, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[264U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[262U]) * emlrt_update_log_1
                       (emlrt_update_log_1(emlrt_update_log_1(hy *
    emlrt_update_log_1(q1q2 - q0q3, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[268U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[267U])
    + emlrt_update_log_1(v2q0my * emlrt_update_log_1(q0q1 + q2q3,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[270U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[269U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[266U])
                        - my, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[265U]),
                       *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[261U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[233U])
    + emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(hy * *q3,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[273U])
    - emlrt_update_log_1(v2q0mx * *q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[274U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[272U]) * emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(hy * emlrt_update_log_1(q0q2 + q1q3, *
                               (emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[278U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[277U]) + emlrt_update_log_1(v2q0my *
    emlrt_update_log_1(emlrt_update_log_1(0.5 - q1q1,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[281U])
                       - q2q2, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[280U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[279U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[276U]) - mz,
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [275U]), *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[271U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[232U]);
  v2q1mx = emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(-v2q0 *
    emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(2.0 * q1q3,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[290U])
    - v2q0q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[289U]) - ax, *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[288U]), *(emlrtLocationLoggingDataType
                                    (*)[410])&emlrtLocationLoggingDataTables
    [287U]) + emlrt_update_log_1(v2q3 * emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(2.0 * q0q1, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[294U]) + v2q2q3,
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [293U]) - ay, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[292U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[291U]), *(emlrtLocationLoggingDataType
                                   (*)[410])&emlrtLocationLoggingDataTables[286U])
                        - emlrt_update_log_1(emlrt_update_log_1(4.0 * *q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[296U])
    * emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(1.0 -
    emlrt_update_log_1(2.0 * q1q1, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[300U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[299U])
    - emlrt_update_log_1(2.0 * q2q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[301U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[298U]) - az,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[297U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[295U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[285U]) +
     emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(-v2q0mz * *q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[304U])
    - emlrt_update_log_1(v2q0my * *q0, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[305U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[303U]) * emlrt_update_log_1
                        (emlrt_update_log_1(emlrt_update_log_1(hy *
    emlrt_update_log_1(emlrt_update_log_1(0.5 - q2q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[310U])
                       - q3q3, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[309U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[308U])
    + emlrt_update_log_1(v2q0my * emlrt_update_log_1(q1q3 - q0q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[312U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[311U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[307U])
    - mx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[306U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[302U]), *(emlrtLocationLoggingDataType
                                 (*)[410])&emlrtLocationLoggingDataTables[284U])
    + emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(hy * *q1,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[315U])
    + emlrt_update_log_1(v2q0my * *q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[316U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[314U]) * emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(hy * emlrt_update_log_1(q1q2 - q0q3, *
                                    (emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[320U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[319U]) + emlrt_update_log_1(v2q0my *
    emlrt_update_log_1(q0q1 + q2q3, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[322U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[321U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[318U]) - my,
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [317U]), *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[313U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[283U]) + emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(hy * *q0,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[325U])
                        - emlrt_update_log_1(v2q0mx * *q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[326U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[324U]) *
     emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(hy *
    emlrt_update_log_1(q0q2 + q1q3, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[330U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[329U])
    + emlrt_update_log_1(v2q0my * emlrt_update_log_1(emlrt_update_log_1(0.5 -
    q1q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[333U]) - q2q2, *(emlrtLocationLoggingDataType
                                    (*)[410])&emlrtLocationLoggingDataTables
    [332U]), *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[331U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[328U]) - mz,
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[327U]),
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [323U]), *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[282U]);
  v2q0mz = emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(v2q1 * emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(2.0 * q1q3,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[341U])
                        - v2q0q2, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[340U]) - ax,
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [339U]), *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[338U]) + emlrt_update_log_1(v2q2 *
    emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(2.0 * q0q1,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[345U])
    + v2q2q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[344U]) - ay, *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[343U]), *(emlrtLocationLoggingDataType
                                   (*)[410])&emlrtLocationLoggingDataTables[342U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[337U]) +
     emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(-v2q0mz * *q3,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[348U])
    + emlrt_update_log_1(v2q0my * *q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[349U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[347U]) * emlrt_update_log_1
                        (emlrt_update_log_1(emlrt_update_log_1(hy *
    emlrt_update_log_1(emlrt_update_log_1(0.5 - q2q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[354U])
                       - q3q3, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[353U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[352U])
    + emlrt_update_log_1(v2q0my * emlrt_update_log_1(q1q3 - q0q2,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[356U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[355U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[351U])
    - mx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[350U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[346U]), *(emlrtLocationLoggingDataType
                                 (*)[410])&emlrtLocationLoggingDataTables[336U])
    + emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(-hy * *q0,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[359U])
    + emlrt_update_log_1(v2q0my * *q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[360U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[358U]) * emlrt_update_log_1
    (emlrt_update_log_1(emlrt_update_log_1(hy * emlrt_update_log_1(q1q2 - q0q3, *
                                    (emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[364U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[363U]) + emlrt_update_log_1(v2q0my *
    emlrt_update_log_1(q0q1 + q2q3, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[366U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[365U]),
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[362U]) - my,
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [361U]), *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[357U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[335U]) + emlrt_update_log_1
    (emlrt_update_log_1(hy * *q1, *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[368U]) *
     emlrt_update_log_1(emlrt_update_log_1(emlrt_update_log_1(hy *
    emlrt_update_log_1(q0q2 + q1q3, *(emlrtLocationLoggingDataType (*)[410])&
                       emlrtLocationLoggingDataTables[372U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[371U])
    + emlrt_update_log_1(v2q0my * emlrt_update_log_1(emlrt_update_log_1(0.5 -
    q1q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[375U]) - q2q2, *(emlrtLocationLoggingDataType
                                    (*)[410])&emlrtLocationLoggingDataTables
    [374U]), *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[373U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[370U]) - mz,
                        *(emlrtLocationLoggingDataType (*)[410])&
                        emlrtLocationLoggingDataTables[369U]),
     *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables
     [367U]), *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[334U]);
  q0q0 = emlrt_update_log_1(q0q0, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[33U]);
  s1 = emlrt_update_log_1(s1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[34U]);
  v2q1mx = emlrt_update_log_1(v2q1mx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[35U]);
  v2q0mz = emlrt_update_log_1(v2q0mz, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[36U]);
  st.site = &e_emlrtRSI;
  Madgwick_normalize(&st, &q0q0, &s1, &v2q1mx, &v2q0mz);
  q0q0 = emlrt_update_log_1(q0q0, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[37U]);
  s1 = emlrt_update_log_1(s1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[38U]);
  v2q1mx = emlrt_update_log_1(v2q1mx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[39U]);
  v2q0mz = emlrt_update_log_1(v2q0mz, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[40U]);
  st.site = &f_emlrtRSI;

  /* logging input variable 'q0' for function 'Madgwick_update' */
  emlrt_update_log_1(*q0, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[376U]);

  /* logging input variable 'q1' for function 'Madgwick_update' */
  emlrt_update_log_1(*q1, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[377U]);

  /* logging input variable 'q2' for function 'Madgwick_update' */
  emlrt_update_log_1(*q2, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[378U]);

  /* logging input variable 'q3' for function 'Madgwick_update' */
  emlrt_update_log_1(*q3, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[379U]);

  /* logging input variable 'qDot1' for function 'Madgwick_update' */
  emlrt_update_log_1(qDot1, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[380U]);

  /* logging input variable 'qDot2' for function 'Madgwick_update' */
  emlrt_update_log_1(qDot2, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[381U]);

  /* logging input variable 'qDot3' for function 'Madgwick_update' */
  emlrt_update_log_1(qDot3, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[382U]);

  /* logging input variable 'qDot4' for function 'Madgwick_update' */
  emlrt_update_log_1(qDot4, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[383U]);

  /* logging input variable 's0' for function 'Madgwick_update' */
  emlrt_update_log_1(q0q0, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[384U]);

  /* logging input variable 's1' for function 'Madgwick_update' */
  emlrt_update_log_1(s1, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[385U]);

  /* logging input variable 's2' for function 'Madgwick_update' */
  emlrt_update_log_1(v2q1mx, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[386U]);

  /* logging input variable 's3' for function 'Madgwick_update' */
  emlrt_update_log_1(v2q0mz, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[387U]);

  /* logging input variable 'beta' for function 'Madgwick_update' */
  emlrt_update_log_1(0.1, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[388U]);

  /* logging input variable 'sampleTime' for function 'Madgwick_update' */
  emlrt_update_log_1(0.001953125, *(emlrtLocationLoggingDataType (*)[410])&
                     emlrtLocationLoggingDataTables[389U]);
  hy = emlrt_update_log_1(*q3, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[393U]);
  v2q0mx = emlrt_update_log_1(*q2, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[392U]);
  hx = emlrt_update_log_1(*q1, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[391U]);
  v2q0my = emlrt_update_log_1(*q0, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[390U]);
  covrtLogFcn(&gCoverageLoggingInstance, (uint32_T)4, 0);
  covrtLogBasicBlock(&gCoverageLoggingInstance, (uint32_T)4, 0);

  /*  Apply feedback step */
  qDot1 = emlrt_update_log_1(qDot1 - emlrt_update_log_1(0.1 * q0q0,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[395U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[394U]);
  qDot2 = emlrt_update_log_1(qDot2 - emlrt_update_log_1(0.1 * s1,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[397U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[396U]);
  qDot3 = emlrt_update_log_1(qDot3 - emlrt_update_log_1(0.1 * v2q1mx,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[399U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[398U]);
  qDot4 = emlrt_update_log_1(qDot4 - emlrt_update_log_1(0.1 * v2q0mz,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[401U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[400U]);

  /*  Integrate rate of change of quaternion to yield quaternion */
  v2q0my = emlrt_update_log_1(v2q0my + emlrt_update_log_1(qDot1 * 0.001953125,
                               *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[403U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[402U]);
  hx = emlrt_update_log_1(hx + emlrt_update_log_1(qDot2 * 0.001953125,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[405U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[404U]);
  v2q0mx = emlrt_update_log_1(v2q0mx + emlrt_update_log_1(qDot3 * 0.001953125,
                               *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[407U]), *(emlrtLocationLoggingDataType (*)
    [410])&emlrtLocationLoggingDataTables[406U]);
  hy = emlrt_update_log_1(hy + emlrt_update_log_1(qDot4 * 0.001953125,
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[409U]),
    *(emlrtLocationLoggingDataType (*)[410])&emlrtLocationLoggingDataTables[408U]);
  *q0 = emlrt_update_log_1(v2q0my, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[41U]);
  *q1 = emlrt_update_log_1(hx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[42U]);
  *q2 = emlrt_update_log_1(v2q0mx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[43U]);
  *q3 = emlrt_update_log_1(hy, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[44U]);
  v2q0my = *q0;
  hx = *q1;
  v2q0mx = *q2;
  hy = *q3;
  st.site = &g_emlrtRSI;
  Madgwick_normalize(&st, &v2q0my, &hx, &v2q0mx, &hy);
  *q0 = emlrt_update_log_1(v2q0my, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[45U]);
  *q1 = emlrt_update_log_1(hx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[46U]);
  *q2 = emlrt_update_log_1(v2q0mx, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[47U]);
  *q3 = emlrt_update_log_1(hy, *(emlrtLocationLoggingDataType (*)[410])&
    emlrtLocationLoggingDataTables[48U]);
}

/* End of code generation (Madgwick_segments.c) */
