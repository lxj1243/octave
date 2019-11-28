% X是样本矩阵，y是标签，theta是训练参数
function J=costfunction(X,y,theta)
  %X的行数，也就是样本数
  m=size(X,1)
  predictions=X*theta
  % 方差
  sqrErrors=(preditions-y).^2
  
  J = 1/(2*m)*sum(sqrErrors)
endfunction
