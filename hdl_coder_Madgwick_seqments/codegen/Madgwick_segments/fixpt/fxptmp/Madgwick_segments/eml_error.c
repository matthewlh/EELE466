/*
 * eml_error.c
 *
 * Code generation for function 'eml_error'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Madgwick_segments.h"
#include "eml_error.h"

/* Variable Definitions */
static emlrtMCInfo emlrtMCI = { 20, 34, "eml_error",
  "C:\\MATLAB\\R2014a\\toolbox\\eml\\lib\\matlab\\eml\\eml_error.m" };

static emlrtRSInfo k_emlrtRSI = { 20, "eml_error",
  "C:\\MATLAB\\R2014a\\toolbox\\eml\\lib\\matlab\\eml\\eml_error.m" };

/* Function Declarations */
static void error(const emlrtStack *sp, const mxArray *b, emlrtMCInfo *location);
static const mxArray *message(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, emlrtMCInfo *location);

/* Function Definitions */
static void error(const emlrtStack *sp, const mxArray *b, emlrtMCInfo *location)
{
  const mxArray *pArray;
  pArray = b;
  emlrtCallMATLABR2012b(sp, 0, NULL, 1, &pArray, "error", true, location);
}

static const mxArray *message(const emlrtStack *sp, const mxArray *b, const
  mxArray *c, emlrtMCInfo *location)
{
  const mxArray *pArrays[2];
  const mxArray *m2;
  pArrays[0] = b;
  pArrays[1] = c;
  return emlrtCallMATLABR2012b(sp, 1, &m2, 2, pArrays, "message", true, location);
}

void eml_error(const emlrtStack *sp)
{
  const mxArray *y;
  static const int32_T iv0[2] = { 1, 30 };

  const mxArray *m0;
  char_T cv0[30];
  int32_T i;
  static const char_T cv1[30] = { 'C', 'o', 'd', 'e', 'r', ':', 't', 'o', 'o',
    'l', 'b', 'o', 'x', ':', 'E', 'l', 'F', 'u', 'n', 'D', 'o', 'm', 'a', 'i',
    'n', 'E', 'r', 'r', 'o', 'r' };

  const mxArray *b_y;
  static const int32_T iv1[2] = { 1, 4 };

  char_T cv2[4];
  static const char_T cv3[4] = { 's', 'q', 'r', 't' };

  emlrtStack st;
  st.prev = sp;
  st.tls = sp->tls;
  y = NULL;
  m0 = emlrtCreateCharArray(2, iv0);
  for (i = 0; i < 30; i++) {
    cv0[i] = cv1[i];
  }

  emlrtInitCharArrayR2013a(sp, 30, m0, cv0);
  emlrtAssign(&y, m0);
  b_y = NULL;
  m0 = emlrtCreateCharArray(2, iv1);
  for (i = 0; i < 4; i++) {
    cv2[i] = cv3[i];
  }

  emlrtInitCharArrayR2013a(sp, 4, m0, cv2);
  emlrtAssign(&b_y, m0);
  st.site = &k_emlrtRSI;
  error(&st, message(&st, y, b_y, &emlrtMCI), &emlrtMCI);
}

/* End of code generation (eml_error.c) */
