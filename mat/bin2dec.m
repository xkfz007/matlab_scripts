function y=bin2dec(x)
%convert one binary num (string) to decimal number
len=length(x);
y=0;
for i=1:len
    if(x(i)=='1')
        y=y+2^(-i);
    end
end

    