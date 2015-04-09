frame_cost_as265=dlmread('E:\encoder_test_output\frame_cost.txt');
frame_cost_x265=dlmread('E:\encoder_test_output\x265_output\frame_cost.txt');
len=length(frame_cost_as265);
figure
x=8800:9200;
%x=1:10000;
%plot(x,frame_cost_x265(x),'-b*');
%frame_cost_as265=dlmread('E:\encoder_test_output\frame_cost_low1.txt');
plot(x,frame_cost_as265(x),'-r.');
grid on,hold on
%frame_cost_as265=dlmread('E:\encoder_test_output\frame_cost_low2.txt');
%plot(x,frame_cost_as265(x),'-g+');
plot(x,frame_cost_x265(x),'-b*');
%plot(x,frame_cost_as265(x),'-r.');

