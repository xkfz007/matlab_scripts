function [X,Y,len]=calc_bitrate_each_second(bits_data,fps)
len1=length(bits_data);
len=floor(len1/fps);
X=1:len;
Y=zeros(1,len);

for i=1:len;
    start_idx=1+(i-1)*fps;
    end_idx=i*fps;
    bits_data_second=bits_data(start_idx:end_idx);
    Y(i)=sum(bits_data_second)*0.001;    
end
