log_dist=[29.654 32.657 35.907 39.358];
log_rate=[2.962 2.9746 3.295 3.6095];
figure
plot(log_rate,log_dist,'-*r')
%%
log_dist=[0.9125 0.9323 0.9435 0.9532];
log_rate=[2.941 2.9746 3.295 3.6095];
figure
plot(log_rate,log_dist,'-*r')
%%
a=[1996.57	0.9776
1082.52	0.9533
563.6	0.9047
291.28	0.8197

];
b=[1922.58	0.9808275
1029.46	0.9618734
547.48	0.9243652
297.82	0.8555396
 
];
rate_a=log10(a(:,1));
rate_b=log10(b(:,1));
ssim_a=-10*log10(1-a(:,2));
ssim_b=-10*log10(1-b(:,2));
figure
grid on
hold on
plot(rate_a,ssim_a,'-r*')
plot(rate_b,ssim_b,'-b+')
