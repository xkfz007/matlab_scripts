brate_data_as265=dlmread('E:\encoder_test_output\as265_output\bitrate_each_frame.txt');
target_bitrate=brate_data_as265(1);
final_bitrate=brate_data_as265(2);
all_bitrate_as265=brate_data_as265(4:2:end);
x_as265=brate_data_as265(3:2:end);
len=length(all_bitrate_as265);
%x=1:len;
figure
%bitrate
subplot(3,1,1)
plot(x_as265,all_bitrate_as265,'b')
grid on,hold on
plot(x_as265,ones(1,len)*target_bitrate,'r');
plot(x_as265,ones(1,len)*target_bitrate*1.1,'r');
plot(x_as265,ones(1,len)*final_bitrate,'g');


brate_data_x265=dlmread('E:\encoder_test_output\x265_output\bitrate_each_frame.txt');
all_bitrate_x265=brate_data_x265(4:2:end);
x_x265=brate_data_x265(3:2:end);
plot(x_x265,all_bitrate_x265,'k')

%qp
subplot(3,1,2)
qp_data_as265=dlmread('E:\encoder_test_output\as265_output\qp_each_frame.txt');
all_qp_as265=qp_data_as265(2:2:end);
x_as265=qp_data_as265(1:2:end);
plot(x_as265,all_qp_as265,'b')
grid on,hold on

qp_data_x265=dlmread('E:\encoder_test_output\x265_output\qp_each_frame.txt');
all_qp_x265=qp_data_x265(2:2:end);
x_x265=qp_data_x265(1:2:end);
plot(x_x265,all_qp_x265,'k')
%bits
subplot(3,1,3)
bits_data_as265=dlmread('E:\encoder_test_output\as265_output\bits_each_frame.txt');
all_bits_as265=bits_data_as265(2:2:end);
x_as265=bits_data_as265(1:2:end);
plot(x_as265,all_bits_as265,'b')
grid on,hold on

bits_data_x265=dlmread('E:\encoder_test_output\x265_output\bits_each_frame.txt');
all_bits_x265=bits_data_x265(2:2:end);
x_x265=bits_data_x265(1:2:end);
plot(x_x265,all_bits_x265,'k')
%%

brate_data_x264=dlmread('E:\encoder_test_output\x264_output\bitrate_each_frame.txt');
x=1:length(brate_data_x264(3:end));
%figure
plot(x,brate_data_x264(3:end),'c')
%%



