%篡改攻击
function [I,Ia,Ib,Ic]=attack(name,percent)
I=imread(name);
percent=sqrt(percent/100);
[m,n]=size(I);
mk=m*percent;
nk=n*percent;
%篡改图像内容和水印
Ia=I;
for i=1:mk
    for j=1:nk
        Ia(i,j)=bitand(Ia(i,j),0);
    end
end
imwrite(Ia,strcat('a_',name));
%篡改图像内容
Ib=I;
for i=1:mk
    for j=1:nk
        Ib(i,j)=bitand(Ib(i,j),1);
    end
end
imwrite(Ib,strcat('b_',name));
%篡改水印
Ic=I;
for i=1:mk
    for j=1:nk
        Ic(i,j)=bitand(Ic(i,j),254);
    end
end
imwrite(Ic,strcat('c_',name));
end
