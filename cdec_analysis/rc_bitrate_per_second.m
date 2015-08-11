%%
%bits_data_as265=dlmread('E:\encoder_test_output\as265_output\bits_each_frame.txt');
bits_data_as265=dlmread('F:\encoder_test_output\as265_output\bits1.txt');
%bits_data_as265=dlmread('E:\encoder_test_output\x265_output\bits_each_frame.txt');
%bits_data_as265=dlmread('E:\encoder_test_output\hunan.tv\QA_shuma\bits_each_frame.txt');
fps=25;
bitrate=1500;
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
bits_as265=dlmread('F:\encoder_test_output\arcvideo_performance\as265_bits.txt');
bits_x265=dlmread('F:\encoder_test_output\arcvideo_performance\x265_bits.txt');
yanhua_bits=dlmread('F:\encoder_test_output\arcvideo_performance\yanhua_bits.txt');
fps=25;
bitrate=1500;
[X,Y,len]=calc_bitrate_per_second(bits_as265,fps);
[X2,Y2,len2]=calc_bitrate_per_second(bits_x265,fps);
[X3,Y3,len3]=calc_bitrate_per_second(yanhua_bits,fps);
figure
plot(X,Y,'r');
grid on,hold on
%plot(X2,Y2,'b');
plot(X3,Y3,'g');

y=ones(1,len)*bitrate;
plot(X,y,'y');
%legend('as265','x265');


