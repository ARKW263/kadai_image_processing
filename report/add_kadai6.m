% 疑似濃淡表示(組織的ディザ法) - 課題6の発展事項として自習
% 2017.11.27 NAGASAWA

% 組織的ディザ法のディザマトリックスを作成する．
% また，作成したディザマトリックスを用いて疑似濃淡表示を行い，
% MATLABの関数ditherを使用した場合と比較する．

% 更新履歴
% 2017.11.27 第一バージョン(ディザマトリックス生成部分)
% 2017.12.19 疑似濃淡表示部分の作成・既成の関数との比較部分追加

clear; close all % 変数クリア・ウィンドウを全て閉じる

%----------- 原画像の読み込み・表示 ------------
ORG=imread('cat2.jpg'); % 原画像の入力(512×512)
ORG = rgb2gray(ORG);
figure(1)
imagesc(ORG); colormap(gray); colorbar; % 画像の表示
axis image


%--------------- ディザマトリックスの生成 ----------------
Dn = 0; % Dnのn=1のときをセットしておく
nmax = 4; % 2^nの値を入れる
nmax = log2(nmax); % nの最大値からDnを求めるfor文の回数を求める

ss = 2.^(1:nmax); % 2^nの配列

for ii=1:nmax
    n = ss(ii);
    Dn = [4*Dn,4*Dn+2*ones(n/2);4*Dn+3*ones(n/2),4*Dn+ones(n/2)];
end

Dn = Dn*256/max(max(Dn)); % ディザマトリックスの最大値が256になるように正規化

%------- 作成したディザマトリックスを用いて疑似濃淡表示 -----------
for ii=1:512/4
    for jj=1:512/4
        % 4×4のブロックを移動させながらディザマトリックスと原画像の大小比較
        IMG1(4*ii-3:4*ii,4*jj-3:4*jj) = ORG(4*ii-3:4*ii,4*jj-3:4*jj)>=Dn;
    end
end

figure(2)
imagesc(IMG1); colormap(gray); colorbar; % 画像の表示
axis image


%----------- 関数ditherを用いた疑似濃淡表示 ------------
IMG2 = dither(ORG); % ディザ法による二値化
figure(3)
imagesc(IMG2); colormap(gray); colorbar; % 画像の表示
axis image

return
