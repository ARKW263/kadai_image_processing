% �ǉ��ۑ� �O���[�X�P�[���ϊ�
% 2018.01.22 NAGASAWA

% my_rgb2gray.m

% �J���[�摜���O���[�X�P�[���ɕϊ������@�𕡐���ތ�������D

% �X�V����
% 2018.01.22 ���o�[�W����

clear; % �ϐ��̃I�[���N���A
close all;

% ----- ���摜(�J���[) -----
ORG=imread('cat1.jpg'); % ���摜�̓���
figure(1)
imagesc(ORG); axis image; % ���摜�̕\��

% ----- �֐�rgb2gray��p�����O���[�X�P�[���ϊ� -----
MATFUNC = rgb2gray(ORG); % �֐�rgb2gray��p�����O���[�X�P�[���ϊ�
figure(2)
imagesc(MATFUNC); axis image; % �摜�̕\��
colormap(gray); colorbar;

% ----- �P�����ϖ@ -----
IM_AVE = (ORG(:,:,1)+ORG(:,:,2)+ORG(:,:,3))/3;
figure(3)
imagesc(IM_AVE); axis image; % �摜�̕\��
colormap(gray); colorbar;

% ----- ���Ԓl�@ -----
IM_CEN = (max(ORG,[],3)+min(ORG,[],3))/2;
figure(4)
imagesc(IM_CEN); axis image; % �摜�̕\��
colormap(gray); colorbar;

% ----- G�`�����l���@ -----
G_CH = ORG(:,:,2);
figure(5)
imagesc(G_CH); axis image; % �摜�̕\��
colormap(gray); colorbar;

% ----- NTSC�W���ɂ����d���ϖ@ -----
NTSC = 0.29891*ORG(:,:,1)+0.58661*ORG(:,:,2)+0.11448*ORG(:,:,3);
figure(6)
imagesc(G_CH); axis image; % �摜�̕\��
colormap(gray); colorbar;

return
