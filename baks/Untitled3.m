%RLambda_all=dlmread('F:\rc_test_sad_results\hm_rc_test_new14\brate_qp_psnr_new14.txt',' ');
RLambda_all=dlmread('F:\rc_test_sad_results\hm_rc_test_new21-e\cost.txt',',');
NewTest_all=dlmread('F:\rc_test_sad_results\hm_rc_test_new22-c\cost.txt', ',');
%NewTest_all2=dlmread('F:\rc_test_sad_results\hm_rc_test_sad110-t\brate_qp_psnr.txt', ',');
seq_list={'BasketballDrill_832x480_50','BasketballDrillText_832x480_50','BasketballPass_416x240_50',...
    'BlowingBubbles_416x240_50','BQMall_832x480_60','BQSquare_416x240_60','Cactus_1920x1080_50',...
    'ChinaSpeed_1024x768_30','Flowervase_416x240_30','Flowervase_832x480_30','FourPeople_1280x720_60',...
    'Johnny_1280x720_60','Keiba_416x240_30','Keiba_832x480_30','KristenAndSara_1280x720_60',...
    'Mobisode2_416x240_30','Mobisode2_832x480_30','ParkScene_1920x1080_24','PartyScene_832x480_50',...
    'RaceHorses_416x240_30','RaceHorses_832x480_30','SlideEditing_1280x720_30','SlideShow_1280x720_20',...
    'vidyo1_1280x720_60','vidyo3_1280x720_60','vidyo4_1280x720_60','mergeout_832x480_30',...
    'news_352x288_30','paris_352x288_30','walk_640x480_30','gopro_1280x720_25',...
    'LensRotation-b_1920x1080_23','panning-a_1920x1080_23','car_1920x1080_22','HotelPassage_448x336_15'
    };
len=length(seq_list);
%%
for i=1:len
x=1:300;
seqname=seq_list{i};
RLambda_brate=RLambda_all(i,:);
NewTest_brate=NewTest_all(i,:);

%NewTest_brate2=NewTest_all2(j+1,:);
%NewTest_qp2=NewTest_all2(j+2,:);
%NewTest_psnr2=NewTest_all2(j+3,:);

h=figure('Name',seqname);
set(gcf,'outerposition',get(0,'screensize'));

grid on,hold on
plotyy(x,RLambda_brate,x,NewTest_brate);
legend('new21-e','new22-c');
title('COST');

if 1
pngname=[seqname '.png'];
saveas(h,pngname,'png');
close(h);
end
end