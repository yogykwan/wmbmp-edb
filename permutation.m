%基于混沌序列产生地址有序序列
function A=permutation(L,key)
k=key;
x=zeros(1,L);
y=zeros(1,L);
y(1)=k;
y(2)=k*y(1)*(1-y(1));
x(1)=1;
x(2)=2;
%递推生成混沌序列
for i=2:L-1
    x(i+1)=(1+0.3*(x(i-1)-1.08)+379*(x(i)*x(i))+1001*(y(i)*y(i)));
    x(i+1)=x(i+1)-floor(x(i+1)/3)*3;
    y(i+1)=k*y(i)*(1-y(i));
end
%排序
[x,A]=sort(x);
end

