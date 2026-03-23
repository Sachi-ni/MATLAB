I = imread('circles.png');
if length(size(I))==3
    I=rgb2gray(I);
end

bw = im2bw(I);
se = strel('disk',13);

eroded = imdilate(bw,se);
dilated = imerode(eroded,se);

subplot(1,2,1); imshow(I);
subplot(1,2,2); imshow(dilated);
