webtalk_init -webtalk_dir /home/deniz/lab4/lab4.sim/sim_1/behav/xsim.dir/TrafficLights_behav/webtalk/
webtalk_register_client -client project
webtalk_add_data -client project -key date_generated -value "Mon Nov 28 00:08:02 2022" -context "software_version_and_target_device"
webtalk_add_data -client project -key product_version -value "XSIM v2016.4 (64-bit)" -context "software_version_and_target_device"
webtalk_add_data -client project -key build_version -value "1756540" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_platform -value "LIN64" -context "software_version_and_target_device"
webtalk_add_data -client project -key registration_id -value "" -context "software_version_and_target_device"
webtalk_add_data -client project -key tool_flow -value "xsim_vivado" -context "software_version_and_target_device"
webtalk_add_data -client project -key beta -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key route_design -value "FALSE" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_family -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_device -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_package -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key target_speed -value "not_applicable" -context "software_version_and_target_device"
webtalk_add_data -client project -key random_id -value "88cde59c-33d8-4d6d-96a1-04800725c83e" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_id -value "1164775269fa4cbeb1997aadaf2b39af" -context "software_version_and_target_device"
webtalk_add_data -client project -key project_iteration -value "4" -context "software_version_and_target_device"
webtalk_add_data -client project -key os_name -value "Linuxmint" -context "user_environment"
webtalk_add_data -client project -key os_release -value "Linux Mint 21" -context "user_environment"
webtalk_add_data -client project -key cpu_name -value "Intel(R) Core(TM) i3-10110U CPU @ 2.10GHz" -context "user_environment"
webtalk_add_data -client project -key cpu_speed -value "1522.395 MHz" -context "user_environment"
webtalk_add_data -client project -key total_processors -value "1" -context "user_environment"
webtalk_add_data -client project -key system_ram -value "8.000 GB" -context "user_environment"
webtalk_register_client -client xsim
webtalk_add_data -client xsim -key Command -value "xsim" -context "xsim\\command_line_options"
webtalk_add_data -client xsim -key trace_waveform -value "true" -context "xsim\\usage"
webtalk_add_data -client xsim -key runtime -value "1 us" -context "xsim\\usage"
webtalk_add_data -client xsim -key iteration -value "0" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Time -value "0.02_sec" -context "xsim\\usage"
webtalk_add_data -client xsim -key Simulation_Memory -value "125400_KB" -context "xsim\\usage"
webtalk_transmit -clientid 95915894 -regid "" -xml /home/deniz/lab4/lab4.sim/sim_1/behav/xsim.dir/TrafficLights_behav/webtalk/usage_statistics_ext_xsim.xml -html /home/deniz/lab4/lab4.sim/sim_1/behav/xsim.dir/TrafficLights_behav/webtalk/usage_statistics_ext_xsim.html -wdm /home/deniz/lab4/lab4.sim/sim_1/behav/xsim.dir/TrafficLights_behav/webtalk/usage_statistics_ext_xsim.wdm -intro "<H3>XSIM Usage Report</H3><BR>"
webtalk_terminate
