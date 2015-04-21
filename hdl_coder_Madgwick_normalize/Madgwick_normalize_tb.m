% set the uniform distribution range [a b] over which the a's will be drawn
% Note, the LSM9DS0 can have a setting with full scale ±16g
a1 = -35;
b1 = 35;

N=1000;
for i=1:N
    
    %-------------------------------------------------
    % Create random input values that span [a1 b1]
    %-------------------------------------------------
    gx = a1 + (b1-a1).*rand(1,1);
    gy = a1 + (b1-a1).*rand(1,1);
    gz = a1 + (b1-a1).*rand(1,1);
    
    %-------------------------------------------------
    % Drive the function with the random input values
    %-------------------------------------------------
    [gx, gy, gz, gw] = Madgwick_normalize(gx, gy, gz, 0 , 0);
    
end

    
 