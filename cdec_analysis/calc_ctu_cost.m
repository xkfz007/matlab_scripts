mb_costs_as265=dlmread('E:\encoder_test_output\DEBUG_CTU_COST_OF_FRAME.txt');
mb_costs_x265=dlmread('D:\workspace\src.x265\multicoreware-x265-hfz\output\DEBUG_CTU_COST_OF_FRAME.txt');
[m,n]=size(mb_costs_as265);
m2=floor(m/4);
vm=ones(m2,1)*4;
m22=m-m2*4;
if m22~=0
    vm=[vm m22];
end

n2=floor(n/4);
vn=ones(n2,1)*4;
n22=n-n2*4;
if n22~=0
   vn=[vn;n22]; 
end
cell_as265=mat2cell(mb_costs_as265,vm,vn);
cell_x265=mat2cell(mb_costs_x265,vm,vn);
ctu_costs_as265=ones(length(vm),length(vn));
ctu_costs_x265=ones(length(vm),length(vn));
for j=1:length(vm)
    for i=1:length(vn)
        ctu_costs_as265(j,i)=sum(sum(cell_as265{j,i}));
        ctu_costs_x265(j,i)=sum(sum(cell_x265{j,i}));
    end
end





