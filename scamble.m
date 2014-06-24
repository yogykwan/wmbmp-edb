%ÖÃÂÒµÃµ½Ë®Ó¡
function W=scamble(ILB,A)
[m,n]=size(ILB);
W=uint8(zeros(m*2,n*2));
for i=1:m
    for j=1:n
        mat=cell2mat(ILB(A(i+m*j-m)));
        for p=1:2
            for q=1:2
                W(2*i-2+p,2*j-2+q)=mat(p,q)-'0';
            end
        end
    end
end
end

