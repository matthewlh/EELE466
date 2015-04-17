
% set the uniform distribution range [a b] over which the q's will be drawn
a1 = 0;
b1 = 1;
% set the uniform distribution range [a b] over which the g's will be drawn
% Note, the LSM9DS0 can have a setting with full scale ±2000 dps =
% 2000/180*pi rad/s
a2 = -2000/180*pi;
b2 =  2000/180*pi;

% set the uniform distribution range [a b] over which the a's will be drawn
% Note, the LSM9DS0 can have a setting with full scale ±16g
a3 = -16;
b3 = 16;

% set the uniform distribution range [a b] over which the a's will be drawn
% Note, the LSM9DS0 can have a setting with full scale ±16g
a4 = -12;
b4 = 12;

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
    % Create random input values that span [a2 b2]
    %-------------------------------------------------
    gx = a2 + (b2-a2).*rand(1,1);
    gy = a2 + (b2-a2).*rand(1,1);
    gz = a2 + (b2-a2).*rand(1,1);
    
    %-------------------------------------------------
    % Create random input values that span [a3 b3]
    %-------------------------------------------------
    ax = a3 + (b3-a3).*rand(1,1);
    ay = a3 + (b3-a3).*rand(1,1);
    az = a3 + (b3-a3).*rand(1,1);
    
    %-------------------------------------------------
    % Create random input values that span [a4 b4]
    %-------------------------------------------------
    mx = a4 + (b4-a4).*rand(1,1);
    my = a4 + (b4-a4).*rand(1,1);
    mz = a4 + (b4-a4).*rand(1,1);
    
    %-----------------------------------------------------
    % Drive the HDL function with the random input values
    %-----------------------------------------------------
    [hdl_q0, hdl_q1, hdl_q2, hdl_q3] = Madgwick_segments(q0, q1, q2, q3, gx, gy, gz, ax, ay, az, mx, my, mz);
    
    %-----------------------------------------------------------------
    % Drive the Original MATLab function with the random input values
    %-----------------------------------------------------------------
    [matlab_q0, matlab_q1, matlab_q2, matlab_q3] = Madgwick_segments(q0, q1, q2, q3, gx, gy, gz, ax, ay, az, mx, my, mz);
    
end

    
 