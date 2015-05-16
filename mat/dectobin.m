function [y,y2]=dectobin(innum,N)
%十进制小数转换为二进制数
%输入参数为innum和N
%innum为输入的十进制小数
%N为指定转换后二进制的位数
if (innum>1)||(N == 0)%判断输入的有效性
    disp('error!');
    return;
end
count=1;
tempnum=innum;
%y=zeros(1,N);
y='';
y2='';
while(N>0)
    tempnum=tempnum*2;%小数转换为二进制,乘2取整
    if tempnum>=1
        y=[y '1'];
        y2=[y2 '1'];
        tempnum=tempnum-1;
    else
       y=[y '0'];
       y2=[y2 '0'];
    end
    if ~mod(count,4)
        y2=[y2 ' '];
    end
    count=count+1;
    N=N-1;
end
