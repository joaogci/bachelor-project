clear
close

% A simple script that converts the normalization factor from .mat to .txt
% João Inácio, Oct. 7, 2020


L_vals = [4, 8, 16, 36, 64, 144, 256, 512, 1024];

for i = 1:length(L_vals)
    L = L_vals(i);
    
    load("norm_factor_Ising_Natm_" + L + ".mat")
    
    writematrix(norm_factor, "norm_factor_Ising_Natm_" + L + ".txt")
end
