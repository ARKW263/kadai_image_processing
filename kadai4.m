% �ۑ�4�@�摜�̃q�X�g�O����
% 2017.12.16 NAGASAWA

% ��f�̔Z�x�q�X�g�O�����𐶐�����D

% �X�V����
% 2017.12.16 ���o�[�W����

clear; % �ϐ��̃I�[���N���A

ORG=imread('cat1.jpg'); % ���摜�̓���
ORG=rgb2gray(ORG); % �J���[�摜�𔒍��Z�W�摜�֕ϊ�
figure(1)
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
axis image
pause;

figure(2)
imhist(ORG); % �q�X�g�O�����̕\��

return