aa=dlmread('C:\Users\hfz2597.ARCSOFT-SH\Desktop\a.txt');
bb=dlmread('C:\Users\hfz2597.ARCSOFT-SH\Desktop\b.txt');
figure,
x=1:300;
subplot(2,1,1),grid on,hold on
plot(x,aa(:,1),'b');
plot(x,bb(:,1),'r');
legend('test','r-lambda');

subplot(2,1,2),grid on,hold on
plot(x,aa(:,2),'b');
plot(x,bb(:,2),'r');
legend('test','r-lambda');
