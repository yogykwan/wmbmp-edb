%篡改检测主函数
function [I1,I2,I3,I1a,I2a,I3a,I1b,I2b,I3b,I1c,I2c,I3c]=detect(name,key1,key2)
%得到未篡改图像检测的低频压缩图像及差值图像
[I1,I2,I3]=extract(name,key1,key2);
%得到篡改了内容和水印的图像检测的低频压缩图像及差值图像
[I1a,I2a,I3a]=extract(strcat('a_',name),key1,key2);
%得到篡改了内容的图像检测的低频压缩图像及差值图像
[I1b,I2b,I3b]=extract(strcat('b_',name),key1,key2);
%得到篡改了水印的图像检测的低频压缩图像及差值图像
[I1c,I2c,I3c]=extract(strcat('c_',name),key1,key2);
end

