Img = im2double(imread('bigtiger.jpeg'));
%获得灰度矩阵
A=rgb2gray(Img);
[m,n]=size(A);
[U,S,V]=svd(A);
figure, plot(diag(S), '*'), title('Singular Values')
Ak=zeros(m,n);

for k = 1:24
    disp(['SVD terms: ', num2str(k)])
    Ak = Ak + U(:,k) * S(k,k) * V(:,k)';
    subplot(5, 5, k), imshow(Ak, []), title(['rank = ', num2str(k)])
    disp(['rank: ', num2str(rank(Ak))])
    %disp(['Mean-squared Error: ', num2str(immse(A, Ak))])
    disp(' ')
end
subplot(5,5,25), imshow(A, []), title('Original')
