function [ ] = connect_mag03dam( )

	s=config();

    %warning off MATLAB:loadlibrary:TypeNotFound
    %unloadlibrary('M201_SP')
    %loadlibrary('M201_SP.dll','M201_SP.h' , 'mfilename', 'M201_SP_mHeader');
	%unloadlibrary('M201_SP')

    loadlibrary('M201_SP_64bit', 'M201_SP_64bit');

    global global_state;
	if global_state.dryrun ~= 0
		return
	end

	% Connect to serial port
	r = calllib('M201_SP_64bit', 'EX_SetCOMport', s.mag03com - 1);
	if r ~= 1
        error('Could not initialize Mag-03DAM: EX_SetCOMport failed (%d)', r);
    end
end

