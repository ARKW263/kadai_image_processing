% �ۑ�8 ���x�����O
% 2017.12.19 NAGASAWA

% ��l�����ꂽ�摜�̘A�������Ƀ��x��������D

% �X�V����
% 2017.12.18 ���o�[�W����

ORG = imread('cat1.jpg'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�
figure(1)
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
axis image

figure(2)
IMG = ORG > 128; % 臒l128�œ�l��
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
axis image

figure(3)
IMG = bwlabeln(IMG);
imagesc(IMG); colormap(jet); colorbar; % �摜�̕\��
axis image

return