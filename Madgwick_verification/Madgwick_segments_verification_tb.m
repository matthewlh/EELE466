function Madgwick_segments_verification_tb

    %------------------------
    % define constants
    %------------------------
    
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
    
    fixed_word_width     = 24;  % width of input to component
    fixed_point_signed   = 1;  % unsiged = 0, signed = 1;
    fixed_point_fraction = 12;  % fraction width (location of binary point within word) 

    %------------------------------------------------------------
    % Note: it appears that the cosimWizard needs to be re-run if
    % this is moved to a different machine (VHDL needs to be
    % recompile in ModelSim).
    %------------------------------------------------------------

    % HdlCosimulation System Object creation (this Matlab function was created
    % by the cosimWizard).
    Madgwick_hdl = hdlcosim_madgwick_seqments;            

    % Simulate for Nclock rising edges (this will be the length of the
    % simulation)
    num_tests = 1;
    clocks_per_step = 50;

    for i=1:num_tests
        
        %-------------------------------------------------
        % genetate random inputs
        %-------------------------------------------------
        
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


        %-------------------------------------------------
        % convert inputs to fixed point
        %-------------------------------------------------   
        clkenable_fi = fi(1, 0, 1, 0);
        
        q0_fi = fi(q0, fixed_point_signed, fixed_word_width, fixed_point_fraction);
        q1_fi = fi(q1, fixed_point_signed, fixed_word_width, fixed_point_fraction);
        q2_fi = fi(q2, fixed_point_signed, fixed_word_width, fixed_point_fraction);
        q3_fi = fi(q3, fixed_point_signed, fixed_word_width, fixed_point_fraction);
        
        gx_fi = fi(gx, fixed_point_signed, fixed_word_width, fixed_point_fraction);
        gy_fi = fi(gy, fixed_point_signed, fixed_word_width, fixed_point_fraction);
        gz_fi = fi(gz, fixed_point_signed, fixed_word_width, fixed_point_fraction);
        
        ax_fi = fi(ax, fixed_point_signed, fixed_word_width, fixed_point_fraction);
        ay_fi = fi(ay, fixed_point_signed, fixed_word_width, fixed_point_fraction);
        az_fi = fi(az, fixed_point_signed, fixed_word_width, fixed_point_fraction);
        
        mx_fi = fi(mx, fixed_point_signed, fixed_word_width, fixed_point_fraction);
        my_fi = fi(my, fixed_point_signed, fixed_word_width, fixed_point_fraction);
        mz_fi = fi(mz, fixed_point_signed, fixed_word_width, fixed_point_fraction);

        %-----------------------------------------------------------------
        % Push the input(s) into the component using the step function on the
        % system object lzc_hdl
        % If there are multiple I/O, use
        % [out1, out2, out3] = step(lzc_hdl, in1, in2, in3);
        % and understand all I/O data types are fixed-point objects
        % where the inputs can be created by the fi() function.
        %-----------------------------------------------------------------
        for s = 1:clocks_per_step
            [q0_out_fi, q1_out_fi, q2_out_fi, q3_out_fi]            ...
                            = step(Madgwick_hdl, clkenable_fi,      ...
                                    q0_fi, q1_fi, q2_fi, q3_fi,     ...
                                    gx_fi, gy_fi, gz_fi,            ...
                                    ax_fi, ay_fi, az_fi,            ...
                                    mx_fi, my_fi, mz_fi);
        end
        
        %------------------------------------------------------
        % Convert fi to MATLab double
        %------------------------------------------------------
        q0_out_fi = double(q0_out_fi);
        q1_out_fi = double(q1_out_fi);
        q2_out_fi = double(q2_out_fi);
        q3_out_fi = double(q3_out_fi);
        


        %------------------------------------------------------
        % Perfom the comparison with the "true" output 
        %------------------------------------------------------
        [q0_out, q1_out, q2_out, q3_out]                    ...
                            = Madgwick_original_matlab(     ...
                                    q0, q1, q2, q3,         ...
                                    gx, gy, gz,             ...
                                    ax, ay, az,             ...
                                    mx, my, mz);

        
        disp(sprintf('[q0_out_fi, q1_out_fi, q2_out_fi, q3_out_fi]'));
        disp(sprintf('[%04.4f, %04.4f, %04.4f, %04.4f]', q0_out_fi, q1_out_fi, q2_out_fi, q3_out_fi));
        
        disp(sprintf('[q0_out,    q1_out,    q2_out,    q3_out   ]'));
        disp(sprintf('[%04.4f, %04.4f, %04.4f, %04.4f]', q0_out, q1_out, q2_out, q3_out));
        disp(' ');

    end

end
