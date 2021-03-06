%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                          %
%       Generated by MATLAB 8.3, MATLAB Coder 2.6 and HDL Coder 3.4        %
%                                                                          %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ax,ay,az,aw] = Madgwick_normalize_wrapper_fixpt(ax,ay,az,aw)
    fm = fimath( 'RoundingMethod', 'Floor', 'OverflowAction', 'Wrap', 'ProductMode', 'FullPrecision', 'MaxProductWordLength', 128, 'SumMode', 'FullPrecision', 'MaxSumWordLength', 128 );
    ax_in = fi( ax, 1, 24, 12, fm );
    ay_in = fi( ay, 1, 24, 12, fm );
    az_in = fi( az, 1, 24, 12, fm );
    aw_in = fi( aw, 1, 24, 12, fm );
    [ax_out,ay_out,az_out,aw_out] = Madgwick_normalize_fixpt( ax_in, ay_in, az_in, aw_in );
    ax = double( ax_out );
    ay = double( ay_out );
    az = double( az_out );
    aw = double( aw_out );
end
