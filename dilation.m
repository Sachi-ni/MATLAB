

%Dilation
BW1 = zeros(9, 10);  %black image
BW1(4:6,4:7) = 1; %1=>white image  (4 rows:6 column, 4rowa: 7column)
SE = strel('rectangle', [1,3]); %(shape, size(H))
BW2 = imdilate(BW1, SE);

%Erosion

BW3 = imerode(BW1,SE);
subplot(1,3,1); imshow(BW1); hold on; title('image');
subplot(1,3,2); imshow(BW2); hold on; title('dilation');
subplot(1,3,3); imshow(BW3); title('erosion');
