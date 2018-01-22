% 課題8 ラベリング
% 2017.12.19 NAGASAWA

% 二値化された画像の連結成分にラベルをつける．

% 更新履歴
% 2017.12.18 第一バージョン

ORG = imread('cat1.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
figure(1)
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
axis image

figure(2)
IMG = ORG > 128; % 閾値128で二値化
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
axis image

figure(3)
IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; % 画像の表示
axis image

return