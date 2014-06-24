#wmbmp-edb

Use fragile watermarking scheme to watermark bmp. EDB measn Encrpyt and Decrpyt Bit.

##功能函数

1. embed	嵌入水印主函数
2. read1	读取原始图像并将最低位清零
3. wavelet	二维一级小波分解
4. quantize	标量量化
5. dec_bin	转二值矩阵
6. permutation	基于混沌序列产生地址有序序列
7. scamble	置乱得到水印
8. write1	生成含水印图像
9. extract	认证水印主函数
10. read2	读取含水印图像得到最低位清零图像和水印
11. unscamble	将水印逆置乱
12. bin_dec	二值矩阵还原十进制
13. write2	得到差值低频量化矩阵
14. attack	篡改攻击
15. detect	篡改检测主函数

##脚本函数

1. Figure1	得到4组原始图像和含水印图像并计算PSNR
1. Figure2	得到改变密钥前后的低频压缩图像及差值图像
1. Figure3	得到三种篡改方式检测的低频压缩图像及差值图像

##使用说明

* 程序含4幅原始灰度图像lena.bmp,mena.bmp,goldhill.bmp,aerial.bmp。
* 为验证程序和节约空间，含水印、低频压缩等图像需运行生成。
* 依次运行Figure1~3脚本函数可实现相应功能并生成所需图像。
* 本机环境测试，Figure1~3函数运行耗时分别为20s、40s、55s。
* 关键注释详见源码。

