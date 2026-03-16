I=imread('fogimg.jpg');
if length(size(I))==3
    I=rgb2gray(I);
end

P = edge(I, 'prewitt');
S = edge(I, 'sobel');
R = edge(I, 'roberts');
C = edge(I,'Canny');

subplot(3,2,1);imshow(I);hold on; title('original');
subplot(3,2,2);imshow(P); hold on; title('Prewitt');
subplot(3,2,3);imshow(S); hold on; title('Sobel');
subplot(3,2,4);imshow(R); hold on; title('Roberts');
subplot(3,2,5);imshow(C); title('Canny');
