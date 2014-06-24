%×ª¶þÖµ¾ØÕó
function B=dec_bin(D)
[m,n]=size(D);
B=cell(m,n);
for i=1:m
    for j=1:n
        T1=dec2bin(D(i,j),4);
        T2=reshape(T1,2,2);
        temp=T2(1,2);
        T2(1,2)=T2(2,1);
        T2(2,1)=temp;
        B(i,j)={T2};
    end 
end
end

