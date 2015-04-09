cu_cost_x265=dlmread('cu_cost_x265.txt');
cu_cost_as265=dlmread('cu_cost_as265.txt');
len=length(cu_cost_x265);
figure,
grid on
hold on
x=1:len;
plot(x,cu_cost_x265,'r');
plot(x,cu_cost_as265,'b');

