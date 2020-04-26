function varargout = result(A, b)
   nOutputs = nargout;
   disp(nOutputs);
   varargout = cell(1,nOutputs);

   x = inv(A) * b;
   disp(size(x));
   for k = 1:nOutputs
       i = (k-1)*3 + 1;
       varargout{k} = x(i:i+2);
   end