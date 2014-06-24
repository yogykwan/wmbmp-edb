wmbmp-edb
============

程序说明文档
1.	功能函数
函数名	实现功能
embed	嵌入水印主函数
read1	读取原始图像并将最低位清零
wavelet	二维一级小波分解
quantize	标量量化
dec_bin	转二值矩阵
permutation	基于混沌序列产生地址有序序列
scamble	置乱得到水印
write1	生成含水印图像
extract	认证水印主函数
read2	读取含水印图像得到最低位清零图像和水印
unscamble	将水印逆置乱
bin_dec	二值矩阵还原十进制
write2	得到差值低频量化矩阵
attack	篡改攻击
detect	篡改检测主函数
2.	脚本函数
函数名	实现功能
Figure1	得到4组原始图像和含水印图像并计算PSNR
Figure2	得到改变密钥前后的低频压缩图像及差值图像
Figure3	得到三种篡改方式检测的低频压缩图像及差值图像
3.	使用方法
（1）	程序含4幅原始灰度图像lena.bmp,mena.bmp,goldhill.bmp,aerial.bmp。
（2）	为验证程序和节约空间，含水印、低频压缩等图像需运行生成。
（3）	依次运行Figure1~3脚本函数可实现相应功能并生成所需图像。
（4）	本机环境测试，Figure1~3函数运行耗时分别为20s、40s、55s。
（5）	关键注释详见源码。

