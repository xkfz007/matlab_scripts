%%
%bits_data_as265=dlmread('E:\encoder_test_output\as265_output\bits_each_frame.txt');
bits_data_as265=dlmread('E:\encoder_test_output\hunan.tv\arcsoft\bits_each_frame.txt');
%bits_data_as265=dlmread('E:\encoder_test_output\x265_output\bits_each_frame.txt');
%bits_data_as265=dlmread('E:\encoder_test_output\hunan.tv\QA_shuma\bits_each_frame.txt');
fps=25;
bitrate=2000;
[X,Y,len]=calc_bitrate_per_second(bits_data_as265,fps);

figure
plot(X,Y);
grid on,hold on

y=ones(1,len)*bitrate;
plot(X,y,'r');
%%
%bits_data_as265=dlmread('E:\encoder_test_output\as265_output\bits_each_frame.txt');
bits_data_as265=dlmread('E:\encoder_test_output\hunan.tv\arcsoft\bits_each_frame.txt');
%bits_data_as265=dlmread('E:\encoder_test_output\x265_output\bits_each_frame.txt');
bits_data_as265=dlmread('E:\encoder_test_output\hunan.tv\QA_shuma\bits_each_frame.txt');
fps=25;
bitrate=2000;
[X,Y,len]=calc_bitrate_each_second(bits_data_as265,fps);

figure
plot(X,Y);
grid on,hold on
y=ones(1,len)*bitrate;
plot(X,y,'r');
%%
bits_as265=dlmread('f:\encoder_test_output\as265_output\bits_each_frame_kldby30000.txt');
bits_x265=dlmread('f:\encoder_test_output\x265_output\bits_each_frame_kldby30000.txt');
fps=25;
bitrate=2000;
[X,Y,len]=calc_bitrate_per_second(bits_as265,fps);
[X2,Y2,len2]=calc_bitrate_per_second(bits_x265,fps);
figure
plot(X,Y,'r');
grid on,hold on
plot(X2,Y2,'b');

y=ones(1,len)*bitrate;
plot(X,y,'y');
legend('as265','x265');


