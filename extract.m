%��֤ˮӡ������
function [ILL1,ILL2,ILL3]=extract(after,key1,key2)
%��ˮӡͼ��IIW���λ����õ�II����ȡIIW���λ�õ�ˮӡW
[IIW,II,W,L]=read2(after);
%������Կkey2�Ļ������У������õ���ַ��������A
A=permutation(L,key2);
%��A��W�����ҵõ���ֵ����ILB
ILB=unscamble(W,A);
%��ILBתΪʮ���ƾ���ILL1
ILL1=bin_dec(ILB);
%II���ж�άһ��С���ֽ�õ���Ƶϵ��LL
LL=wavelet(II);
%������Կ key1���� LL���б��������õ�������Ƶϵ��ILL2
ILL2=quantize(LL,key1);
%�����ֵ��Ƶϵ������|ILL1-ILL2|����������ֵ��Ƶѹ��ͼ��
ILL3=write2(ILL1,ILL2);
end

