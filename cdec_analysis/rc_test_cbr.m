%acquire the data from excel file
xlsfile='F:\as265_rc_tests\as265_rc_tests.xls';
serial='test17-a';
start_index=1;
end_index=start_index+28;
sheet=strcat(serial,'1');
range=strcat('B',num2str(start_index),':M',num2str(end_index));
cbr_final_bitrate=xlsread(xlsfile,sheet,range);

sheet=strcat(serial,'2');
range=strcat('B',num2str(start_index),':CW',num2str(end_index));
cbr_frame_qp=xlsread(xlsfile,sheet,range);

start_index=30;
end_index=start_index+28;
range=strcat('B',num2str(start_index),':CW',num2str(end_index));
cbr_frame_bitrate=xlsread(xlsfile,sheet,range);
%%
%acquire data directly from text file
base_path='F:\as265_rc_tests\';
test_prefix='as265_rc_test';
test_no='17-e';
test_dir=strcat(test_prefix,test_no);
rc_br_file=strcat(base_path,test_dir,'\all_data_rc_bitrate.txt');
cbr_final_bitrate=dlmread(rc_br_file,' ',0,1);
rc_frm_br_file=strcat(base_path,test_dir,'\all_data_rc_frame_bitrate.txt');
cbr_frame_bitrate=dlmread(rc_frm_br_file,' ',0,1);
%%

seq_list={'BasketballDrill_832x480_50', 'BQMall_832x480_60', 'PartyScene_832x480_50',...
    'RaceHorses_832x480_30', 'BasketballPass_416x240_50', 'BQSquare_416x240_60', ...
    'BlowingBubbles_416x240_50', 'RaceHorses_416x240_30', 'FourPeople_1280x720_60',...
    'Johnny_1280x720_60', 'KristenAndSara_1280x720_60', 'BasketballDrillText_832x480_50',...
    'SlideEditing_1280x720_30', 'SlideShow_1280x720_20', 'Keiba_832x480_30', ...
    'Mobisode2_832x480_30', 'mergeout_832x480_30', 'Keiba_416x240_30', 'Mobisode2_416x240_30',...
    'vidyo1_1280x720_60', 'vidyo3_1280x720_60', 'vidyo4_1280x720_60', 'gopro_1280x720_25', ...
    'dancing_1280x720_30', 'ChinaSpeed_1024x768_30', 'news_352x288_30', 'paris_352x288_30',...
    'walk_640x480_30', 'HotelPassage_448x336_15'};
[m,n]=size(cbr_frame_bitrate);
h=figure;
x=1:n;
for i=1:m
set(h,'Name',seq_list{i});
%subplot(2,1,1);
%plot(x,cbr_frame_qp(i,:),'g')
%grid on

%subplot(2,1,2);
plot(x,cbr_frame_bitrate(i,:),'b')
grid on,hold on
plot(x,ones(1,n)*cbr_final_bitrate(i,1),'r');
plot(x,ones(1,n)*cbr_final_bitrate(i,1)*1.1,'r');
plot(x,ones(1,n)*cbr_final_bitrate(i,4),'g');
hold off
pause
end