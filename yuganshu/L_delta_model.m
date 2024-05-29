meas_data1 = readtable('Tout_M11_st_1m.csv', 'VariableNamingRule', 'preserve');

op_x_1 = meas_data1.op_delta;
pv_y_1 = meas_data1.pv_delta;

pv_meas_1 = meas_data1.("TC Compressor - PV");
op_meas_1 = meas_data1.("TC Compressor - OP");

time_1 = meas_data1.Time;

Ti = 10;

T1 = 10;
V = 10;

% open_system('test_model.slx');