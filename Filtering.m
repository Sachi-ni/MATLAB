I=imread('lena.jfif');
if length(size(I))==3
    I=rgb2gray(I);
end

%applying gaussian noise
J = imnoise(I, 'gaussian');

%using average filter
A = fspecial('average' , 3);
K = imfilter(J,A);

subplot(1,3,1);imshow(I);hold on;
subplot(1,3,2);imshow(J); hold on;
subplot(1,3,3);imshow(K);
    
