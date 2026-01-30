I = imread('lowcontrast.jpg');
h = histogram(I);
H = cumttist(h);
eH = eqttist(H,I);
subplot(3,1,1);imshow(I);hold on; subplot(3,1,2);
bar(h);hold on;subplot(3,1,3);bar(eH);