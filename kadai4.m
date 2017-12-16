% 課題4　画像のヒストグラム
% 2017.12.16 NAGASAWA

% 画素の濃度ヒストグラムを生成する．

% 更新履歴
% 2017.12.16 第一バージョン

clear; % 変数のオールクリア

ORG=imread('cat1.jpg'); % 原画像の入力
ORG=rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
figure(1)
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
axis image
pause;

figure(2)
imhist(ORG); % ヒストグラムの表示

return