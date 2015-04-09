bf_data_as265=dlmread('E:\encoder_test_output\as265_output\buffer_fill_each_frame.txt');
poc_as265=bf_data_as265(1:2:end);
buffer_fill_as265=bf_data_as265(2:2:end);
temp_bf_data=[poc_as265;buffer_fill_as265]';
temp_bf_data=sortrows(temp_bf_data,[1,-2]);
poc_as265=temp_bf_data(:,1);
buffer_fill_as265=temp_bf_data(:,2);
figure
plot(poc_as265,buffer_fill_as265,'b')
grid on,hold on

bf_data_x265=dlmread('E:\encoder_test_output\x265_output\buffer_fill_each_frame.txt');
poc_x265=bf_data_x265(1:2:end);
buffer_fill_x265=bf_data_x265(2:2:end);
temp_bf_data=[poc_x265;buffer_fill_x265]';
temp_bf_data=sortrows(temp_bf_data,[1,-2]);
poc_x265=temp_bf_data(:,1);
buffer_fill_x265=temp_bf_data(:,2);
plot(poc_x265,buffer_fill_x265,'k')
%%
bf_data_x264=dlmread('E:\encoder_test_output\x264_output\buffer_fill_each_frame.txt',' ');
poc=bf_data_x264(1:2:end);
buffer_fill=bf_data_x264(2:2:end);
%figure
plot(poc,buffer_fill,'c')
%%
