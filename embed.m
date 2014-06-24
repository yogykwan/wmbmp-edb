%嵌入水印主函数
function [I,II,W,IIW]=embed(before,after,key1,key2)
%原始图像I最低位清零得到II
[I,II,L]=read1(before);
%II进行二维一级小波分解得到低频系数LL
LL=wavelet(II);
%基于密钥key1，对LL进行标量量化得到量化低频系数ILL
ILL=quantize(LL,key1);
%将ILL转为二值矩阵ILB
ILB=dec_bin(ILL);
%基于密钥key2的混沌序列，排序后得到地址有序序列A
A=permutation(L,key2);
%用A对ILB置乱得到水印W
W=scamble(ILB,A);
%II与水印W相加得到含水印图像IIW
IIW=write1(I,II,W,after);
end
