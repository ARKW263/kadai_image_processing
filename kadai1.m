% �ۑ�1 �W�{���Ԋu�Ƌ�ԉ𑜓x
% 2017.12.14 NAGASAWA

% �摜���_�E���T���v�����O����(�W�{���Ԋu��傫������)�\������D

% �X�V����
% 2017.12.14 ���o�[�W����

clear; % �ϐ��̃I�[���N���A

ORG=imread('cat1.jpg'); % ���摜�̓���
imagesc(ORG); axis image; % �摜�̕\��
pause; % �ꎞ��~

IMG = imresize(ORG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,2,'box'); % �摜�̊g��
imagesc(IMG2); axis image; % �摜�̕\��
pause; % �ꎞ��~

IMG = imresize(IMG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,4,'box'); % �摜�̊g��
imagesc(IMG2); axis image; % �摜�̕\��
pause; % �ꎞ��~

IMG = imresize(IMG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,8,'box'); % �摜�̊g��
imagesc(IMG2); axis image; % �摜�̕\��
pause; % �ꎞ��~

IMG = imresize(IMG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,16,'box'); % �摜�̊g��
imagesc(IMG2); axis image; % �摜�̕\��
pause; % �ꎞ��~

IMG = imresize(IMG,0.5); % �摜�̏k��
IMG2 = imresize(IMG,32,'box'); % �摜�̊g��
imagesc(IMG2); axis image; % �摜�̕\��