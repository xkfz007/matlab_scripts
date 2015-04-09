test_new11=[2422.5347	41.7433
1289.496	38.2341
636.0307	34.7998
311.1733	31.7349
3595.944	39.4241
1491.3947	35.5372
644.3213	32.0995
268.928	28.9912
8756.3136	40.7019
3661.0144	37.9075
1659.9568	34.9713
792.4432	32.0799
9320.5128	43.9631
5276.884	40.1437
2836.9728	36.3391
1435.524	32.692
18363.1733	39.4696
8399.3013	35.3745
3699.536	31.7813
1564.7813	28.4318
9482.2464	41.1501
4424.276	37.7399
1900.4696	34.4059
837.46	31.3424
];
test_new13=[2668.7213	42.6269
1389.8987	38.9923
681.3173	35.4753
335.1867	32.3528
3728.9053	39.5785
1551.6987	35.6958
663.7813	32.2509
273.0067	29.0809
8283.1696	40.48
3303.3616	37.6117
1456.184	34.6304
679.2768	31.6411
9692.0056	44.2221
5494.9016	40.3712
2950.56	36.5428
1475.5808	32.8538
18419.008	39.5277
8406.384	35.4012
3640.2573	31.7385
1528.0613	28.4071
8695.1424	40.7205
4123.6944	37.4996
1807.2328	34.2255
814.6096	31.2903

];
figure,
subplot(3,2,1)
hold on
x=1:4;
%plot(hm11(x,1),hm11(x,2),'+r-');
%plot(test_new7(x,1),test_new7(x,2),'+b-');
plot(test_new11(x,1),test_new11(x,2),'*r-');
plot(test_new13(x,1),test_new13(x,2),'+c-');
legend('test\_new11','test\_new13');
title('BasketballPass');
grid on
subplot(3,2,2)
hold on
x=5:8;
%plot(hm11(x,1),hm11(x,2),'+r-');
%plot(test_new7(x,1),test_new7(x,2),'+b-');
plot(test_new11(x,1),test_new11(x,2),'*r-');
plot(test_new13(x,1),test_new13(x,2),'+c-');
legend('test\_new11','test\_new13');
title('BlowingBubbles');
grid on
subplot(3,2,3)
hold on
x=9:12;
%plot(hm11(x,1),hm11(x,2),'+r-');
%plot(test_new7(x,1),test_new7(x,2),'+b-');
plot(test_new11(x,1),test_new11(x,2),'*r-');
plot(test_new13(x,1),test_new13(x,2),'+c-');
legend('test\_new11','test\_new13');
title('BQMall');
grid on
subplot(3,2,4)
hold on
x=13:16;
%plot(hm11(x,1),hm11(x,2),'+r-');
%plot(test_new7(x,1),test_new7(x,2),'+b-');
plot(test_new11(x,1),test_new11(x,2),'*r-');
plot(test_new13(x,1),test_new13(x,2),'+c-');
legend('test\_new11','test\_new13');
title('ChinaSpeed');
grid on
subplot(3,2,5)
hold on
x=17:20;
%plot(hm11(x,1),hm11(x,2),'+r-');
%plot(test_new7(x,1),test_new7(x,2),'+b-');
plot(test_new11(x,1),test_new11(x,2),'*r-');
plot(test_new13(x,1),test_new13(x,2),'+c-');
legend('test\_new11','test\_new13');
title('PartyScene');
grid on
subplot(3,2,6)
hold on
x=21:24;
%plot(hm11(x,1),hm11(x,2),'+r-');
%plot(test_new7(x,1),test_new7(x,2),'+b-');
plot(test_new11(x,1),test_new11(x,2),'*r-');
plot(test_new13(x,1),test_new13(x,2),'+c-');
legend('test\_new11','test\_new13');
title('RaceHorses');
grid on