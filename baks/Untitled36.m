sad=[8871621
6434411
6434411
6926149
7138982
7265450
7271450
7228596
7316087
7289541
7368291
7244240
7297497
7300464
7331775
7278550
7329073
7281740
7337129
7262089
7309510
7217501
7340879
7203516
7249664
7163646
7275581
7174356
7284262
7151826
7151555
6996817
7060553
6957779
6977229
6840084
6856317
6775265
6830838
6650514
6738805
6646779
6700123
6576880
6671898
6562095
6719365
6681414
6802848
6686029
6803625
6760464
8713509
6809196
6921567
6892505
6894021
6822263
6850102
6843938
6879554
6845035
6869653
6833329
6905294
6875674
6891896
6844965
6919898
6834038
6880461
6833142
6868838
6780013
6822371
6799782
6854888
6687760
6710422
6699682
6785013
6652762
6595475
6540802
6597898
6540600
6595539
6571646
6590812
6533128
6566814
6493050
6672838
6543027
6625536
6608322
6678078
6663051
6725725
6615627
6648644
6635404
6688560
6626799
8433083
6483694
6514517
6519418
6549149
6531747
6538959
6562063
6569553
6574455
6553687
6507686
6516470
6487544
6515690
6470062
6490213
6469896
6496980
6465316
6499449
6501388
6541241
6477307
6517053
6512714
6573165
6526531
6592157
6536783
6627555
6568452
6628643
6585973
6648933
6612151
6678813
6644378
6728834
6645374
6766801
6646460
6752106
6679115
6734658
6648762
6790951
6729026
6823636
6752644
6843945
6778696
8484448
6584531
6689212
6733178
6783768
6720943
6773974
6756135
6844243
6775387
6871981
6815951
6909769
6823031
6918532
6791474
6891261
6757792
6839067
6756001
6967018
6769779
6958556
6768276
6856710
6663348
6760773
6707146
6877590
6784843
6965603
6751768
6927901
6813926
6988406
6906676
7093491
6864064
6962963
6816526
6912974
6785197
6875235
6797256
6873414
6776053
6840623
6759175
6839506
6726313
6823858
6682704
8404612
6558432
6644790
6572699
6640750
6583442
6673050
6497108
6578728
6489166
6545731
6444683
6514502
6432619
6503969
6462786
6529740
6461661
6510269
6453033
6525195
6499167
6544690
6491583
6549450
6491826
6502439
6463578
6495396
6450607
6507782
6450881
6475834
6442226
6478132
6464190
6557056
6452449
6464012
6328914
6339558
6287522
6336225
6284427
6320768
6252083
6293730
6241132
6276323
6244594
6272732
6230821
8264618
6259711
6302469
6292552
6290342
6227063
6252350
6233298
6333420
6284306
6309864
6285656
6340996
6308610
6323731
6282045
6317243
6306323
6343078
6265111
6321924
6291498
6276460
6244303
6268868
6269675
6303419
6266317
6289970
6250323
6269399
6259527
6299600
6237162
6292266
6262604
6315612
6256819
6363790
];
len=length(sad);
short_term_cplxcount=zeros(len,1);
short_term_cplxsum=zeros(len,1);
for i=2:len
    short_term_cplxsum(i)=short_term_cplxsum(i-1)*0.5+sad(i);
    short_term_cplxcount(i)=short_term_cplxcount(i-1)*0.5+1;    
end
figure,plot(short_term_cplxcount,short_term_cplxsum)
