%%
%program used to plot psnr values
clear
%read psnr values from text file
wd_mat=dlmread('E:\test\compare\jybd\new2\psnr3_2pass.txt');
ws_mat=dlmread('E:\test\compare\jybd\ws\psnr3.txt');
[m,n]=size(wd_mat);
[m2,n2]=size(wd_mat);

if n~=n2
    disp('Different columns!');
end

len=min(m,m2);

%frame range
from=1;
to=-1;
if to<1;
    to=len;
end

y_col=2;%column number of y psnr

%get psnr of Y
ypsnr_wd=wd_mat(from:to,y_col);
ypsnr_ws=ws_mat(from:to,y_col);

yavg_wd=mean(ypsnr_wd);
yavg_ws=mean(ypsnr_ws);

x=1:len;
figure('Name','PSNR')
hold on
grid on
plot(x,ypsnr_wd,'r');
plot(x,ypsnr_ws,'b');
legend('Íø´ï','ÍøÊË')


