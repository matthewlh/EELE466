/*
 * Madgwick_segments_initialize.c
 *
 * Code generation for function 'Madgwick_segments_initialize'
 *
 */

/* Include files */
#include "rt_nonfinite.h"
#include "Madgwick_segments.h"
#include "Madgwick_segments_initialize.h"

/* Variable Definitions */
static const volatile char_T *emlrtBreakCheckR2012bFlagVar;

/* Function Declarations */
static void Madgwick_segments_once(void);

/* Function Definitions */
static void Madgwick_segments_once(void)
{
  /* Allocate instance data */
  covrtAllocateInstanceData(&gCoverageLoggingInstance);

  /* Initialize Coverage Information */
  covrtScriptInit(&gCoverageLoggingInstance,
                  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_segments.m",
                  0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0);

  /* Initialize Function Information */
  covrtFcnInit(&gCoverageLoggingInstance, 0, 0, "Madgwick_segments", 549, -1,
               1377);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(&gCoverageLoggingInstance, 0, 0, 648, -1, 1371);

  /* Initialize If Information */
  /* Initialize MCDC Information */
  /* Initialize For Information */
  /* Initialize While Information */
  /* Initialize Switch Information */
  /* Start callback for coverage engine */
  covrtScriptStart(&gCoverageLoggingInstance, 0U);

  /* Allocate instance data */
  covrtAllocateInstanceData(&gCoverageLoggingInstance);

  /* Initialize Coverage Information */
  covrtScriptInit(&gCoverageLoggingInstance,
                  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_qDot.m",
                  1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0);

  /* Initialize Function Information */
  covrtFcnInit(&gCoverageLoggingInstance, 1, 0, "Madgwick_qDot", 0, -1, 312);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(&gCoverageLoggingInstance, 1, 0, 129, -1, 311);

  /* Initialize If Information */
  /* Initialize MCDC Information */
  /* Initialize For Information */
  /* Initialize While Information */
  /* Initialize Switch Information */
  /* Start callback for coverage engine */
  covrtScriptStart(&gCoverageLoggingInstance, 1U);

  /* Allocate instance data */
  covrtAllocateInstanceData(&gCoverageLoggingInstance);

  /* Initialize Coverage Information */
  covrtScriptInit(&gCoverageLoggingInstance,
                  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_normalize.m",
                  2, 1, 2, 1, 0, 0, 0, 0, 0, 0, 0);

  /* Initialize Function Information */
  covrtFcnInit(&gCoverageLoggingInstance, 2, 0, "Madgwick_normalize", 0, -1, 278);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(&gCoverageLoggingInstance, 2, 1, 140, -1, 273);
  covrtBasicBlockInit(&gCoverageLoggingInstance, 2, 0, 64, -1, 114);

  /* Initialize If Information */
  covrtIfInit(&gCoverageLoggingInstance, 2, 0, 117, 135, -1, 278);

  /* Initialize MCDC Information */
  /* Initialize For Information */
  /* Initialize While Information */
  /* Initialize Switch Information */
  /* Start callback for coverage engine */
  covrtScriptStart(&gCoverageLoggingInstance, 2U);

  /* Allocate instance data */
  covrtAllocateInstanceData(&gCoverageLoggingInstance);

  /* Initialize Coverage Information */
  covrtScriptInit(&gCoverageLoggingInstance,
                  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_correction.m",
                  3, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0);

  /* Initialize Function Information */
  covrtFcnInit(&gCoverageLoggingInstance, 3, 0, "Madgwick_correction", 0, -1,
               2503);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(&gCoverageLoggingInstance, 3, 0, 148, -1, 2501);

  /* Initialize If Information */
  /* Initialize MCDC Information */
  /* Initialize For Information */
  /* Initialize While Information */
  /* Initialize Switch Information */
  /* Start callback for coverage engine */
  covrtScriptStart(&gCoverageLoggingInstance, 3U);

  /* Allocate instance data */
  covrtAllocateInstanceData(&gCoverageLoggingInstance);

  /* Initialize Coverage Information */
  covrtScriptInit(&gCoverageLoggingInstance,
                  "C:\\Users\\z68j959\\Documents\\GitHub\\EELE466\\hdl_coder_Madgwick_seqments\\Madgwick_update.m",
                  4, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0);

  /* Initialize Function Information */
  covrtFcnInit(&gCoverageLoggingInstance, 4, 0, "Madgwick_update", 0, -1, 475);

  /* Initialize Basic Block Information */
  covrtBasicBlockInit(&gCoverageLoggingInstance, 4, 0, 153, -1, 474);

  /* Initialize If Information */
  /* Initialize MCDC Information */
  /* Initialize For Information */
  /* Initialize While Information */
  /* Initialize Switch Information */
  /* Start callback for coverage engine */
  covrtScriptStart(&gCoverageLoggingInstance, 4U);
}

void Madgwick_segments_initialize(emlrtContext *aContext)
{
  emlrtStack st = { NULL, NULL, NULL };

  emlrtBreakCheckR2012bFlagVar = emlrtGetBreakCheckFlagAddressR2012b();
  emlrtCreateRootTLS(&emlrtRootTLSGlobal, aContext, NULL, 1);
  st.tls = emlrtRootTLSGlobal;
  emlrtClearAllocCountR2012b(&st, false, 0U, 0);
  emlrtEnterRtStackR2012b(&st);
  if (emlrtFirstTimeR2012b(emlrtRootTLSGlobal)) {
    Madgwick_segments_once();
  }
}

/* End of code generation (Madgwick_segments_initialize.c) */
