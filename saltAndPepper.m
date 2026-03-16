I=imread('lena.jfif');
if length(size(I))==3
    I=rgb2gray(I);
end

I = imnoise(I, 'gaussian');

H = @(x) min(x(:));
Jmin = nlfilter(I,[3,3],H);

H = @(x) max(x(:));
Jmax = nlfilter(I,[3,3],H);

H = @(x) median(x(:));
Jmedian = nlfilter(I,[3,3],H);

subplot(1,4,1);imshow(I);hold on;
subplot(1,4,2);imshow(Jmin); hold on;
subplot(1,4,3);imshow(Jmax); hold on;
subplot(1,4,4);imshow(Jmedian);
