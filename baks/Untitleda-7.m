qps=[22	13	21
27	19	26
32	25	32
37	31	37
42	37	42
47	44	47
22	13	21
27	19	26
32	25	31
37	31	36
42	37	42
47	43	47
22	12	20
27	17	26
32	23	31
37	29	36
42	36	41
47	43	46
22	10	21
27	17	26
32	24	31
37	32	37
42	39	42
47	48	47
22	13	22
27	21	27
32	28	32
37	34	37
42	40	42
47	47	47
22	10	21
27	16	26
32	25	32
37	33	37
42	41	42
47	49	47
22	10	22
27	20	27
32	28	32
37	35	37
42	41	42
47	48	47
22	12	21
27	16	26
32	22	31
37	28	36
42	34	42
47	42	47
22	19	21
27	27	26
32	34	31
37	40	36
42	46	41
47	51	47
22	12	20
27	21	26
32	29	31
37	36	36
42	43	41
47	50	46
22	21	21
27	31	27
32	38	32
37	43	37
42	49	42
47	51	47
22	21	21
27	34	27
32	43	32
37	49	38
42	51	43
47	51	47
22	14	22
27	19	27
32	25	32
37	31	37
42	37	42
47	43	47
22	12	22
27	19	27
32	25	32
37	31	37
42	37	42
47	44	47
22	23	22
27	33	27
32	40	32
37	46	38
42	51	43
47	51	47
22	22	21
27	28	26
32	34	31
37	39	36
42	44	41
47	49	47
22	21	21
27	29	26
32	36	31
37	41	36
42	47	41
47	51	46
22	11	22
27	19	27
32	27	32
37	34	37
42	41	42
47	49	47
22	10	21
27	13	27
32	21	32
37	28	37
42	36	42
47	45	47
22	10	22
27	15	27
32	22	32
37	28	37
42	34	42
47	41	47
22	10	22
27	13	27
32	20	32
37	27	37
42	34	42
47	42	47
22	30	22
27	32	27
32	35	32
37	38	37
42	42	42
47	47	47
22	25	21
27	29	26
32	33	32
37	38	37
42	42	42
47	47	47
22	23	21
27	33	27
32	41	32
37	47	37
42	51	42
47	51	47
22	20	21
27	30	26
32	38	32
37	44	37
42	50	42
47	51	47
22	20	22
27	30	27
32	39	32
37	45	38
42	51	43
47	51	48
22	10	21
27	16	26
32	22	31
37	29	36
42	36	42
47	43	47
];
%%
len=size(qps,1);
figure
hold on,grid on
x=1:len;
plot(x,qps(:,1),'r');
plot(x,qps(:,3),'b');
%plot(x,qps(:,2),'g');