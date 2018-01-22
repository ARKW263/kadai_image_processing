% 課題6 画像の二値化
% 2017.12.17 NAGASAWA

% 下記のプログラムを参考にして画像を二値化する．

% 更新履歴
% 2017.12.17 第一バージョン

clear; % 変数のオールクリア
ORG=imread('cat1.jpg'); % 原画像の入力
ORG = rgb2gray(ORG);
figure(1)
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
axis image

IMG = ORG>128; % 閾値128による二値化
figure(2)
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
axis image

IMG = dither(ORG); % ディザ法による二値化
figure(3)
imagesc(IMG); colormap(gray); colorbar; % 画像の表示
axis image

return