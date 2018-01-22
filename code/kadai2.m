% �ۑ�2 �K�����Ƌ^���֊s
% 2017.12.14 NAGASAWA

% 2�K���C4�K���C8�K���̉摜�𐶐�����D

% �X�V����
% 2017.12.14 ���o�[�W����

clear; % �ϐ��̃I�[���N���A

ORG=imread('cat1.jpg'); % ���摜�̓���
ORG = rgb2gray(ORG); colormap(gray); colorbar;
imagesc(ORG); axis image; % �摜�̕\��
pause; % �ꎞ��~

% 2�K���摜�̐���
IMG = ORG>128; % ��f��128���傫���Ƃ�1�C����ȉ�0
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% 4�K���摜�̐���
IMG0 = ORG>64;  % ��f��64���傫���Ƃ�1�C����ȉ�0
IMG1 = ORG>128; % ��f��128���傫���Ƃ�1�C����ȉ�0
IMG2 = ORG>192; % ��f��192���傫���Ƃ�1�C����ȉ�0
IMG = IMG0 + IMG1 + IMG2;
imagesc(IMG); colormap(gray); colorbar;  axis image;
pause;

% 8�K���摜�̐���
IMG = zeros(450,450); % �摜�̏o�͗p�z����[���ɂ���
for ii=1:7
    IMG = IMG + (ORG>(256*ii/8));
      % ��f��256*ii/8���傫���Ƃ�1�C����ȉ�0
end
imagesc(IMG); colormap(gray); colorbar;  axis image;

return
