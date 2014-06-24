%½«Ë®Ó¡ÄæÖÃÂÒ
function ILB=unscamble(W,A)
[m,n]=size(W);
ILB=cell(m/2,n/2);
for i=1:m/2
    for j=1:n/2
        for p=1:2
            for q=1:2
                mat(p,q)=char(W(2*i-2+p,2*j-2+q)+'0');
            end
        end
        ILB(A(i+m/2*j-m/2))={mat};
    end
end
end

