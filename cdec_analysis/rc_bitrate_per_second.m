%%
%bits_data_as265=dlmread('E:\encoder_test_output\as265_output\bits_each_frame.txt');
filename='F:\tmp\vbr_test\hfz_vbr_test1000x1000x1000_bits.txt';
bits_data_as265=dlmread(filename);
%bits_data_as265=dlmread('f:\encoder_test_output\x265_output\bits.txt');
%bits_data_as265=dlmread('E:\encoder_test_output\hunan.tv\QA_shuma\bits_each_frame.txt');
fps=25;
bitrate=1000;
[X,Y,len]=calc_bitrate_per_second(bits_data_as265,fps);

figure('name',filename);
plot(X,Y);
grid on,hold on

y=ones(1,len)*bitrate;
plot(X,y,'r');
%full screen
set(gcf,'outerposition',get(0,'screensize'));

%%
bits_as265=dlmread('F:\encoder_test_output\arcvideo_performance\as265_bits.txt');
bits_x265=dlmread('F:\encoder_test_output\arcvideo_performance\x265_bits.txt');
yanhua_bits=dlmread('F:\encoder_test_output\arcvideo_performance\yanhua_bits.txt');
fps=25;
bitrate=1500;
[X,Y,len]=calc_bitrate_per_second(bits_as265,fps);
[X2,Y2,len2]=calc_bitrate_per_second(bits_x265,fps);
[X3,Y3,len3]=calc_bitrate_per_second(yanhua_bits,fps);
figure
plot(X,Y,'r');
grid on,hold on
%plot(X2,Y2,'b');
plot(X3,Y3,'g');

y=ones(1,len)*bitrate;
plot(X,y,'y');
%legend('as265','x265');
%%

bits_list={'hfz_vbr_test1000x1000x1000_bits.txt','hfz_vbr_test1000x1000x2000_bits.txt', ...
    'hfz_vbr_test1000x1000x500_bits.txt','hfz_vbr_test1000x1200x1000_bits.txt', ...
    'hfz_vbr_test1000x1200x1200_bits.txt','hfz_vbr_test1000x1200x800_bits.txt', ...
    'hfz_vbr_test1000x1300x700_bits.txt','hfz_vbr_test1000x1400x600_bits.txt', ...
    'hfz_vbr_test1000x1500x500_bits.txt','hfz_vbr_test1000x2000x1000_bits.txt', ...
    'hfz_vbr_test1000x2000x2000_bits.txt','hfz_vbr_test1000x2200x800_bits.txt', ...
    'hfz_vbr_test1000x2300x700_bits.txt','hfz_vbr_test1000x2400x600_bits.txt', ...
    'hfz_vbr_test1000x2500x500_bits.txt','hfz_vbr_test1000x3000x3000_bits.txt', ...
    'hfz_vbr_test1000x500x500_bits.txt','hfz_vbr_test1000x600x400_bits.txt', ...
    'hfz_vbr_test1000x700x300_bits.txt','hfz_vbr_test1000x800x200_bits.txt', ...
    'hfz_vbr_test1000x900x100_bits.txt','hfz_vbr_test2000x6000x6000_bits.txt', ...
    'hfz_vbr_test3000x1500x1500_bits.txt','hfz_vbr_test3000x3000x3000_bits.txt', ...
    'hfz_vbr_test3000x9000x9000_bits.txt','hfz_vbr_test4000x12000x12000_bits.txt', ...
    'hfz_vbr_test4000x4000x4000_bits.txt'    
    };
bits_list={ 'hfz_vbr_test1000x1500x1500_bits.txt'};
file_path='F:\tmp\vbr_test\';
num=length(bits_list);
fps=25;
for i=1:num
    file_name=bits_list{i};
    full_name=[file_path,file_name];
    bits_data_as265=dlmread(full_name);
    [X,Y,len]=calc_bitrate_per_second(bits_data_as265,fps);
    %split bitrate value from the file_name string
    para=strrep(file_name,'hfz_vbr_test','');
    para=strrep(para,'_bits.txt','');
    S=regexp(para, 'x', 'split');
    bitrate=str2double(S(1));
    vbv_maxrate=str2double(S(2));
    vbv_bufsize=str2double(S(3)); 
    legend_str=['bitrate=',num2str(bitrate),' vbv\_maxrate=',num2str(vbv_maxrate),...
        ' vbv\_bufsize=',num2str(vbv_bufsize)];
    h=figure('name',full_name);
    plot(X,Y);
    grid on,hold on
    y=ones(1,len)*bitrate;
    plot(X,y,'r');    
    title(legend_str);
    set(gcf,'outerposition',get(0,'screensize'));
    png_name=strrep(full_name,'txt','png');
    fprintf('%s ',png_name);
    saveas(h,png_name,'png')
    close(h)
    fprintf('.\n');
end


