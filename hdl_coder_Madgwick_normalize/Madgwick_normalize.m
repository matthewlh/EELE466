function [ax, ay, az, aw] = Madgwick_normalize(ax, ay, az, aw)

dotproduct = ax * ax + ay * ay + az * az + aw * aw;

if dotproduct ~= 0
    root = sqrt(dotproduct);
    recipNorm = 1 / root;

    ax = ax * recipNorm;
    ay = ay * recipNorm;
    az = az * recipNorm;
    aw = aw * recipNorm;
end