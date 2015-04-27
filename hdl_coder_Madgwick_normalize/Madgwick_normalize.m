function [ax, ay, az, aw] = Madgwick_normalize(ax, ay, az, aw)

dotproduct = ax * ax + ay * ay + az * az + aw * aw;

if dotproduct ~= 0
   
   rsr_result = RSR(dotproduct);

    ax = ax * rsr_result;
    ay = ay * rsr_result;
    az = az * rsr_result;
    aw = aw * rsr_result;
end