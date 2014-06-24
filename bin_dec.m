%二值矩阵还原十进制
function D=bin_dec(B)
[m,n]=size(B);
D=uint8(zeros(m,n));
for i=1:m
    for j=1:n
        T2=cell2mat(B(i,j));
        temp=T2(1,2);
        T2(1,2)=T2(2,1);
        T2(2,1)=temp;
        T1=reshape(T2,1,4);
        D(i,j)=bin2dec(T1);
    end 
end
end

