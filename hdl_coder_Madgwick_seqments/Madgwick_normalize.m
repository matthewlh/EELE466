function [ax, ay, az, aw] = Madgwick_normalize(ax, ay, az, aw)

dotproduct = ax * ax + ay * ay + az * az + aw * aw;

if dotproduct ~= 0
    recipNorm = 1 / sqrt(dotproduct);

    ax = ax * recipNorm;
    ay = ay * recipNorm;
    az = az * recipNorm;
    aw = aw * recipNorm;
end