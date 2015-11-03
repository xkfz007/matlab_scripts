function [X,Y,len]=calc_bitrate_per_second(bits_data,fps)
%calc bitrate for every second using a sliding window
len=length(bits_data);
X=1:len;
Y=zeros(1,len);
%frame_duration=1/fps;
total_bits=0;
for i=1:fps-1
    total_bits=total_bits+bits_data(i);
end

for i=fps:len
    total_bits=total_bits+bits_data(i);
    Y(i)=total_bits*0.001;%/(i*frame_duration); 
    total_bits=total_bits-bits_data(i-(fps-1));
end