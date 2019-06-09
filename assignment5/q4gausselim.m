[A]= [4 3 1;3 7 -1; 1 -1 9];
[C]= [1 -1 ; 4 7 ;9 5];

[rows,columns] = size(A);
x = zeros(size(C));
if (rank(A) < szA(1))
    disp('system is linearly dependant');
else
for k = 1:rows-1  
   for i = k+1:rows
     constant = A(i,k) / A(k,k);
     for j=k+1:rows
           A(i,j) = A(i,j) - constant * A(k,j);
     end
      C(i, :) = C(i, :) - constant * C(k, :);
   end
end
x(rows, :) = C(rows, :) / A(rows,rows);
for i = rows-1:-1:1
   rowsum = C(i, :);
   for j = i+1:rows
       rowsum =rowsum - A(i,j) * x(j, :); 
   end
       x(i, :) =rowsum / A(i,i);
end
    disp(x);
end
    


