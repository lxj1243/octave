% 当前路径 可以使用cd命令来改，cd '路径',ls命令也可以用...
pwd
% load 指令只能读取只有数字的数据文件... 
% 读取包含字符的文件可以用csvread, dlmread, textscan 或 textread
% 但是csvread和dlmread读取的时候会把字符变成0
% load housing.txt
load('housing.dat')
% who指令将显示出当前上下文环境中的变量，好像就是GUI左边工作空间里列出来的那些
% whos指令会列出来更详细的变量信息，会比GUI里多出所占空间大小的信息
whos
% 清除变量,不带参数就是清除所有
clear b
housing
% 逗号前的数字表示行取值范围，逗号后的数字代表列取值范围
% 逗号跟空格作用相同，分号都带有换到下一行的意思
b=housing(2:5)
b=housing(1:2,1:9)
housing(2,:)
housing(:,5)
housing([1 3],:)
% 矩阵转成向量
housing(:)
% 给housing右侧添加一列
housing=[housing [1;2;3]]
save temple.mat b