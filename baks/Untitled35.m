w=int32([416 832 1024 1280 1920]);
h=int32([240 480 768 720 1080]);
rw=(mod(w,64)~=0);
rh=(mod(w,64)~=0);
numw=double(idivide(w,64))+rw;
numh=double(idivide(h,64))+rh;
sz=numw.*numh;
a1=sz.^0.5;
a2=sz.^0.6;
figure
hold on
plot(1:5,a1,'+r-');
plot(1:5,a2,'+b-')
%%
