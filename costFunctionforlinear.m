% X����������y�Ǳ�ǩ��theta��ѵ������
function J=costfunction(X,y,theta)
  %X��������Ҳ����������
  m=size(X,1)
  predictions=X*theta
  % ����
  sqrErrors=(preditions-y).^2
  
  J = 1/(2*m)*sum(sqrErrors)
endfunction
