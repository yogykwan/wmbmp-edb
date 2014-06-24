%��������
function ILL=quantize(LL,key)
%���������
rand('seed',key);
ma=max(max(LL));
mi=min(min(LL));
%������������
q=ceil(510/32);
%�����������
s=zeros(1,16);
for i=1:16
    s(i)=rand()*q/2-q/4;
end
b=zeros(1,16);
%����ֶκ����ֽ��
for i=1:16
    b(i)=(i-1)*q+s(i);
end
%���ֶκ�������
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

