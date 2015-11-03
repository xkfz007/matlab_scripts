function [X,Y,len]=calc_bitrate(bits_data,fps)
%calc bitrate after each frame
total_bits=0;
len=length(bits_data);
X=1:len;
Y=zeros(1,len);
frame_duration=1/fps;
for i=1:len
    total_bits=total_bits+bits_data(i);
    Y(i)=total_bits*0.001/(i*frame_duration);    
end
end