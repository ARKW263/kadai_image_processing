% �ۑ�3�@臒l����
% 2017.12.16 NAGASAWA

% 臒l��4�p�^�[���ݒ肵,臒l���������摜��\��������D

% �X�V����
% 2017.12.14 ���o�[�W����

clear; % �ϐ��̃I�[���N���A

ORG=imread('cat1.jpg'); % ���摜�̓���
ORG= rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
axis image;
pause;

IMG = ORG > 64; % �P�x�l��64�ȏ�̉�f��1�C���̑���0�ɕϊ�
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 96; % �P�x�l��96�ȏ�̉�f��1�C���̑���0�ɕϊ�
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 128; % �P�x�l��128�ȏ�̉�f��1�C���̑���0�ɕϊ�
imagesc(IMG); colormap(gray); colorbar;
pause;

IMG = ORG > 192; % �P�x�l��192�ȏ�̉�f��1�C���̑���0�ɕϊ�
imagesc(IMG); colormap(gray); colorbar;

return