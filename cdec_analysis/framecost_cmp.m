xlsfile='F:\as265_rc_tests\framecost_tests.xls';
%test11_lt1=xlsread(xlsfile,'test11-lt1','B1:CW29');
test11={};
seq_end_idx=8;
for i=1:seq_end_idx
    sheet=strcat('test10-lt',num2str(i));
    start_index=123;
    end_index=start_index+28;
    %range=strcat('B',num2str(start_index),':CW',num2str(end_index));
    range=strcat('C',num2str(start_index),':CX',num2str(end_index));
    test11{i}=xlsread(xlsfile,sheet,range);
end
%%

%test10={test10_lt1,test10_lt2,test10_lt3,test10_lt4,test10_lt5,test10_lt6,test10_lt7,test10_lt8};
x=1:100;
seq_list={'BasketballDrill_832x480_50', 'BQMall_832x480_60', 'PartyScene_832x480_50',...
    'RaceHorses_832x480_30', 'BasketballPass_416x240_50', 'BQSquare_416x240_60', ...
    'BlowingBubbles_416x240_50', 'RaceHorses_416x240_30', 'FourPeople_1280x720_60',...
    'Johnny_1280x720_60', 'KristenAndSara_1280x720_60', 'BasketballDrillText_832x480_50',...
    'SlideEditing_1280x720_30', 'SlideShow_1280x720_20', 'Keiba_832x480_30', ...
    'Mobisode2_832x480_30', 'mergeout_832x480_30', 'Keiba_416x240_30', 'Mobisode2_416x240_30',...
    'vidyo1_1280x720_60', 'vidyo3_1280x720_60', 'vidyo4_1280x720_60', 'gopro_1280x720_25', ...
    'dancing_1280x720_30', 'ChinaSpeed_1024x768_30', 'news_352x288_30', 'paris_352x288_30',...
    'walk_640x480_30', 'HotelPassage_448x336_15'};
h=figure;
for i=1:29
    set(h,'Name',seq_list{i});
    %range=strcat('B',num2str(i),':','CW',num2str(i));
    for j=1:seq_end_idx
        %sheet=strcat('test11-lt',num2str(j));
        %frame_costs=xlsread(xlsfile,sheet,range);
        frame_costs=test11{j}(i,:);
        plot(x,frame_costs); 
        grid on,hold on
    end
    hold off
    pause
end





