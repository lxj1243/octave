v=zeros(10,1)
for i=1:10
  v(i)=2^i;
endfor
indices=1:10
for i=indices
  disp(i)
endfor

i=1
while i<=5
  v(i)=100
  i=i+1
endwhile
i=1
while true
  v(i)=200
  i=i+1
  if i==6
    break
  endif
endwhile

% y是返回值，x是入参，squareThisNumber是函数名
function y=squareThisNumber(x)
  y=x^2
endfunction

addpath("D:/workspace/octave")

function [y1,y2]=squareAndCubeThisNumber(x)
  y1=x^2
  y2=x^3
endfunction
