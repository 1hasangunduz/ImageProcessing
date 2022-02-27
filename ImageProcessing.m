clear all 
close all
clc;


I=imread('ha.jpeg');    
H = fspecial('log',20);
MotionBlur = imfilter(I,H,'replicate');
I1=rangefilt(I);
I2=stdfilt(I);
J = imcomplement(I);
h = fspecial('log',18,0.4);
I3 = imfilter(I, h);
h1= fspecial('sobel');
I4 = imfilter(I,h1);
h2= fspecial('laplacian');
I5 = imfilter(I,h2);
% **Tek tek daha büyük ölçekli görmek istersek.** %
 
figure; imshow(I); title('orijinal görüntü');
figure; imshow(J); title('imcomplement');
figure; imshow(I1); title('rangefilt');
figure; imshow(I2); title('stdfilt');
figure; imshow(I3); title('logaritmasý alýnmýs');
figure; imshow(I4);title('sobel');
figure;imshow(I5); title('laplacian');
figure;imshow(MotionBlur);title('flu');

% **Tek pencerede sonucu görmek istersek.** %

% subplot(2,4,1), subimage(I); title('orijinal görüntü');
% subplot(2,4,2), subimage(J); title('imcomplement');
% subplot(2,4,3), subimage(I1); title('rangefilt');
% subplot(2,4,4), subimage(I2); title('stdfilt');
% subplot(2,4,5), subimage(I3); title('logaritmasý alýnmýs');
% subplot(2,4,6), subimage(I4); title('sobel');
% subplot(2,4,7), subimage(I5); title('laplacian');  
% subplot(2,4,8), subimage(MotionBlur); title('flu');

