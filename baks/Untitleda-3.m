a=[800	815.56	868.36	863.336
800	834.408	871.432	870.992
200	195.08	203.144	201.352
200	231.472	233.088	230.032
800	876.008	888.392	889.976
200	209.272	202.392	203.304
4000	3888.784	4151.064	4115.504
1600	1639.616	1898.488	1938.912
200	170	194.352	193.28
800	770.184	859.664	849.432
1800	1562.968	1649.656	1636.752
1800	1581.192	1705.448	1709.312
200	217.432	241.112	238.376
800	842.128	937.936	937.528
1800	1475.992	1598.344	1585.864
200	164.024	194.448	195.968
800	722.728	813.536	789.232
4000	3598.696	4562.272	4653.968
800	835.272	841.784	850.72
200	212.976	236	233.632
800	833.248	955.952	972.864
1800	1329.104	1565.968	1542.944
1800	1001.528	1452.416	1501.376
1800	1504.544	1611.552	1592.424
1800	1551.624	1655.96	1637.536
1800	1720.6	1816.368	1796.864
800	640.544	749.728	755.08
];
figure,
x=1:27;
hold on
plot(x,a(:,1),'+r-');
plot(x,a(:,2),'+c-');
plot(x,a(:,3),'+b-');
plot(x,a(:,4),'+g-');
legend('target','test\_sad22','test\_sad84','test\_sad87')