% ��ǰ·�� ����ʹ��cd�������ģ�cd '·��',ls����Ҳ������...
pwd
% load ָ��ֻ�ܶ�ȡֻ�����ֵ������ļ�... 
% ��ȡ�����ַ����ļ�������csvread, dlmread, textscan �� textread
% ����csvread��dlmread��ȡ��ʱ�����ַ����0
% load housing.txt
load('housing.dat')
% whoָ���ʾ����ǰ�����Ļ����еı������������GUI��߹����ռ����г�������Щ
% whosָ����г�������ϸ�ı�����Ϣ�����GUI������ռ�ռ��С����Ϣ
whos
% �������,�������������������
clear b
housing
% ����ǰ�����ֱ�ʾ��ȡֵ��Χ�����ź�����ִ�����ȡֵ��Χ
% ���Ÿ��ո�������ͬ���ֺŶ����л�����һ�е���˼
b=housing(2:5)
b=housing(1:2,1:9)
housing(2,:)
housing(:,5)
housing([1 3],:)
% ����ת������
housing(:)
% ��housing�Ҳ����һ��
housing=[housing [1;2;3]]
save temple.mat b