% 課題9 メディアンフィルタと先鋭化
% 2017.12.19 NAGASAWA

% メディアンフィルターを適用し，ノイズ除去をする．

% 更新履歴
% 2017.12.19 第一バージョン

ORG = imread('cat1.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
figure(1)
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
axis image

ORG = imnoise(ORG,'salt & pepper',0.02); % ごま塩ノイズ添付
figure(2)
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
axis image

IMG = filter2(fspecial('average',3),ORG); % 平滑化フィルタで雑音除去
figure(3)
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
axis image

IMG = medfilt2(ORG,[3 3]); % メディアンフィルタで雑音除去
figure(4)
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
axis image

%{
f1=[0,-1,0;-1,5,-1;0,-1,0]; % フィルタの設計
IMG = filter2(f1,ORG,'same'); % フィルタの適用
figure(5)
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
axis image
%}

f2=[7,-1,3;1,5,1;5,-1,2]; % フィルタの設計
IMG = filter2(f2,ORG,'same'); % フィルタの適用
figure(6)
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
axis image

return