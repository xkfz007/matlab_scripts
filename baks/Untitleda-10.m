bits=[41968
1648
3560
584
2184
568
3664
760
4120
696
3472
568
4992
824
5032
912
6712
840
6016
920
6440
768
6392
1208
7376
1832
8216
2744
8000
3440
7600
2832
7344
3312
7544
3416
7144
4008
8040
3016
7336
2768
7344
2376
5592
1744
6576
1464
5720
1456
19072
424
1872
392
4160
448
3856
1168
4304
352
2904
320
1824
296
4208
288
3400
352
2832
336
3304
376
5608
432
3560
416
3088
408
3000
352
3568
464
6208
496
3960
552
4992
1288
6680
816
5128
312
3952
264
3240
384
3648
864
7328
464
34040
408
1584
416
2168
344
2296
344
2336
704
5424
920
6368
768
4144
832
4440
1448
5568
1296
5000
1376
5472
1392
4472
1208
4600
768
4208
800
4296
864
3640
608
4504
416
7080
384
5096
824
4976
1096
6664
1368
7864
2040
8080
1472
7568
1656
43160
1568
4384
1816
7992
2280
8784
2216
6856
1744
7952
2304
7752
2016
7936
2288
8776
2680
9256
2896
10752
2088
10864
2224
8248
2400
9496
1680
7520
2040
8784
2264
8216
2296
8856
2528
9256
2720
8752
2512
7976
2320
7824
1912
6896
1848
6760
1672
6096
1312
34664
1072
3232
1016
4024
1136
5016
704
3504
656
5496
384
3928
480
3872
456
3440
488
3672
400
3048
368
4000
488
3672
464
3768
536
4192
544
5760
640
4488
1328
6016
768
4568
952
5120
824
5272
872
5552
920
5824
1000
5584
1288
6416
1144
36040
1096
5696
1264
6280
1256
5968
840
6312
1040
6256
1016
6640
800
7032
1016
6560
1032
7000
880
6632
1040
6672
856
6848
800
5656
720
5728
696
5304
832
5512
568
4592
560
4920
1216
6800
848
5032
704
4408
912
5952
832
4456
896
4976
];
sad=[1235370
712889
733117
776552
802016
827990
831251
828942
817430
816812
812853
822140
816987
813228
818729
827841
823644
812723
817107
820641
829790
820824
817745
814177
924271
842139
891313
888545
966896
1081413
1099449
1044368
1116151
1030153
1136706
1195009
1186535
1169372
1216803
1123721
1137743
1084696
1142934
1093569
1074768
1046912
1096653
1029937
991005
970120
1406300
906341
924244
934822
985351
949629
974705
1003004
1000990
953350
956623
950734
949016
957424
949709
933331
932590
925878
933570
933825
929863
923928
927412
895185
901558
883083
890514
887741
886072
888091
894015
887696
901989
852108
850988
855142
863815
934277
947235
879753
895349
872194
872549
868022
870490
874939
877384
875969
876901
841225
1431341
805314
817952
818820
815960
818668
822236
823408
821808
829201
831744
830700
946831
839354
850645
841043
850550
863944
912168
840822
861762
852060
852243
850571
851944
851851
859201
839272
853779
840854
852659
837331
846594
840343
840946
828218
829383
807398
813584
806566
812130
812459
834323
813635
834753
856688
867669
821750
839488
833960
1365173
821333
847585
853422
889490
873071
924549
890952
920463
896352
934115
912685
951778
906354
933948
926921
967792
932396
981371
969719
1047167
975980
1028994
980148
1025228
1035197
1070146
994663
1042889
1017432
1044747
1005845
1079170
1029553
1068276
1028717
1083636
1036184
1087634
1029959
1063873
1028834
1045140
1000171
1036944
1003884
1017539
1009245
1013209
1000722
1481309
932103
962798
966910
981586
1022649
1018730
985898
984589
984808
982903
961879
964372
966498
968470
965600
969644
968908
969106
969496
974207
973659
977352
966580
972703
968358
973363
972641
970633
992802
1025929
985015
994982
1036288
1037138
982361
993385
988333
993565
988226
997196
993895
1000454
993718
1017831
991219
1006775
1009887
1022161
1009218
1508200
963037
993832
978943
987878
978270
985217
985809
998919
983966
991692
991976
1026904
1013474
1028588
1002396
1015341
1012597
1021398
1007547
1019243
1009928
1019133
1011518
1021732
1007628
1014029
1013722
1022215
1012109
1013320
1004703
1006658
999701
1003356
1005397
1011457
1082581
1099280
1016788
1025809
1016200
1022032
1038722
1047506
1010285
1021402
1012935
1021076
];
bits2=bits(1:49:end);
sad2=sad(1:49:end);
figure,
len=length(sad2);
x=1:len;
plotyy(x,sad2,x,bits2)