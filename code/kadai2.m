% ‰Û‘è2 ŠK’²”‚Æ‹^——ÖŠs
% 2017.12.14 NAGASAWA

% 2ŠK’²C4ŠK’²C8ŠK’²‚Ì‰æ‘œ‚ğ¶¬‚·‚éD

% XV—š—ğ
% 2017.12.14 ‘æˆêƒo[ƒWƒ‡ƒ“

clear; % •Ï”‚ÌƒI[ƒ‹ƒNƒŠƒA

ORG=imread('cat1.jpg'); % Œ´‰æ‘œ‚Ì“ü—Í
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % ‰æ‘œ‚Ì•\¦
pause; % ˆê’â~

% 2ŠK’²‰æ‘œ‚Ì¶¬
IMG = ORG>128; % ‰æ‘f‚ª128‚æ‚è‘å‚«‚¢‚Æ‚«1C‚»‚êˆÈ‰º0
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% 4ŠK’²‰æ‘œ‚Ì¶¬
IMG0 = ORG>64;  % ‰æ‘f‚ª64‚æ‚è‘å‚«‚¢‚Æ‚«1C‚»‚êˆÈ‰º0
IMG1 = ORG>128; % ‰æ‘f‚ª128‚æ‚è‘å‚«‚¢‚Æ‚«1C‚»‚êˆÈ‰º0
IMG2 = ORG>192; % ‰æ‘f‚ª192‚æ‚è‘å‚«‚¢‚Æ‚«1C‚»‚êˆÈ‰º0
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% 8ŠK’²‰æ‘œ‚Ì¶¬
IMG = zeros(450,450); % ‰æ‘œ‚Ìo—Í—p”z—ñ‚ğƒ[ƒ‚É‚·‚é
for ii=1:7
    IMG = IMG + (ORG>(256*ii/8));
      % ‰æ‘f‚ª256*ii/8‚æ‚è‘å‚«‚¢‚Æ‚«1C‚»‚êˆÈ‰º0
end
imagesc(IMG); colormap(gray); colorbar;  axis image;

return
