% �ۑ�7 �_�C�i�~�b�N�����W�̊g��
% 2017.12.17 NAGASAWA

% ��f�̃_�C�i�~�b�N�����W��0����255�ɂ���D 

% �X�V����
% 2017,12,17 ���o�[�W����

ORG = imread('cat1.jpg'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�
figure(1)
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
axis image

figure(2)
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��

ORG = double(ORG);% �{���x�l�ɕϊ�
mn = min(ORG(:)); % �Z�x�l�̍ŏ��l���Z�o
mx = max(ORG(:)); % �Z�x�l�̍ő�l���Z�o
ORG = (ORG-mn)/(mx-mn)*255; % �ϊ���̔Z�x�l
figure(3)
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
axis image

ORG = uint8(ORG); % 8bit�����Ȃ������ɕϊ�
figure(4)
imhist(ORG); % �Z�x�q�X�g�O�����𐶐��A�\��

return