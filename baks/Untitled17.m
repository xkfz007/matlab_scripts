a=[0.4131625	0.2748375	-0.048	-0.283	-0.053	-0.018	-0.036
1.4893375	1.1971625	0.6591625	0.2918375	0.1363375	0.0838375	-0.0796625
9.728	8.61	6.436	4.77465	1.95335	1.01065	0.04535
-1.086	-0.84065	-0.558	-0.632	-0.50535	-0.47935	-0.232
-15.1786	-14.5462	-12.3804	-9.2114	-3.6962	-1.8928	-0.5134
-1.6824	-1.6752	-1.68	-2.1272	-1.1776	-0.884	-0.2864
-0.8146675	-0.8373325	-0.9353325	-0.6588	-0.6314325	-0.3251	-0.1643675
3.88635	3.3901	3.0618	2.6576	0.92385	0.28055	-0.0359
11.4936	10.3368	7.7248	5.1868	2.0676	1.1048	0.1484
9.4893	8.6949	6.2321	4.0102	1.2707	0.5253	-0.0798
1.622755556	1.531911111	1.418133333	0.521688889	-0.142133333	-0.1984	-0.124
-0.426488889	-0.287822222	-0.195733333	-0.066222222	-0.142666667	-0.180888889	0.026755556
-5.062	-4.594	-3.6868	-3.0616	-1.5024	-0.6964	0.1816
-5.4327	-5.1907	-4.5103	-3.4757	-1.5352	-0.7147	-0.037
-3.436622222	-3.0856	-2.319288889	-1.7088	-0.5072	-0.110666667	-0.065511111
-0.3528	-0.0552	0.5576	0.7228	-0.71	-1.0792	-0.3416
0.1198	0.3641	0.5213	0.0132	-1.1429	-0.6558	-0.2124
-2.71372	-2.67288	-2.3683	-1.93396	-1.25944	-0.87252	-0.41854
-3.7905	-3.708	-3.4041625	-3.024	-1.4311625	-0.8068375	-0.2841625
-1.2128	-0.9936	-0.6004	-0.5204	-0.6816	-0.4396	-0.2868
-4.7176	-4.5428	-3.9893	-3.1223	-1.5901	-0.9169	-0.2673
-6.608577778	-5.261777778	-2.365377778	0.055022222	2.221733333	3.036088889	2.146
0.857272222	-0.075377778	-2.313361111	-3.432355556	-3.3504	-3.918816667	-4.224561111
1.185155556	1.324266667	1.000888889	0.574488889	-0.316711111	-0.116177778	-0.1408
1.531733333	1.528711111	0.846222222	0.518755556	-0.061688889	0.058311111	0.147466667
-6.407466667	-6.046044444	-5.183466667	-3.924622222	-2.059466667	-1.042133333	-0.236622222
];
ratetol1_0=a(:,1);
ratetol0_8=a(:,2);
ratetol0_5=a(:,3);
ratetol0_3=a(:,4);
ratetol0_1=a(:,5);
ratetol0_05=a(:,6);
ratetol0_01=a(:,7);
figure,
x=1:27;
hold on
plot(1:length(ratetol1_0),ratetol1_0,'+r-')

plot(1:length(ratetol0_8),ratetol0_8,'+g-')
plot(1:length(ratetol0_5),ratetol0_5,'+y-')
plot(1:length(ratetol0_3),ratetol0_3,'+y-')
plot(1:length(ratetol0_1),ratetol0_1,'+c-')
plot(1:length(ratetol0_05),ratetol0_05,'+b-');
plot(1:length(ratetol0_01),ratetol0_01,'+b-');
legend('ratetol=1.0','ratetol=0.8','ratetol=0.5','ratetol=0.3','ratetol=0.1','ratetol=0.05','ratetol=0.01')

