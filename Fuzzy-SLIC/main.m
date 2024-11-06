clear all;clc;close all;

% name=[
%  '130034',
%  '145053',
%  '206097',
%  '226033',
%  '24077',
%  '241004',
%  '300091',
%  '35091',
%  '45077',
%  '68077'
%  ];

n = '106025';
img=imread(['../superi/',n,'.jpg']);
% %I=imfilter(img,gaus);

% x = img;
% x(:,:,1) = medfilt2(img(:,:,1));
% x(:,:,2) = medfilt2(img(:,:,2));
% x(:,:,3) = medfilt2(img(:,:,3));
superpixelNum=400;
ratio=0.02;

[labels1, numlabels1] = FuzzySLIC(img,superpixelNum,5);
im1 = DisplaySuperpixel(labels1,img,n);
% im2 = DisplaySuperpixel(labels2,im1,n);
subplot(1, 2,2), imshow(im1, []);