function sam = CalcThicknessTV(ref,sam,samB,lower_limit,increment,upper_limit)
%% CalcThicknessTV ########################################################
% Script to calculate thickness based on total variance functions.

%% Revision History
% 03/11/28 Initial commit. Function runs but destroys original data.

%% Setting B ##############################################################
% sam = structSetB(sam,samB)
%% TV Thickness Extraction ################################################
% [~,TV]=quickTVExt(ref,sam,(lower_limit:increment:upperlimit)*1e-3)
%% Plot Thickness #########################################################
% plot([TV.thickness],([TV.tv].*[TV.thickness]1e-3))
end 