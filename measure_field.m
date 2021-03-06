function [ b_coilcoords ] = measure_field( )
%measure_field Measure the current field flux density B using bartington mag03dam

	global global_state;
	if global_state.dryrun~=0
		b_coilcoords=[0 0 0]*1e-6;
		return
	end

	for a=[1 2 3]
        
        r = calllib('M201_SP_64bit', 'EX_SetPolledModeChan', a - 1, 0);
		if r ~= 1
            error('Could not read from Mag-03DAM: EX_SetPolledModeChan failed');
        end
        
		% http://lawsonlabs.com/Download/Manuals-Drivers/Model201/M201_SP/#MatLab Code Examples
		volts = 999;
		volts_pntr = libpointer('doublePtr', volts);
		r = calllib('M201_SP_64bit','EX_GetOneConversion', volts_pntr);
        if r ~= 1
            error('Could not read from Mag-03DAM: EX_GetOneConversion failed (%d)', r);
        end
		b(a) = volts_pntr.Value;
    end
    
    % Values are in units of 0.1uT
    b=b*0.1e-6;

    % If the magnetometer is not aligned with the axes, swap the components
    % here:
    b_coilcoords(1)=b(1);
    b_coilcoords(2)=b(2);
    b_coilcoords(3)=b(3);
	
end

