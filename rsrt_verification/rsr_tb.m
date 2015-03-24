function rsr_tb
      
%------------------------------------------------------------
% Note: it appears that the cosimWizard needs to be re-run if
% this is moved to a different machine (VHDL needs to be
% recompile in ModelSim).
%------------------------------------------------------------

% HdlCosimulation System Object creation (this Matlab function was created
% by the cosimWizard).
rsr_hdl = hdlcosim_rsr;            

% Simulate for Nclock rising edges (this will be the length of the
% simulation)
num_tests = 10;
clocks_per_step = 20;

for i=1:num_tests
    %-----------------------------------------------------------------
    % Create our input vector at each clock edge, which must be a 
    % fixed-point data type.  The word width of the fixed point data type
    % must match the width of the std_logic_vector input.
    %-----------------------------------------------------------------
    fixed_word_width     = 32;  % width of input to component
    fixed_point_signed   = 0;  % unsiged = 0, signed = 1;
    fixed_point_fraction = 16;  % fraction width (location of binary point within word)
    
    fixed_point_value    = rand() * (2^(fixed_word_width -fixed_point_fraction) -1);  % choose a random integer between [1 2^W-1] - Note: can't have a zero input....
    input_vector1 = fi(fixed_point_value, fixed_point_signed, fixed_word_width, fixed_point_fraction); % make the input a fixed point data type
    input_history{i} = input_vector1;  % capture the inputs 
    
    %-----------------------------------------------------------------
    % Push the input(s) into the component using the step function on the
    % system object lzc_hdl
    % If there are multiple I/O, use
    % [out1, out2, out3] = step(lzc_hdl, in1, in2, in3);
    % and understand all I/O data types are fixed-point objects
    % where the inputs can be created by the fi() function.
    %-----------------------------------------------------------------
    for s = 1:clocks_per_step
        output_vector1 = step(rsr_hdl,input_vector1);
    end
    
    %-----------------------------------------------------------------
    % Save the outputs (which are fixed-point objects)
    %-----------------------------------------------------------------
    output_history{i} = output_vector1;  % capture the output
    
    %------------------------------------------------------
    % Perfom the comparison with the "true" output 
    %------------------------------------------------------
    in1 = input_vector1;
    out1 = output_vector1;
    out1 = double(out1) / (2^16);
    dif1 = 1/sqrt(double(in1))  - out1;
    
    percent_diff = 100*dif1 / (1/sqrt(double(in1)));
    
    disp(sprintf('X = %5.6f,\t 1/sqrt(x) = %2.6f,\t Y = %2.6f,\t %% diff = %2.3f', double(in1), 1/sqrt(double(in1)), out1, percent_diff));
    
end




end
