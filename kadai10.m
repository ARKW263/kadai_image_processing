% �ۑ�10 �摜�̃G�b�W���o
% 2017.12.19 NAGASAWA

% ���̃v���O�������Q�l�ɂ��āC�G�b�W���o�������Ȃ��D

% �X�V����
% 2017.12.19 ���o�[�W����

ORG = imread('cat1.jpg'); % ���摜�̓���
ORG = rgb2gray(ORG); %�J���[����O���C�ւ̕ϊ�
figure(1)
imagesc(ORG); colormap('gray'); colorbar;% �摜�\��
axis image

%----------- �v���E�B�b�g�@ -----------
IMG = edge(ORG,'prewitt'); % �G�b�W���o(�v���E�B�b�g�@)
figure(2)
imagesc(IMG); colormap('gray'); colorbar;% �摜�\��
axis image

%------------ �\�x���@ ------------
IMG = edge(ORG,'sobel'); % �G�b�W���o(�\�x���@)
figure(3)
imagesc(IMG); colormap('gray'); colorbar;% �摜�\��
axis image

%------------ �L���j�[�@ --------------
IMG = edge(ORG,'canny'); % �G�b�W���o(�L���j�[�@)
figure(4)
imagesc(IMG); colormap('gray'); colorbar;% �摜�\��
axis image

return