%��ȡ��ˮӡͼ��õ����λ����ͼ���ˮӡ
function [IIW,II,W,L]=read2(name)
IIW=imread(name);
II=bitand(IIW,254);
W=bitand(IIW,1);
[m,n]=size(IIW);
L=m*n/4;
end

