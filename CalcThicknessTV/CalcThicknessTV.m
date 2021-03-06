function sam = CalcThicknessTV(ref,sam,samB,lower_limit,increment,upper_limit)
%% CalcThicknessTVupdateride ########################################################
% Script that increases speed of workflow by combining processing steps
% for thickness extraction.
%
% Usage: sam = CalcThicknessTV(ref,sam,samB,lower_limit,increment,upper_limit)
% 
% Where: sam = sample dataset
%        ref = reference dataset
%        samB = Guoy phase shift model dataset
%        lower_limit = lower limit of thickness calculation
%        increment = increment of thickness to increase by
%        upper_limit = upper limit of thickness calculation
%
% Author: Calum Towler
% Email: cm14cnat@leeds.ac.uk

%% Revision History
% 03/11/28 Initial commit. It works!

%% Setting B ##############################################################
 sam = structSetB(sam,samB)
%% TV Thickness Extraction ################################################
 [~,TV] = quickTVExt(ref,sam,(lower_limit:increment:upper_limit)*1e-3)
%% Plot Thickness #########################################################
 plot([TV.thickness],([TV.tv].*[TV.thickness]*1e-3))
end 