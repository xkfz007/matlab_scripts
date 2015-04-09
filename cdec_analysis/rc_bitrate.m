bits_data_as265=dlmread('f:\encoder_test_output\as265_output\bits_each_frame.txt');
bits_data_x265=dlmread('f:\encoder_test_output\x265_output\bits_each_frame.txt');
%bits_data_as265=dlmread('E:\encoder_test_output\h265_compare\enwei\bits_each_frame.txt');
%bits_data_as265=dlmread('E:\encoder_test_output\hunan.tv\QA_shuma\bits_each_frame.txt');
%bits_data_as265=dlmread('E:\encoder_test_output\hunan.tv\arcsoft\bits_each_frame.txt');
fps=25;
bitrate=2000;
vbv_max_rate=6000;
[X,Y,len]=calc_bitrate(bits_data_as265,fps);

figure
plot(X,Y);
grid on,hold on

y=ones(1,len)*bitrate;
plot(X,y,'g');
y2=ones(1,len)*vbv_max_rate;
plot(X,y2,'r');


