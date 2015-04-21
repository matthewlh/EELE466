function [ax, ay, az, aw] = Madgwick_normalize(ax, ay, az, aw, rsr_result)

%dotproduct = ax * ax + ay * ay + az * az + aw * aw;

%if dotproduct ~= 0
%    root = sqrt(dotproduct);
%    recipNorm = 1 / root;

    ax = ax * rsr_result;
    ay = ay * rsr_result;
    az = az * rsr_result;
    aw = aw * rsr_result;
end