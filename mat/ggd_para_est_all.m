path='E:\new_exprt2\exp_data_record1';
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
            
            if(strncmp(name3,'beta_dct',8)==0&&strncmp(name3,'sigma_dct',9)==0)
                continue;
            end
            %      disp(name3);
            para_dct=dlmread(name3);
            [height,width]=size(para_dct);
            
            
            h=figure(1);
            subplot(2,1,1);
            grid on
            plot(para_dct(:,1));
            subplot(2,1,2);
            hold on
            grid on
            plot(para_dct(:,2:n));
           
            png_name=strrep(name3,'txt','png');
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
