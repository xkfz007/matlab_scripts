frame_cost_as265=dlmread('F:\encoder_test_output\as265_output\frame_cost.txt');
frame_cost_x265=dlmread('F:\encoder_test_output\x265_output\frame_cost.txt');
len=length(frame_cost_as265);
X=1:len;
figure
plot(X,frame_cost_as265(X),'-r*');
grid on,hold on
plot(X,frame_cost_x265(X),'-b.');
grid on,hold on
legend('as265','x265')




