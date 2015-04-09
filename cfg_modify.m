path='E:\sequences\per-sequence\';
cd(path);
cfg_list=getAllFiles('.');
len=length(cfg_list);
%test_file=fopen('../a.txt','a+');
for i=1:len
    filename=cfg_list{i};
    %disp(filename);
    %[pathstr, name, ext, versn] = fileparts(filename);
        fid = fopen(filename,'rt+');
tline = fgets(fid);
tline=fgets(fid);
pos1=strfind(tline,'\');
pos2=strfind(tline,'.');
%[pos1(end) pos2]
name=tline(pos1(end)+1:pos2-1);
BitstreamFile=['BitstreamFile                 : ' name '_str.bin'];
ReconFile=['ReconFile                     : ' name '_rec.yuv'];
%disp(BitstreamFile);
%disp(ReconFile);
status = fseek(fid, 0, 'eof')
fprintf(fid,'%s\n',BitstreamFile);
fprintf(fid,'%s\n',ReconFile);
fclose(fid);

end
%fclose(test_file);