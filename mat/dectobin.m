function [y,y2]=dectobin(innum,N)
%ʮ����С��ת��Ϊ��������
%�������Ϊinnum��N
%innumΪ�����ʮ����С��
%NΪָ��ת��������Ƶ�λ��
if (innum>1)||(N == 0)%�ж��������Ч��
    disp('error!');
    return;
end
count=1;
tempnum=innum;
%y=zeros(1,N);
y='';
y2='';
while(N>0)
    tempnum=tempnum*2;%С��ת��Ϊ������,��2ȡ��
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
