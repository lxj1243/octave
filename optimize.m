% pkg install -forge packagename
% package�б�https://octave.sourceforge.io/packages.php
% setenv PYTHON python.exe��·��
pkg load symbolic

function y=sigmoid(z)
  y=1./(1.+e.^(-z))
  % z=theta'*X
endfunction

% ���Ҫ��fminunc��������ôX��Y�Ͳ�����Ϊ��������̫�ʺϿ��Ǻ������õ�����
X=
Y=
function[jVal,gradient]=costfunction(theta,X,Y)
  % �趨���� theta
  syms theta
  
  z=theta'*X
  m=size(Y)
  
  jVal =1/m*sum(Y*log(sigmoid(z))+(1-Y)log(1-sigmoid(z)))
  % optionally with fminunc
  gradient = diff(jVal)
endfunction

options = optimset('GradObj','on','MaxIter','100')

