F=ones(4);
for k=2:4
for j=2:4
F(k,j)=1i^((j-1)*(k-1));
end
end
input('矩阵F_4为:')
disp(F)
C=toeplitz([2,-1,0,-1]);
[m,n]=eig(C);
input('the matrix of eigenvectors: \n')
disp(m);
disp(F/m);



