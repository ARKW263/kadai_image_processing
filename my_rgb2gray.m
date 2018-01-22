% 追加課題 グレースケール変換
% 2018.01.22 NAGASAWA

% my_rgb2gray.m

% カラー画像をグレースケールに変換する手法を複数種類検討する．

% 更新履歴
% 2018.01.22 第一バージョン

clear; % 変数のオールクリア
close all;

% ----- 原画像(カラー) -----
ORG=imread('cat1.jpg'); % 原画像の入力
figure(1)
imagesc(ORG); axis image; % 原画像の表示

% ----- 関数rgb2grayを用いたグレースケール変換 -----
MATFUNC = rgb2gray(ORG); % 関数rgb2grayを用いたグレースケール変換
figure(2)
imagesc(MATFUNC); axis image; % 画像の表示
colormap(gray); colorbar;

% ----- 単純平均法 -----
IM_AVE = (ORG(:,:,1)+ORG(:,:,2)+ORG(:,:,3))/3;
figure(3)
imagesc(IM_AVE); axis image; % 画像の表示
colormap(gray); colorbar;

% ----- 中間値法 -----
IM_CEN = (max(ORG,[],3)+min(ORG,[],3))/2;
figure(4)
imagesc(IM_CEN); axis image; % 画像の表示
colormap(gray); colorbar;

% ----- Gチャンネル法 -----
G_CH = ORG(:,:,2);
figure(5)
imagesc(G_CH); axis image; % 画像の表示
colormap(gray); colorbar;

% ----- NTSC係数による加重平均法 -----
NTSC = 0.29891*ORG(:,:,1)+0.58661*ORG(:,:,2)+0.11448*ORG(:,:,3);
figure(6)
imagesc(G_CH); axis image; % 画像の表示
colormap(gray); colorbar;

return
