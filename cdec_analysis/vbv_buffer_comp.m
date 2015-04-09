bits_data_as265=dlmread('E:\encoder_test_output\as265_output\bits_each_frame.txt');
bits_data_x265=dlmread('E:\encoder_test_output\x265_output\bits_each_frame.txt');
%bits_data_x264=dlmread('E:\encoder_test_output\x264_output\bits_each_frame.txt');

%bitrate=1000;
vbv_max_rate=6000;
vbv_buf_size=6000;
vbv_init=0.9;
fps=25;
[X,Y,len]=calc_vbv_buffer(bits_data_as265,fps,vbv_max_rate,vbv_buf_size,vbv_init);
[X2,Y2,len2]=calc_vbv_buffer(bits_data_x265,fps,vbv_max_rate,vbv_buf_size,vbv_init);
%[X3,Y3,len3]=calc_vbv_buffer(bits_data_x264,fps,vbv_max_rate,vbv_buf_size,vbv_init);
figure
plot(X,Y,'r');
grid on,hold on
plot(X2,Y2,'b');
%plot(X3,Y3,'b');
legend('as265','x265','x264');
x=0:len;
y1=zeros(1,len+1);
y2=ones(1,len+1)*vbv_buf_size*1000;
plot(x,y1,'y');
plot(x,y2,'y');

%%
bits_data_x265=dlmread('E:\encoder_test_output\as265_output\bits_each_frame.txt');
bits_data_as265=dlmread('E:\encoder_test_output\x265_output\bits_each_frame.txt');
%bits_data_as265=dlmread('E:\encoder_test_output\h265_compare\enwei\bits_each_frame.txt');
bits_data_shuma=dlmread('E:\encoder_test_output\hunan.tv\QA_shuma\bits_each_frame.txt');
bits_data_arcsoft=dlmread('E:\encoder_test_output\hunan.tv\arcsoft\bits_each_frame.txt');
%bitrate=1000;
vbv_max_rate=6000;
vbv_buf_size=6000;
vbv_init=0.9;
fps=25;
[X,Y,len]=calc_vbv_buffer(bits_data_arcsoft,fps,vbv_max_rate,vbv_buf_size,vbv_init);
%[X2,Y2]=calc_vbv_buffer(bits_data_x265,fps,vbv_max_rate,vbv_buf_size,vbv_init);
figure
plot(X,Y,'-b');
grid on,hold on
x=0:len;
y1=zeros(1,len+1);
y2=ones(1,len+1)*vbv_buf_size*1000;
plot(x,y1,'r');
plot(x,y2,'r');

