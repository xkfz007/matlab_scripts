qp_as265=dlmread('f:\encoder_test_output\as265_output\qp_each_frame_kldby30000.txt');
qp_x265=dlmread('f:\encoder_test_output\x265_output\qp_each_frame_kldby30000.txt');
%qp_x264=dlmread('E:\encoder_test_output\x264_output\qp_each_frame.txt');
len=length(qp_as265);
figure
X=1:len;
%X=8800:9200;
plot(X,qp_as265(X),'-r.');
grid on,hold on
plot(X,qp_x265(X),'-g*');
%plot(X,qp_x264(X),'b');
legend('as265','x265','x264');
%%
qp_as265=dlmread('E:\encoder_test_output\hunan.tv\arcsoft\qp_each_frame.txt');
%qp_shuma=dlmread('E:\encoder_test_output\hunan.tv\QA_shuma\qp_each_frame.txt');
figure
X=1:20000;
plot(X,qp_as265(X),'r');
grid on,hold on
%plot(X,qp_shuma(X),'-b.');
legend('as265','shuma')



