%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                          %
%       Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4        %
%                                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [q0,q1,q2,q3] = Madgwick_update_wrapper_fixpt(q0,q1,q2,q3,qDot1,qDot2,qDot3,qDot4,s0,s1,s2,s3,beta,sampleTime)
    fm = fimath( 'RoundingMethod', 'Floor', 'OverflowAction', 'Wrap', 'ProductMode', 'FullPrecision', 'MaxProductWordLength', 128, 'SumMode', 'FullPrecision', 'MaxSumWordLength', 128 );
    q0_in = fi( q0, 1, 14, 12, fm );
    q1_in = fi( q1, 1, 14, 12, fm );
    q2_in = fi( q2, 1, 14, 12, fm );
    q3_in = fi( q3, 1, 14, 12, fm );
    qDot1_in = fi( qDot1, 1, 14, 7, fm );
    qDot2_in = fi( qDot2, 1, 14, 7, fm );
    qDot3_in = fi( qDot3, 1, 14, 7, fm );
    qDot4_in = fi( qDot4, 1, 14, 7, fm );
    s0_in = fi( s0, 0, 14, 14, fm );
    s1_in = fi( s1, 0, 14, 14, fm );
    s2_in = fi( s2, 0, 14, 14, fm );
    s3_in = fi( s3, 0, 14, 14, fm );
    beta_in = fi( beta, 0, 14, 17, fm );
    sampleTime_in = fi( sampleTime, 0, 14, 22, fm );
    [q0_out,q1_out,q2_out,q3_out] = Madgwick_update_fixpt( q0_in, q1_in, q2_in, q3_in, qDot1_in, qDot2_in, qDot3_in, qDot4_in, s0_in, s1_in, s2_in, s3_in, beta_in, sampleTime_in );
    q0 = double( q0_out );
    q1 = double( q1_out );
    q2 = double( q2_out );
    q3 = double( q3_out );
end
