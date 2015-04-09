qp_data_as265=dlmread('E:\encoder_test_output\as265_output\qp_each_frame.txt');
len=length(qp_data_as265);
X=1:len;
Y=qp_data_as265;
figure
plot(X,Y)


