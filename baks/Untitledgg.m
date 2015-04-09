arc_data=dlmread('BlowingBubbles_416x240_50_cons_arc.txt',' ');
len1=size(arc_data,1);
hm_data=dlmread('BlowingBubbles_416x240_50_cons_hm.txt',' ');
len2=size(hm_data,1);
figure
subplot(2,1,1)
hist(arc_data(:,2),10000);
subplot(2,1,2)
hist(hm_data(:,2),10000);




