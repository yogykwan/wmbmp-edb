%读取含水印图像得到最低位清零图像和水印
function [IIW,II,W,L]=read2(name)
IIW=imread(name);
II=bitand(IIW,254);
W=bitand(IIW,1);
[m,n]=size(IIW);
L=m*n/4;
end

