%�õ���ֵ��Ƶ��������
function ILL3=write2(ILL1,ILL2)
ILL3=imabsdiff(ILL1,ILL2);
[m,n]=size(ILL3);
for i=1:m
    for j=1:n
        %�Է�����ð�ɫ������
        if ILL3(i,j)>0
            ILL3(i,j)=255;
        end
    end
end
end

