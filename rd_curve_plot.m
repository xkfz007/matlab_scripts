%RD-curves
Original=dlmread('F:\cmp_rlambda_abr\original.txt');
Rlambda=dlmread('F:\cmp_rlambda_abr\R-lambda.txt');
%ABRQstep1=dlmread('F:\cmp_rlambda_abr\ABR-QPstep1.txt');
%ABRQstep4=dlmread('F:\cmp_rlambda_abr\ABR-QPstep4.txt');
test_new18=dlmread('F:\hm_rc_test_new18.txt');
seq_list={'BasketballDrill_832x480_50','BasketballDrillText_832x480_50','BasketballPass_416x240_50',...
    'BlowingBubbles_416x240_50','BQMall_832x480_60','BQSquare_416x240_60','Cactus_1920x1080_50',...
    'ChinaSpeed_1024x768_30','Flowervase_416x240_30','Flowervase_832x480_30','FourPeople_1280x720_60',...
    'Johnny_1280x720_60','Keiba_416x240_30','Keiba_832x480_30','KristenAndSara_1280x720_60',...
    'Mobisode2_416x240_30','Mobisode2_832x480_30','ParkScene_1920x1080_24','PartyScene_832x480_50',...
    'RaceHorses_416x240_30','RaceHorses_832x480_30','SlideEditing_1280x720_30','SlideShow_1280x720_20',...
    'vidyo1_1280x720_60','vidyo3_1280x720_60','vidyo4_1280x720_60','mergeout_832x480_30'};
len=length(seq_list);
tmp=[];
for i=1:len
    seqname=seq_list{i};
    org=Original(6*i-5:6*i,:);
    rlam=Rlambda([i,27+i,27*2+i,27*3+i,27*4+i,27*5+i],:);
    abrq1=ABRQstep1([i,27+i,27*2+i,27*3+i,27*4+i,27*5+i],:);
   % abrq4=ABRQstep4([i,27+i,27*2+i,27*3+i,27*4+i,27*5+i],:);
   tn18=test_new18([i,27+i,27*2+i,27*3+i,27*4+i,27*5+i],:);
  %  tmp=[tmp;tn18];
    if 1
   % if(mod(i-1,9)==0)
    h=figure('Name',seqname);
    set(gcf,'outerposition',get(0,'screensize'));
    %index=1;
    %end
    %subplot(3,3,index);
    grid on,hold on
    plot(org(:,1),org(:,2),'r','LineWidth',2);
    plot(rlam(:,1),rlam(:,2),'b','LineWidth',2);
    plot(abrq1(:,1),abrq1(:,2),'g','LineWidth',2);
    plot(tn18(:,1),tn18(:,2),'k','LineWidth',2);
    legend('Original','R-Lambda','ABR-QPstep1','TestNew18(ABR-QPstep2)','Location','SouthEast');
    xlabel('BITRATE(kbps)');
    ylabel('PSNR(dB)');
  %  index=index+1;
    pngname=[seqname '.png'];
saveas(h,pngname,'png');
    end

end