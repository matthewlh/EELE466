
% % quaternion of sensor frame relative to auxiliary frame
q0 = 1.0;
q1 = 0.0;
q2 = 0.0;
q3 = 0.0;

% set the uniform distribution range [a b] over which the q's will be drawn
a1 = 0;
b1 = 1;
% set the uniform distribution range [a b] over which the g's will be drawn
% Note, the LSM9DS0 can have a setting with full scale ±2000 dps =
% 2000/180*pi rad/s
a2 = -2000/180*pi;
b2 =  2000/180*pi;


a3 = 0;
b3 = 1;

sampleFreq  = 512.0;		% sample frequency in Hz
sampleTime  = 1/sampleFreq;
betaDef     = 0.1;          % 2 * proportional gain
beta        = betaDef;      % 2 * proportional gain (Kp)

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
    qDot1 = a2 + (b2-a2).*rand(1,1);
    qDot2 = a2 + (b2-a2).*rand(1,1);
    qDot3 = a2 + (b2-a2).*rand(1,1);
    qDot4 = a2 + (b2-a2).*rand(1,1);
    
    %-------------------------------------------------
    % Create random input values that span [a3 b3]
    %-------------------------------------------------
    s0 = a3 + (b3-a3).*rand(1,1);
    s1 = a3 + (b3-a3).*rand(1,1);
    s2 = a3 + (b3-a3).*rand(1,1);
    s3 = a3 + (b3-a3).*rand(1,1);
    
    %-------------------------------------------------
    % Drive the function with the random input values
    %-------------------------------------------------
    [q0, q1, q2, q3]             = Madgwick_update(q0, q1, q2, q3, qDot1, qDot2, qDot3, qDot4, s0, s1, s2, s3, beta, sampleTime);
    
end

    
 