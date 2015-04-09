quater=dlmread('lowres_quater_IP.txt');
semi=dlmread('lowres_semi_IP.txt');
x=1:100;
figure
%plot(quater,semi,'.');
plot(x,quater,'r');
grid on,hold on
plot(x,semi,'b');
ratio=semi./quater;
figure,plot(x,a,'r+'),grid on
mean(ratio)
%%
quater=dlmread('lowres_quater_Intra.txt');
semi=dlmread('lowres_semi_Intra.txt');
x=1:100;
figure
%plot(quater,semi,'.');
plot(x,quater,'r');
grid on,hold on
plot(x,semi,'b');
ratio=semi./quater;
figure,plot(x,a,'r+'),grid on
mean(ratio)



