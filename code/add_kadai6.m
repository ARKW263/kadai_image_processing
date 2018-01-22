% �^���Z�W�\��(�g�D�I�f�B�U�@) - �ۑ�6�̔��W�����Ƃ��Ď��K
% 2017.11.27 NAGASAWA

% �g�D�I�f�B�U�@�̃f�B�U�}�g���b�N�X���쐬����D
% �܂��C�쐬�����f�B�U�}�g���b�N�X��p���ċ^���Z�W�\�����s���C
% MATLAB�̊֐�dither���g�p�����ꍇ�Ɣ�r����D

% �X�V����
% 2017.11.27 ���o�[�W����(�f�B�U�}�g���b�N�X��������)
% 2017.12.19 �^���Z�W�\�������̍쐬�E�����̊֐��Ƃ̔�r�����ǉ�

clear; close all % �ϐ��N���A�E�E�B���h�E��S�ĕ���

%----------- ���摜�̓ǂݍ��݁E�\�� ------------
ORG=imread('cat2.jpg'); % ���摜�̓���(512�~512)
ORG = rgb2gray(ORG);
figure(1)
imagesc(ORG); colormap(gray); colorbar; % �摜�̕\��
axis image


%--------------- �f�B�U�}�g���b�N�X�̐��� ----------------
Dn = 0; % Dn��n=1�̂Ƃ����Z�b�g���Ă���
nmax = 4; % 2^n�̒l������
nmax = log2(nmax); % n�̍ő�l����Dn�����߂�for���̉񐔂����߂�

ss = 2.^(1:nmax); % 2^n�̔z��

for ii=1:nmax
    n = ss(ii);
    Dn = [4*Dn,4*Dn+2*ones(n/2);4*Dn+3*ones(n/2),4*Dn+ones(n/2)];
end

Dn = Dn*256/max(max(Dn)); % �f�B�U�}�g���b�N�X�̍ő�l��256�ɂȂ�悤�ɐ��K��

%------- �쐬�����f�B�U�}�g���b�N�X��p���ċ^���Z�W�\�� -----------
for ii=1:512/4
    for jj=1:512/4
        % 4�~4�̃u���b�N���ړ������Ȃ���f�B�U�}�g���b�N�X�ƌ��摜�̑召��r
        IMG1(4*ii-3:4*ii,4*jj-3:4*jj) = ORG(4*ii-3:4*ii,4*jj-3:4*jj)>=Dn;
    end
end

figure(2)
imagesc(IMG1); colormap(gray); colorbar; % �摜�̕\��
axis image


%----------- �֐�dither��p�����^���Z�W�\�� ------------
IMG2 = dither(ORG); % �f�B�U�@�ɂ���l��
figure(3)
imagesc(IMG2); colormap(gray); colorbar; % �摜�̕\��
axis image

return