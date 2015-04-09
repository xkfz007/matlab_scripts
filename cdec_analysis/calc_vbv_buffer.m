function [X,Y,len]=calc_vbv_buffer(bits_data,fps,vbv_max_rate,vbv_buf_size,vbv_init)
buffer_fill_final=vbv_buf_size*vbv_init*1000;
buffer_rate=vbv_max_rate*1000/fps;
buffer_size=vbv_buf_size*1000;
len=length(bits_data);
X=zeros(1,len*2+1);
Y=zeros(1,len*2+1);
for i=1:len
    X(2*i)=i;
    X(2*i+1)=i;
    Y(2*i)=buffer_fill_final;
    if(buffer_fill_final>buffer_size)
       fprintf('VBV overflow (frame %d, %f bits)\n',i,buffer_fill_final-buffer_size);
        buffer_fill_final=buffer_size;
    end    
    bits=bits_data(i);
    buffer_fill_final=buffer_fill_final-bits;

    Y(2*i+1)=buffer_fill_final;
    if(buffer_fill_final<0)
        fprintf('VBV underflow (frame %d, %f bits)\n',i,buffer_fill_final);
        buffer_fill_final=0;
    end
    buffer_fill_final=buffer_fill_final+buffer_rate;
end