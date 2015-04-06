/*
 * _coder_Madgwick_segments_api.c
 *
 * Code generation for function '_coder_Madgwick_segments_api'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Madgwick_segments.h"
#include "_coder_Madgwick_segments_api.h"

/* Function Declarations */
static real_T b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId);
static real_T c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId);
static real_T emlrt_marshallIn(const emlrtStack *sp, const mxArray *q0, const
  char_T *identifier);
static const mxArray *emlrt_marshallOut(const real_T u);

/* Function Definitions */
static real_T b_emlrt_marshallIn(const emlrtStack *sp, const mxArray *u, const
  emlrtMsgIdentifier *parentId)
{
  real_T y;
  y = c_emlrt_marshallIn(sp, emlrtAlias(u), parentId);
  emlrtDestroyArray(&u);
  return y;
}

static real_T c_emlrt_marshallIn(const emlrtStack *sp, const mxArray *src, const
  emlrtMsgIdentifier *msgId)
{
  real_T ret;
  emlrtCheckBuiltInR2012b(sp, msgId, src, "double", false, 0U, 0);
  ret = *(real_T *)mxGetData(src);
  emlrtDestroyArray(&src);
  return ret;
}

static real_T emlrt_marshallIn(const emlrtStack *sp, const mxArray *q0, const
  char_T *identifier)
{
  real_T y;
  emlrtMsgIdentifier thisId;
  thisId.fIdentifier = identifier;
  thisId.fParent = NULL;
  y = b_emlrt_marshallIn(sp, emlrtAlias(q0), &thisId);
  emlrtDestroyArray(&q0);
  return y;
}

static const mxArray *emlrt_marshallOut(const real_T u)
{
  const mxArray *y;
  const mxArray *m1;
  y = NULL;
  m1 = emlrtCreateDoubleScalar(u);
  emlrtAssign(&y, m1);
  return y;
}

void Madgwick_segments_api(const mxArray * const prhs[13], const mxArray *plhs[4])
{
  real_T q0;
  real_T q1;
  real_T q2;
  real_T q3;
  real_T gx;
  real_T gy;
  real_T gz;
  real_T ax;
  real_T ay;
  real_T az;
  real_T mx;
  real_T my;
  real_T mz;
  emlrtStack st = { NULL, NULL, NULL };

  st.tls = emlrtRootTLSGlobal;

  /* Marshall function inputs */
  q0 = emlrt_marshallIn(&st, emlrtAliasP(prhs[0]), "q0");
  q1 = emlrt_marshallIn(&st, emlrtAliasP(prhs[1]), "q1");
  q2 = emlrt_marshallIn(&st, emlrtAliasP(prhs[2]), "q2");
  q3 = emlrt_marshallIn(&st, emlrtAliasP(prhs[3]), "q3");
  gx = emlrt_marshallIn(&st, emlrtAliasP(prhs[4]), "gx");
  gy = emlrt_marshallIn(&st, emlrtAliasP(prhs[5]), "gy");
  gz = emlrt_marshallIn(&st, emlrtAliasP(prhs[6]), "gz");
  ax = emlrt_marshallIn(&st, emlrtAliasP(prhs[7]), "ax");
  ay = emlrt_marshallIn(&st, emlrtAliasP(prhs[8]), "ay");
  az = emlrt_marshallIn(&st, emlrtAliasP(prhs[9]), "az");
  mx = emlrt_marshallIn(&st, emlrtAliasP(prhs[10]), "mx");
  my = emlrt_marshallIn(&st, emlrtAliasP(prhs[11]), "my");
  mz = emlrt_marshallIn(&st, emlrtAliasP(prhs[12]), "mz");

  /* Invoke the target function */
  Madgwick_segments(&st, &q0, &q1, &q2, &q3, gx, gy, gz, ax, ay, az, mx, my, mz);

  /* Marshall function outputs */
  plhs[0] = emlrt_marshallOut(q0);
  plhs[1] = emlrt_marshallOut(q1);
  plhs[2] = emlrt_marshallOut(q2);
  plhs[3] = emlrt_marshallOut(q3);
}

/* End of code generation (_coder_Madgwick_segments_api.c) */
