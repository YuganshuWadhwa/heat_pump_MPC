% Connect to OPC Server
da = opcda('localhost', 'Matrikon.OPC.Simulation.1');
connect(da);

% Create Group
grp = addgroup(da, 'DemoGroup');

%Add Tags
ItmList = {'MPC_Heat_Pump.Compressor_Speed_Op, MPC_Heat_Pump.'};
itm = additem(grp, ItmList);

% Retrieve Data
N=10;
for i=1:N
data = read(grp);
opcdata(i) = data.Value;
pause(2)
end

%Clean Up
disconnect(da)
delete(da)

%Present Data
plot(opcdata)