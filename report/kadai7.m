% 課題7 ダイナミックレンジの拡大
% 2017.12.17 NAGASAWA

% 画素のダイナミックレンジを0から255にせよ． 

% 更新履歴
% 2017,12,17 第一バージョン

ORG = imread('cat1.jpg'); % 画像の読み込み
ORG = rgb2gray(ORG); % 白黒濃淡画像に変換
figure(1)
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
axis image

figure(2)
imhist(ORG); % 濃度ヒストグラムを生成、表示

ORG = double(ORG);% 倍精度値に変換
mn = min(ORG(:)); % 濃度値の最小値を算出
mx = max(ORG(:)); % 濃度値の最大値を算出
ORG = (ORG-mn)/(mx-mn)*255; % 変換後の濃度値
figure(3)
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
axis image

ORG = uint8(ORG); % 8bit符号なし整数に変換
figure(4)
imhist(ORG); % 濃度ヒストグラムを生成、表示

return