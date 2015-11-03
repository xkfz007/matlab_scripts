function [X,Y,len]=calc_bitrate_each_second(bits_data,fps)
%calc bitrate for each second: bitrate of first second, bitrate of second second
len1=length(bits_data);% how many frames
len=floor(len1/fps);%how many seconds
X=1:len;%each second
Y=zeros(1,len);%bitrate of each second

for i=1:len;
    start_idx=1+(i-1)*fps;
    end_idx=i*fps;
    bits_data_second=bits_data(start_idx:end_idx);
    Y(i)=sum(bits_data_second)*0.001;    
end
