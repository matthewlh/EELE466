%=====================================================================================================
% Madgwick.m is a direct Matlab port of MadgwickAHRS.c
%=====================================================================================================
%
% sampleFreq	= 512.0;		% sample frequency in Hz
% sampleTime    = 1/sampleFreq;
% betaDef		= 0.1;		% 2 * proportional gain
% beta = betaDef;     % 2 * proportional gain (Kp)
%
% % quaternion of sensor frame relative to auxiliary frame
% q0 = 1.0;
% q1 = 0.0;
% q2 = 0.0;
% q3 = 0.0;
%

function [q0, q1, q2, q3] = Madgwick_segments(q0, q1, q2, q3, gx, gy, gz, ax, ay, az, mx, my, mz)

sampleFreq	= 512.0;		% sample frequency in Hz
sampleTime    = 1/sampleFreq;
betaDef		= 0.1;		% 2 * proportional gain
beta = betaDef;     % 2 * proportional gain (Kp)

[qDot1, qDot2, qDot3, qDot4] = Madgwick_qDot(q0, q1, q2, q3, gx, gy, gz);
[ax, ay, az, unused1]        = Madgwick_normalize(ax, ay, az, 0);
[mx, my, mz, unused1]        = Madgwick_normalize(mx, my, mz, 0);
[s0, s1, s2, s3]             = Madgwick_correction(q0, q1, q2, q3, ax, ay, az, mx, my, mz);
[s0, s1, s2, s3]             = Madgwick_normalize(s0, s1, s2, s3);
[q0, q1, q2, q3]             = Madgwick_update(q0, q1, q2, q3, qDot1, qDot2, qDot3, qDot4, s0, s1, s2, s3, beta, sampleTime);
[q0, q1, q2, q3]             = Madgwick_normalize(q0, q1, q2, q3);




