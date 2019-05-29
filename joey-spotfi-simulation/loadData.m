clear;
clc;
plot_Pmusic("./data/2m-30.dat")
% antenna_distance = 0.06;
% frequency = 5.825 * 10^9;
% sub_freq_delta = (20 * 10^6) /30;
% 
% csi_trace = readfile("./data/2m-60-2.dat");
% num_packets = floor(length(csi_trace)/1);
% sampled_csi_trace = csi_sampling(csi_trace, num_packets, 1, length(csi_trace));
% csi_entry = csi_trace{50};
% csi = get_scaled_csi(csi_entry);
% % Only consider measurements for transmitting on one antenna
% csi = csi(1, :, :);
% % Remove the single element dimension
% csi = squeeze(csi);
% packet_one_phase_matrix = unwrap(angle(csi), pi, 2);
% sanitized_csi = spotfi_algorithm_1(csi, sub_freq_delta);
% smoothed_sanitized_csi = smooth_csi(sanitized_csi);
% [aoa_packet_data, tof_packet_data] = aoa_tof_music(...
% smoothed_sanitized_csi, antenna_distance, frequency, sub_freq_delta, './data/2m-60-2.dat');






















% entry = csi_trace{50};
% entry_csi = entry.csi;
% csi = squeeze(entry_csi(:,1,:));
% 
% derad = pi/180;
% N=30;
% M=6;
% 
% dd=0.08;
% d=0:dd:(N-1)*dd; 
% 
% Rcsi = csi*csi';
% [EV,D] = eig(Rcsi);%特征向量 特征值 
% EVA=diag(D)';
% [EVA,I]=sort(EVA);  % 从小到大排列 返回索引
% %EVA=fliplr(EVA);   % 反转元素
% EV=fliplr(EV(:,I)); % 按列反转特征向量
% 
% for iang = 1:361 % 遍历
%     angle(iang)=(iang-181)/2; 
%     phim=derad*angle(iang); 
%     a=exp(-1i*2*pi*d*sin(phim)).'; 
%     L=M; 
%     En=EV(:,L+1:N); 
%     %SP(iang)=(a'*a)/(a'*En*En'*a); 
%     SP(iang)=1/(a'*En*En'*a); 
% end
% 
% SP = abs(SP);
% SP = 10*log10(SP);
% h = plot(angle,SP);
% set(h,'Linewidth',0.5);
% xlabel("入射角");
% ylabel("空间谱");
% set(gca,'XTick',[-100:20:100]);
% grid on;