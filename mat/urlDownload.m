file=textread('jpgURL.txt','%s');
len=length(file);
for i=1:len
    url=file{i};
    
   [f,status]= urlwrite(url,num2str(i));
   if ~status
       disp(num2str(i));
       continue;
   end
end
    