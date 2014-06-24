%二维一级小波分解
function LL=wavelet(II)
[C,S]=wavedec2(II,1,'db1');
LL=appcoef2(C,S,'db1',1);
end

