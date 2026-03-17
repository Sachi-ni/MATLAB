I=imread('batman.jpg');
if length(size(I))==3
    I=rgb2gray(I);
end
bw = imbinarize(I);
se = strel('disk',50);

dilated = imdilate(bw,se);
eroded = imerode(bw,se);
opened = imopen(bw,se);
closed = imclose(bw,se);

figure;
subplot(2,3,1); imshow(I); title('image');
subplot(2,3,2); imshow(bw); title('Binary')
subplot(2,3,3); imshow(dilated); title('dilation');
subplot(2,3,4); imshow(eroded);title('erosion');
subplot(2,3,5); imshow(opened); title('opened');
subplot(2,3,6); imshow(closed); title('closed');
