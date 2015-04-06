/*
 * _coder_Madgwick_segments_mex.c
 *
 * Code generation for function 'Madgwick_segments'
 *
 */

/* Include files */
#include "mex.h"
#include "_coder_Madgwick_segments_api.h"
#include "Madgwick_segments_initialize.h"
#include "Madgwick_segments_terminate.h"

/* Function Declarations */
static void Madgwick_segments_mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[]);

/* Variable Definitions */
emlrtContext emlrtContextGlobal = { true, false, EMLRT_VERSION_INFO, NULL, "Madgwick_segments", NULL, false, {2045744189U,2170104910U,2743257031U,4284093946U}, NULL };
void *emlrtRootTLSGlobal = NULL;

/* Function Definitions */
static void Madgwick_segments_mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
  const mxArray *outputs[4];
  const mxArray *inputs[13];
  int n = 0;
  int nOutputs = (nlhs < 1 ? 1 : nlhs);
  int nInputs = nrhs;
  emlrtStack st = { NULL, NULL, NULL };
  /* Module initialization. */
  Madgwick_segments_initialize(&emlrtContextGlobal);
  st.tls = emlrtRootTLSGlobal;
  /* Check for proper number of arguments. */
  if (nrhs != 13) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:WrongNumberOfInputs", 5, mxINT32_CLASS, 13, mxCHAR_CLASS, 17, "Madgwick_segments");
  } else if (nlhs > 4) {
    emlrtErrMsgIdAndTxt(&st, "EMLRT:runTime:TooManyOutputArguments", 3, mxCHAR_CLASS, 17, "Madgwick_segments");
  }
  /* Temporary copy for mex inputs. */
  for (n = 0; n < nInputs; ++n) {
    inputs[n] = prhs[n];
  }
  /* Call the function. */
  Madgwick_segments_api(inputs, outputs);
  /* Copy over outputs to the caller. */
  for (n = 0; n < nOutputs; ++n) {
    plhs[n] = emlrtReturnArrayR2009a(outputs[n]);
  }
  /* Module finalization. */
  Madgwick_segments_terminate();
}

void Madgwick_segments_atexit_wrapper(void)
{
   Madgwick_segments_atexit();
}

void mexFunction(int nlhs, mxArray *plhs[], int nrhs, const mxArray *prhs[])
{
  /* Initialize the memory manager. */
  mexAtExit(Madgwick_segments_atexit_wrapper);
  /* Dispatch the entry-point. */
  Madgwick_segments_mexFunction(nlhs, plhs, nrhs, prhs);
}
/* End of code generation (_coder_Madgwick_segments_mex.c) */
