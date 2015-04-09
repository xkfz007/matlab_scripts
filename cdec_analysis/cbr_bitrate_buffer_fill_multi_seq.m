%acquire data directly from text file
base_path='f:\as265_rc_tests\';
test_prefix='as265_rc_test';
test_no='19-d';
test_dir=strcat(test_prefix,test_no);
rc_br_file=strcat(base_path,test_dir,'\all_data_rc_bitrate.txt');
cbr_final_bitrate=dlmread(rc_br_file,' ',0,1);
rc_frm_br_file=strcat(base_path,test_dir,'\all_data_rc_frame_bitrate.txt');
cbr_frame_bitrate=dlmread(rc_frm_br_file,' ',0,1);

rc_bf_file=strcat(base_path,test_dir,'\all_data_rc_frame_buffer_fill.txt');
bf_data=dlmread(rc_bf_file,' ',0,1);
%%
seq_list={'Traffic_2560x1600_30_crop', ' PeopleOnStreet_2560x1600_30_crop', ...
    'Kimono1_1920x1080_24', ' ParkScene_1920x1080_24', ' Cactus_1920x1080_50', ' BasketballDrive_1920x1080_50', ' BQTerrace_1920x1080_60',...
   'FourPeople_1280x720_60', ' Johnny_1280x720_60', ' KristenAndSara_1280x720_60',...
    'BasketballDrillText_832x480_50', ' SlideEditing_1280x720_30', ' SlideShow_1280x720_20',...
    'LensRotation-b_1920x1080_23', ' panning-a_1920x1080_23', ' car_1920x1080_22',...
    'vidyo1_1280x720_60', ' vidyo3_1280x720_60', ' vidyo4_1280x720_60', ' gopro_1280x720_25', ' dancing_1280x720_30'
    };
m=length(seq_list);

h=figure;
for i=1:m
set(h,'Name',seq_list{i});
n=cbr_final_bitrate(i,1);
x=1:n;
subplot(2,1,1);

plot(x,cbr_frame_bitrate(i,1:n),'b');
grid on,hold on
plot(x,ones(1,n)*cbr_final_bitrate(i,2),'r');
plot(x,ones(1,n)*cbr_final_bitrate(i,2)*1.1,'r');
plot(x,ones(1,n)*cbr_final_bitrate(i,5),'g');
hold off

subplot(2,1,2);
poc=bf_data(i,1:2:2*n);
buffer_fill=bf_data(i,2:2:2*n);
plot(poc,buffer_fill,'b');
grid on,hold on
plot(x,ones(1,n)*cbr_final_bitrate(i,4)*1000,'r');
hold off
pause
end


