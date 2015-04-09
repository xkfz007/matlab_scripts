%lcu_satd=dlmread('lcu_resi_hotelpassage.txt');
lcu_satd=dlmread('lcu_hadamard_mergeout.txt');
%%
[m,n]=size(lcu_satd);
figure
index=1;
for i=1:100
   frame_satd=lcu_satd(i,:);
    %frame_satd=reshape(frame_satd,6,7);
 frame_satd=reshape(frame_satd,8,13);
   subplot(10,10,i);
 %subplot(2,2,i)
   imshow(frame_satd,[]);
end