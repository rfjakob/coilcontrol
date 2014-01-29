function [methodinfo,structs,enuminfo,ThunkLibName]=M201_SP_mHeader
%M201_SP_MHEADER Create structures to define interfaces found in 'M201_SP'.

%This function was generated by loadlibrary.m parser version 1.1.6.36 on Mon Aug 27 18:45:27 2012
%perl options:'M201_SP.i -outfile=M201_SP_mHeader.m'
ival={cell(1,0)}; % change 0 to the actual number of functions to preallocate the data.
structs=[];enuminfo=[];fcnNum=1;
fcns=struct('name',ival,'calltype',ival,'LHS',ival,'RHS',ival,'alias',ival);
ThunkLibName=[];
% unsigned char EX_SetCOMport ( unsigned char COM_Num ); 
fcns.name{fcnNum}='EX_SetCOMport'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='uint8'; fcns.RHS{fcnNum}={'uint8'};fcnNum=fcnNum+1;
% unsigned char EX_InitDev ( void ); 
fcns.name{fcnNum}='EX_InitDev'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='uint8'; fcns.RHS{fcnNum}=[];fcnNum=fcnNum+1;
% unsigned char EX_SetPolledModeChan ( unsigned char bMainChan , unsigned char bSubChan ); 
fcns.name{fcnNum}='EX_SetPolledModeChan'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='uint8'; fcns.RHS{fcnNum}={'uint8', 'uint8'};fcnNum=fcnNum+1;
% unsigned char EX_GetOneConversion ( double * dblMilliVolts ); 
fcns.name{fcnNum}='EX_GetOneConversion'; fcns.calltype{fcnNum}='stdcall'; fcns.LHS{fcnNum}='uint8'; fcns.RHS{fcnNum}={'doublePtr'};fcnNum=fcnNum+1;
methodinfo=fcns;