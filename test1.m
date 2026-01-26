I = imread('lena1.jpg');
h = histogram(I);

subplot(1,2,1);imshow(rgb2gray(I));hold on;
subplot(1,2,2);plot(h);