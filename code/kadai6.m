% �ۑ�6 �摜�̓�l��
% 2017.12.17 NAGASAWA

% ���L�̃v���O�������Q�l�ɂ��ĉ摜���l������D

% �X�V����
% 2017.12.17 ���o�[�W����

clear; % �ϐ��̃I�[���N���A
ORG=imread('cat1.jpg'); % ���摜�̓���
ORG = rgb2gray(ORG);
figure(1)
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
axis image

IMG = ORG>128; % 臒l128�ɂ���l��
figure(2)
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
axis image

IMG = dither(ORG); % �f�B�U�@�ɂ���l��
figure(3)
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
axis image

return