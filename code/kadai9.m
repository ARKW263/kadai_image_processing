% �ۑ�9 ���f�B�A���t�B���^�Ɛ�s��
% 2017.12.19 NAGASAWA

% ���f�B�A���t�B���^�[��K�p���C�m�C�Y����������D

% �X�V����
% 2017.12.19 ���o�[�W����

ORG = imread('cat1.jpg'); % �摜�̓ǂݍ���
ORG = rgb2gray(ORG); % �����Z�W�摜�ɕϊ�
figure(1)
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
axis image

ORG = imnoise(ORG,'salt & pepper',0.02); % ���܉��m�C�Y�Y�t
figure(2)
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
axis image

IMG = filter2(fspecial('average',3),ORG); % �������t�B���^�ŎG������
figure(3)
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
axis image

IMG = medfilt2(ORG,[3 3]); % ���f�B�A���t�B���^�ŎG������
figure(4)
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
axis image

%{
f1=[0,-1,0;-1,5,-1;0,-1,0]; % �t�B���^�̐݌v
IMG = filter2(f1,ORG,'same'); % �t�B���^�̓K�p
figure(5)
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
axis image
%}

f2=[7,-1,3;1,5,1;5,-1,2]; % �t�B���^�̐݌v
IMG = filter2(f2,ORG,'same'); % �t�B���^�̓K�p
figure(6)
imagesc(IMG); colormap(gray); colorbar; % �摜�̕\��
axis image

return