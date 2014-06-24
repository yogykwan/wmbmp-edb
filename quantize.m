%标量量化
function ILL=quantize(LL,key)
%随机化种子
rand('seed',key);
ma=max(max(LL));
mi=min(min(LL));
%计算量化步长
q=ceil(510/32);
%生成随机序列
s=zeros(1,16);
for i=1:16
    s(i)=rand()*q/2-q/4;
end
b=zeros(1,16);
%计算分段函数分界点
for i=1:16
    b(i)=(i-1)*q+s(i);
end
%按分段函数量化
[m,n]=size(LL);
ILL=uint8(zeros(m,n));
for i=1:m
    for j=1:n
        for k=1:15
            if LL(i,j)<b(k+1)
                ILL(i,j)=k-1;
                break
            end
        end
        if LL(i,j)>=b(16)
            ILL(i,j)=15;
        end
    end
end
end

