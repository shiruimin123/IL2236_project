% capacity1=linspace(1,22,22)*0.001*20*4;
% dor =[47.4236 49.1242 50.9077 52.7315 54.583 57.3413 60.0628 62.8572  64.7565 72.3846  73.4773 ...
%     76.4308  83.5514 87.0083  95.6554  107.303  121.862 140.536 162.396  236.459 305.206 475.72 ]
% hold on 
% plot(capacity1,dor,'-o',"LineWidth",1.5)
% capacity1=linspace(1,22,22)*0.0035*20;
% romm = []
data_dor = load('results_dor.txt');
capacity_dor = data_dor(:,1)*20*2;
latency_dor =  data_dor(:,2);
data_romm = load('results_romm.txt');
capacity_romm = data_romm(:,1)*20*2;
latency_romm =  data_romm(:,2);
data_mad = load('results_mad.txt');
capacity_mad = data_mad(:,1)*20*2;
latency_mad =  data_mad(:,2);
data_val = load('results_val.txt');
capacity_val = data_val(:,1)*20*2;
latency_val =  data_val(:,2);
hold on
plot(capacity_dor,latency_dor,'.-',"LineWidth",1.5,"MarkerSize",12)
plot(capacity_romm,latency_romm,'.-',"LineWidth",1.5,"MarkerSize",12)
plot(capacity_mad,latency_mad,'.-',"LineWidth",1.5,"MarkerSize",12)
plot(capacity_val,latency_val,'.-',"LineWidth",1.5,"MarkerSize",12)
legend("DOR","ROMM", "MAD","VAL")
xlabel("offered traffic(fraction of capacity)")
ylabel("Avg. delay (cycles)")
ylim([0 400])