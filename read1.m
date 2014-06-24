%读取原始图像并将最低位清零
function [I,II,L]=read1(name)
I=imread(name);
II=bitand(I,254);
[m,n]=size(I);
L=m*n/4;
end

