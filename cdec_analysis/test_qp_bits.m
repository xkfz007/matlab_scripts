as265_qp=dlmread('F:\encoder_test_output\arcvideo_performance\as265_qp.txt');
x265_qp=dlmread('F:\encoder_test_output\arcvideo_performance\x265_qp.txt');
yanhua_qp=dlmread('F:\encoder_test_output\arcvideo_performance\yanhua_qp.txt');
as265_avg_qp=mean(as265_qp)
x265_avg_qp=mean(x265_qp)
yanhua_avg_qp=mean(yanhua_qp)
len=length(as265_qp);
x=1:len;
figure('name','qp')
grid on,hold on
%plot(x,x265_qp,'b')
plot(x,yanhua_qp,'g')
plot(x,as265_qp,'r')
%%
as265_bits=dlmread('F:\encoder_test_output\arcvideo_performance\as265_bits.txt');
x265_bits=dlmread('F:\encoder_test_output\arcvideo_performance\x265_bits.txt');
yanhua_bits=dlmread('F:\encoder_test_output\arcvideo_performance\yanhua_bits.txt');
len=length(as265_bits);
x=1:len;
figure
grid on,hold on
plot(x,x265_bits,'b')
plot(x,yanhua_bits,'g')
plot(x,as265_bits,'r')



