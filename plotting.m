t=[0:0.01:1]
% 2*pi��һ��Բ�Ļ��ȣ�*4������ζ��ѭ������������4��
y1=sin(2*pi*4*t)
% ��ס��ͼ��ʹ�䲻������
hold on
plot(t,y1)
y2=cos(2*pi*4*t)
plot(t,y2)
% ͼ��
legend('sin','cos')
title('sin and cos plot')
% ����ͼƬ������Ŀ¼��pwd����help plot�鿴�����ɱ���ĸ�ʽ
% print -dpng 'sin and cos plot.png'
% ������������ close ���Թر�figure����

% figure����������ͼ������ͼ����һ��fugure�����Ḳ�ǵ�Ĭ�ϻ�ͼ���ڣ����Ը������趨���
figure(1);plot(t,y1);
figure(5);plot(t,y2);
% ����һ��figure�ֳ�������ͼ����ѡ��������һ���ϻ�ͼ
subplot(1,2,1)
plot(t,y1)
subplot(1,2,2)
plot(t,y2)
% ����������,ǰ���������Ǻ��᷶Χ�����������������᷶Χ
axis([0.5 1 -1 1])
% clf ���ͼ�񣬴��ڲ��ر�
A=magic(5)
% ��ɫ����ͼ�����û�д����µ�figure���ͻḲ�ǵ�figure��5������ͼ
figure(6)
% colorbar ɫ������colormapɫ��ģʽ
imagesc(A),colorbar,colormap hot