a=[34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
34
];
b=[37
38
35
29
39
40
38
41
37
31
36
30
36
34
33
38
32
36
41
38
34
28
32
37
37
34
32
35
29
39
41
38
36
41
37
32
34
28
32
37
32
37
32
37
];
c=[38
38
35
29
40
41
38
41
36
30
36
30
39
36
33
37
32
36
40
37
36
30
32
37
37
39
36
35
29
39
41
38
34
39
35
31
34
28
32
37
32
37
32
37
];
figure
plot(1:length(a),a,'+g-')
hold on
plot(1:length(b),b,'*b-')
plot(1:length(c),c,'or-')
legend('�汾1.0','new\_version','test\_new3')