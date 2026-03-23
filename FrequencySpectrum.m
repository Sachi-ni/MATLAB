img = imread('camerman.jpg');
img = im2double(img);

F=fft2(img);
F_shift=fftshift(F);

figure,
imshow(log(1+abs(F_shift)),[]); title('Frequency Spectrum');
