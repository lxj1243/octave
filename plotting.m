t=[0:0.01:1]
% 2*pi是一个圆的弧度，*4代表意味着循环周期缩短了4倍
y1=sin(2*pi*4*t)
% 留住上图，使其不被覆盖
hold on
plot(t,y1)
y2=cos(2*pi*4*t)
plot(t,y2)
% 图例
legend('sin','cos')
title('sin and cos plot')
% 保存图片到工作目录（pwd），help plot查看其他可保存的格式
% print -dpng 'sin and cos plot.png'
% 命令行里输入 close 可以关闭figure窗口

% figure函数创建新图像来绘图，第一个fugure函数会覆盖掉默认绘图窗口，可以给窗口设定序号
figure(1);plot(t,y1);
figure(5);plot(t,y2);
% 把上一个figure分出几个子图，并选定在其中一个上绘图
subplot(1,2,1)
plot(t,y1)
subplot(1,2,2)
plot(t,y2)
% 设置坐标轴,前两个参数是横轴范围，后两个参数是纵轴范围
axis([0.5 1 -1 1])
% clf 清楚图像，窗口不关闭
A=magic(5)
% 彩色方格图，如果没有创建新的figure，就会覆盖掉figure（5）的子图
figure(6)
% colorbar 色彩条，colormap色彩模式
imagesc(A),colorbar,colormap hot