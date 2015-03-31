
% % quaternion of sensor frame relative to auxiliary frame
q0 = 1.0;
q1 = 0.0;
q2 = 0.0;
q3 = 0.0;

% set the uniform distribution range [a b] over which the q's will be drawn
a1 = 0;
b1 = 1;

a2 = -2000/180*pi;
b2 =  2000/180*pi;

N=1000;
for i=1:N
   
    %-------------------------------------------------
    % Create random input values that span [a1 b1]
    %-------------------------------------------------
    q0 = a1 + (b1-a1).*rand(1,1);
    q1 = a1 + (b1-a1).*rand(1,1);
    q2 = a1 + (b1-a1).*rand(1,1);
    q3 = a1 + (b1-a1).*rand(1,1);
    
    %-------------------------------------------------
    % Create random input values that span [0 1]
    %-------------------------------------------------
    ax = rand(1,1);
    ay = rand(1,1);
    az = rand(1,1);
    
    %-------------------------------------------------
    % Create random input values that span [0 1]
    %-------------------------------------------------
    mx = rand(1,1);
    my = rand(1,1);
    mz = rand(1,1);
    
    %-------------------------------------------------
    % Drive the function with the random input values
    %-------------------------------------------------
    [s0, s1, s2, s3] = Madgwick_correction(q0, q1, q2, q3, ax, ay, az, mx, my, mz);
    
end

    
 