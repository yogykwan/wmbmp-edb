%Ƕ��ˮӡ������
function [I,II,W,IIW]=embed(before,after,key1,key2)
%ԭʼͼ��I���λ����õ�II
[I,II,L]=read1(before);
%II���ж�άһ��С���ֽ�õ���Ƶϵ��LL
LL=wavelet(II);
%������Կkey1����LL���б��������õ�������Ƶϵ��ILL
ILL=quantize(LL,key1);
%��ILLתΪ��ֵ����ILB
ILB=dec_bin(ILL);
%������Կkey2�Ļ������У������õ���ַ��������A
A=permutation(L,key2);
%��A��ILB���ҵõ�ˮӡW
W=scamble(ILB,A);
%II��ˮӡW��ӵõ���ˮӡͼ��IIW
IIW=write1(I,II,W,after);
end
