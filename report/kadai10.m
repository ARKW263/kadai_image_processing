% 課題10 画像のエッジ抽出
% 2017.12.19 NAGASAWA

% 次のプログラムを参考にして，エッジ抽出をおこなう．

% 更新履歴
% 2017.12.19 第一バージョン

ORG = imread('cat1.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); %カラーからグレイへの変換
figure(1)
imagesc(ORG); colormap('gray'); colorbar;% 画像表示
axis image

%----------- プレウィット法 -----------
IMG = edge(ORG,'prewitt'); % エッジ抽出(プレウィット法)
figure(2)
imagesc(IMG); colormap('gray'); colorbar;% 画像表示
axis image

%------------ ソベル法 ------------
IMG = edge(ORG,'sobel'); % エッジ抽出(ソベル法)
figure(3)
imagesc(IMG); colormap('gray'); colorbar;% 画像表示
axis image

%------------ キャニー法 --------------
IMG = edge(ORG,'canny'); % エッジ抽出(キャニー法)
figure(4)
imagesc(IMG); colormap('gray'); colorbar;% 画像表示
axis image

return