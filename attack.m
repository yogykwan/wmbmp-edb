%�۸Ĺ���
function [I,Ia,Ib,Ic]=attack(name,percent)
I=imread(name);
percent=sqrt(percent/100);
[m,n]=size(I);
mk=m*percent;
nk=n*percent;
%�۸�ͼ�����ݺ�ˮӡ
Ia=I;
for i=1:mk
    for j=1:nk
        Ia(i,j)=bitand(Ia(i,j),0);
    end
end
imwrite(Ia,strcat('a_',name));
%�۸�ͼ������
Ib=I;
for i=1:mk
    for j=1:nk
        Ib(i,j)=bitand(Ib(i,j),1);
    end
end
imwrite(Ib,strcat('b_',name));
%�۸�ˮӡ
Ic=I;
for i=1:mk
    for j=1:nk
        Ic(i,j)=bitand(Ic(i,j),254);
    end
end
imwrite(Ic,strcat('c_',name));
end
