% 課題5 判別分析法
% 2017.12.17 NAGASAWA

% 判別分析法を用いて画像を二値化する．

% 更新履歴
% 2017.12.17 第一バージョン

ORG=imread('cat1.jpg'); % 原画像の入力
ORG = rgb2gray(ORG); % カラー画像を白黒濃淡画像へ変換
figure(1)
imagesc(ORG); colormap(gray); colorbar;
axis image

H = imhist(ORG); %ヒストグラムのデータを列ベクトルEに格納
myu_T = mean(H); % 全画素の輝度値の平均
max_val = 0;
max_thres = 1;
for i=1:255
    C1 = H(1:i); %ヒストグラムを2つのクラスに分ける
    C2 = H(i+1:256);
    n1 = sum(C1); %画素数の算出
    n2 = sum(C2);
    myu1 = mean(C1); %平均値の算出
    myu2 = mean(C2);
    sigma1 = var(C1); %分散の算出
    sigma2 = var(C2);
    sigma_w = (n1 *sigma1+n2*sigma2)/(n1+n2); %クラス内分散の算出
    sigma_B = (n1 *(myu1-myu_T)^2+n2*(myu2-myu_T)^2)/(n1+n2); %クラス間分散の算出
    
    %------- クラス間分散/クラス内分散が最大値となるiを求める(閾値) -------
    if max_val<sigma_B/sigma_w
        max_val = sigma_B/sigma_w;
        max_thres =i;
    end;
end;

IMG = ORG > max_thres; % 原画像の輝度値が求めた閾値より大きければ1，小さければ0
figure(2)
imagesc(IMG); colormap(gray); colorbar;
axis image

return