% 赋值,有分号就不会打印出来
a=pi;
% 显示
disp(a) 
% 函数本质是给一个字符串赋值,结尾加上分号也会不打印
% 加上disp函数就会只显示值,不加就是一个赋值语句
sprintf('2 decimals:%0.2f',a)
sprintf('6 decimals:%0.6f',a)
format long
a
format short
a
A=[1 2;3 4;5 6]
% 1到2，间隔0.1
V=1:0.1:2
% 1到6，默认间隔1
V=1:6
C=2*ones(2,3)
C=zeros(2,3)
% 随机矩阵，值在（0，1）区间内
C=rand(2,3)
% randn函数是从标准正太分布中取值,-6调整分布的x中轴
% 具体还是不太懂...
% help randn
w=-6+sqrt(4)*randn(1,1000);
% 画图直方图，默认分10个区块
% hist(w,40)
% 单位矩阵
I=eye(4)
size(I)
% 返回矩阵的行数，size的返回值是一个1*2矩阵，size(I,2)就是列数
size(I,1)
% 最长的维度数，可以对矩阵使用，但是一般没啥意义，通常用于向量
length(A)