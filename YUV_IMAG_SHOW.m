close all; 
clear 

% fid1 = fopen('\\172.21.60.26\d$\hevc_test\new_test\dec5.yuv','r') ;
% fid2 = fopen('\\172.21.60.26\d$\hevc_test\new_test\rec5.yuv','r') ;
fid1 = fopen('E:\arcsoft_codes\arcsoft_hevc_all\Makefile\HEVC_Lib\Debug\1-news_QVGA_15_dec_20130830155636.yuv');
fid2 = fopen('E:\arcsoft_codes\arcsoft_hevc_all\Makefile\HEVC_Lib\Debug\1-news_QVGA_15_recon_20130830155636.yuv');
%fid3 = fopen('E:\Music_Solutions\music_mood_sensing_engine\Dev_HEVC_Encoder_Support_P_Slice\Test_Bed\Test_HEVC_Encoder\VideoFiles\1-news_QVGA_15.yuv');

% fid3 = fopen('E:\Music_Solutions\music_mood_sensing_engine\Dev_HEVC_Encoder_Support_P_Slice\Test_Bed\Test_HEVC_Encoder\VideoFiles\rec1_hm.yuv','r');
%fid2 = fopen('E:\Music_Solutions\Video_ReferenceCode_SVN\hm10.0rc1\hm10.0rc1\build\vc8\spi2a_cif_352x288.yuv','r');
% fid3 = fopen('E:\Music_Solutions\music_mood_sensing_engine\Dev_HEVC_Encoder_Support_P_Slice\Test_Bed\Test_HEVC_Encoder\VideoFiles\rec_image.yuv','r');
row=320;col=240; 

frames=50; % total=300 

for frame=1:frames 

%     Y=zeros(row,col,frames); 
%     U=zeros(row/2,col/2,frames); 
% 
%     V=zeros(row/2,col/2,frames); 
%     UU=zeros(row,col,frames); 
%     VV=zeros(row,col,frames); 
    Y1 = fread(fid1,[row,col],'uchar'); 
    UU1 =fread(fid1,[row/2,col/2],'uchar'); 
    VV1 =fread(fid1,[row/2,col/2],'uchar'); 
%     
    Y2 = fread(fid2,[row,col],'uchar'); 
    UU2 =fread(fid2,[row/2,col/2],'uchar'); 
    VV2 =fread(fid2,[row/2,col/2],'uchar'); 
    
%     Y3 = fread(fid3,[row,col],'uchar'); 
%     UU3 =fread(fid3,[row/2,col/2],'uchar'); 
%     VV3 =fread(fid3,[row/2,col/2],'uchar'); 
    
%     Y3 = fread(fid3,[row,col],'uchar'); 
%     UU3 =fread(fid3,[row/2,col/2],'uchar'); 
%     VV3 =fread(fid3,[row/2,col/2],'uchar');    
    % frame
%     ANS = UU1'-UU2'


     Y_diff = sum(sum(abs(Y1-Y2)))
     U_diff = sum(sum(abs(UU1-UU2)))
     V_diff = sum(sum(abs(VV1-VV2)))
     if(Y_diff > 0 || U_diff >0 || V_diff>0)
         frame
         diff_y=Y1-Y2;
         [r,c]=find(diff_y~=0);
         r2=fix(r/64)+1;r3=mod(r,64)+1;
         c2=fix(c/64)+1;c3=mod(c,64)+1;
      %   r4=r2+double(r3~=0);
       %  c4=c2+double(c3~=0);
     %  disp(['[' num2str(c2) ',' num2str(r2) ']'])
         fprintf('[%d,%d]=>[%d,%d].[%d,%d]\n',[c';r';c2';r2';c3';r3']);
     end;
% 
% %     U_diff = sum(sum(abs(UU1-UU2)))
% %     V_diff = sum(sum(abs(VV1-VV2)))
%     
%     Y_diff = sum(sum(abs(Y1-Y3)))

%     U_diff = sum(sum(abs(UU1-UU2)))
%     V_diff = sum(sum(abs(VV1-VV2)))    
%     Y3 = fread(fid3,[row,col],'uchar'); 
%     UU3 =fread(fid3,[row/2,col/2],'uchar'); 
%     VV3 =fread(fid3,[row/2,col/2],'uchar'); 
    subplot(3,1,1);
    imshow(uint8(Y2'));
    subplot(3,1,2);
    imshow(uint8(UU2')); 
    subplot(3,1,3);
    imshow(uint8(VV2'));   
    
%     subplot(2,1,2);
% %     imshow(Y3'/256.0);
%     imshow(VV3'/256.0);
%     imshow(VV'/256.0);
end;

%fclose(fid