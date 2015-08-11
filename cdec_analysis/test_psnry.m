%aa=xlsread('F:\encoder_test_output\arcvideo_performance\H265第一阶段性能结果.xlsx','paonan1 - 备份1','A3:O1004');
aa=xlsread('F:\encoder_test_output\arcvideo_performance\H265第一阶段性能结果.xlsx','体育-斯洛維尼亞vs美國','A3:O1004');

as265_l6_psnry=aa(:,3);
as265_l7_psnry=aa(:,7);
x265_psnry=aa(:,11);
yanhua_psnry=aa(:,15);
figure,
len=length(as265_l6_psnry);
x=1:len;
plot(x,as265_l6_psnry,'r');
grid on,hold on
plot(x,as265_l7_psnry,'b')
plot(x,x265_psnry,'g')
plot(x,yanhua_psnry,'c')