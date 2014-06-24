%得到差值低频量化矩阵
function ILL3=write2(ILL1,ILL2)
ILL3=imabsdiff(ILL1,ILL2);
[m,n]=size(ILL3);
for i=1:m
    for j=1:n
        %对非零点用白色亮点标记
        if ILL3(i,j)>0
            ILL3(i,j)=255;
        end
    end
end
end

