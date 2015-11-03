% bits=dlmread('F:\tmp\vbr_test\bits.txt');
% len=length(bits);
% cnt=0;
% fps=50;
% br=[];
% for i=1:fps:len
%     st=i;
%     ed=min(i+fps,len);
%     bsum=sum(bits(st:ed));    
%     cnt=cnt+1;
%     br(cnt)=bsum/1000;
%     fprintf('%d second bitrate=%f\n',cnt,bsum/1000);
% end
%%
filename='F:\tmp\vbr_test\hfz_vbr_test1000x1200x1200_bits.txt';
bits_data_as265=dlmread(filename);
fps=25;
bitrate=1000;
[X,Y,len]=calc_bitrate_each_second(bits_data_as265,fps);

figure('Name',filename);
plot(X,Y);
grid on,hold on
y=ones(1,len)*bitrate;
plot(X,y,'r');
