using JGCM

include("HS.jl")

#############################################################
end_day = 1600
spinup_day = 0

physics_params = Dict{String,Float64}("σ_b"=>0.7, "k_f" => 1.0, "k_a" => 1.0/40.0, "k_s" => 1.0/4.0, "ΔT_y" => 60.0, "Δθ_z" => 10.0)
op_man = Atmos_Spectral_Dynamics_Main(physics_params, end_day, spinup_day)
# Finalize_Output!(op_man, "RH50_500_100_final.dat", "RH50_500_100.dat")
# Finalize_Output!(op_man, "HS_front_RH80_PR0_PRRELAX86400_with_w_all_final.dat", "HS_front_RH80_PR0_PRRELAX86400_with_w_all.dat")

# Finalize_Output!(op_man, "RH80_test_f0_final.dat", "RH80_test_f0_all.dat")
Finalize_Output!(op_man, "RH50_PR15_1600day_test_all.dat", "RH50_PR15_1600day_test_final.dat")
# Finalize_Output!(op_man, "test_all.dat", "test_final.dat")

# Finalize_Output!(op_man, "test_with_vor_final.dat", "test_with_vor_all.dat")



# Sigma_Zonal_Mean_Contourf(op_man, "Contourf")

"""
try 6 hour output end_day = 300, spinup = 100
WARNING:
remember to edit initial field before run the model!!!


day0_500: end_day = 500, spinup = 100

day501_1000: end_day = 500, spinup = 0

day1001_1500: end_day = 500, spinup = 0

day1501_2000: end_day = 500, spinup = 0

"""






