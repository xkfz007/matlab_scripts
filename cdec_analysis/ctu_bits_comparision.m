
%filename='OUTPUT_BITS-Apeopleonstreet_2560x1600_8_30_150.yuv-1975.txt';
%filename='OUTPUT_BITS-Apeopleonstreet_2560x1600_8_30_150.yuv-31604.txt';
filename='OUTPUT_BITS-Dblowingbubbles_416x240_8_50_500.yuv-42.txt';
as265_ctu_bits=dlmread(['F:\encoder_test_output\2pass_tests\20150908\21210_0\',filename]);
x265_ctu_bits=dlmread(['F:\encoder_test_output\2pass_tests\20150908\31210_0\',filename]);
diff_bits=as265_ctu_bits-x265_ctu_bits;
figure,
mesh(diff_bits(1:end-1,1:end-1))