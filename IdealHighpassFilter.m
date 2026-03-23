I = imread('cameraman.png'); 
I = im2double(I); 
if length(size(I))==3 
I = rgb2gray(I); 
end 
[M, N] = size(I); 
F = fft2(I); 
F_shift = fftshift(F); 
D0 = 30; 
[u, v] = meshgrid(-N/2:N/2-1, -M/2:M/2-1); 
D = sqrt(u.^2 + v.^2);
H = D > D0;  
G = H .* F_shift; 
K = real(ifft2(ifftshift(G))); 
imshow(K, []); 
title('High Pass Filtered Image'); 
figure, 
subplot(1,3,1); imshow(I); subplot(1,3,2); imshow(J);  
subplot(1,3,3); imshow(K);
