%认证水印主函数
function [ILL1,ILL2,ILL3]=extract(after,key1,key2)
%含水印图像IIW最低位清零得到II，提取IIW最低位得到水印W
[IIW,II,W,L]=read2(after);
%基于密钥key2的混沌序列，排序后得到地址有序序列A
A=permutation(L,key2);
%用A对W逆置乱得到二值矩阵ILB
ILB=unscamble(W,A);
%将ILB转为十进制矩阵ILL1
ILL1=bin_dec(ILB);
%II进行二维一级小波分解得到低频系数LL
LL=wavelet(II);
%基于密钥 key1，对 LL进行标量量化得到量化低频系数ILL2
ILL2=quantize(LL,key1);
%计算差值低频系数矩阵|ILL1-ILL2|，并画出差值低频压缩图像
ILL3=write2(ILL1,ILL2);
end

