%�۸ļ��������
function [I1,I2,I3,I1a,I2a,I3a,I1b,I2b,I3b,I1c,I2c,I3c]=detect(name,key1,key2)
%�õ�δ�۸�ͼ����ĵ�Ƶѹ��ͼ�񼰲�ֵͼ��
[I1,I2,I3]=extract(name,key1,key2);
%�õ��۸������ݺ�ˮӡ��ͼ����ĵ�Ƶѹ��ͼ�񼰲�ֵͼ��
[I1a,I2a,I3a]=extract(strcat('a_',name),key1,key2);
%�õ��۸������ݵ�ͼ����ĵ�Ƶѹ��ͼ�񼰲�ֵͼ��
[I1b,I2b,I3b]=extract(strcat('b_',name),key1,key2);
%�õ��۸���ˮӡ��ͼ����ĵ�Ƶѹ��ͼ�񼰲�ֵͼ��
[I1c,I2c,I3c]=extract(strcat('c_',name),key1,key2);
end

