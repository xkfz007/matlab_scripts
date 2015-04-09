path=pwd;
dir_list=dir(path);
n=length(dir_list);
for i=1:n
    item=dir_list(i);
    name=item.name;
    if(strcmp(name,'.')||strcmp(name,'..')||item.isdir==0)
        continue;
    end
    %disp(name)
    cd(name)
    path2=pwd;
    dir_list2=dir(path2);
    n2=length(dir_list2);
    for j=1:n2
        item2=dir_list2(j);
        name2=item2.name;
        if(strcmp(name2,'.')||strcmp(name2,'..')||item2.isdir==0)
            continue;
        end
     %   disp(name2);
        cd(name2);
        path3=pwd;
        dir_list3=dir(path3);
        n3=length(dir_list3);
        for k=1:n3
            item3=dir_list3(k);
            name3=item3.name;
            
            if(strncmp(name3,'beta_dct_res',12)==0||strncmp(name3(end-2:end),'png',3)==1)
                continue;
            end
            %      disp(name3);
            para_dct=dlmread(name3);
            [height,width]=size(para_dct);
            for ii=1:height
                for jj=1:width
                    T=para_dct(ii,jj);
                    if T<0.69727+1e-8
                        beta=0.1559*exp(3.717*T)+0.9649e-8*exp(23.63*T);
                    elseif T<0.7239+1e-8
                        beta=1513*T*T-2077*T+716.5;
                    elseif T<0.73334+1e-8
                        beta=6528*T*T-9334*T+3341;
                    elseif T<0.738+1e-8
                        beta=17380*T*T-25250*T+9175;
                    elseif T<0.7414+1e-8
                        beta=38300*T*T-56130*T+20570;
                    else
                        beta=0.06731/(0.7515-T)+3.939;
                    end
                    para_dct(ii,jj)=beta;
                end
            end
            real_name=strcat('real_',name3);
            dlmwrite(real_name,para_dct,'delimiter',' ','precision','%10.7f');
            
            h=figure(1);
            subplot(2,1,1);
            grid on
            plot(para_dct(:,1));
            subplot(2,1,2);
            hold on
            grid on
            plot(para_dct(:,2:n));
           
            png_name=strrep(real_name,'txt','png');
            fprintf('%s ',png_name);
            saveas(h,png_name,'png')
            close(h)
            fprintf('.\n');
            
        end
        fprintf('\n');

        
        cd('..');
    end
    
    cd('..')
end
