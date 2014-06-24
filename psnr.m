function ps=psnr(I,II)
[m,n]=size(I);
diff=double(I)-double(II);
mse=sum(diff(:).^2)/(m*n);
ps=10*log10(255*255/mse);
end

