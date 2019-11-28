% pkg install -forge packagename
% package列表：https://octave.sourceforge.io/packages.php
% setenv PYTHON python.exe的路径
pkg load symbolic

function y=sigmoid(z)
  y=1./(1.+e.^(-z))
  % z=theta'*X
endfunction

% 如果要用fminunc求结果，那么X和Y就不能作为参数，不太适合考虑函数复用的问题
X=
Y=
function[jVal,gradient]=costfunction(theta,X,Y)
  % 设定变量 theta
  syms theta
  
  z=theta'*X
  m=size(Y)
  
  jVal =1/m*sum(Y*log(sigmoid(z))+(1-Y)log(1-sigmoid(z)))
  % optionally with fminunc
  gradient = diff(jVal)
endfunction

options = optimset('GradObj','on','MaxIter','100')

