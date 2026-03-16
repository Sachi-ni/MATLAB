I=imread('lena.jfif');
if length(size(I))==3
    I=rgb2gray(I);
end

H1 = fspecial('average');
H2 = fspecial('gauss');
H3 = fspecial('laplacian');
H4 = fspecial('unsharp');

Box = imfilter(I,H1);
Gauss = imfilter(I,H2);
MexHat = imfilter(I,H3);
USM = imfilter(I,H4);

subplot(2,3,1);imshow(I);hold on;
subplot(2,3,2);imshow(Box); hold on;
subplot(2,3,3);imshow(Gauss); hold on;
subplot(2,3,4);imshow(MexHat); hold on;
subplot(2,3,5);imshow(USM);
