function C = addM(A,B)
szA = size(A);
szB = size(B);
C = zeros(szA(1),szA(2));
if(~(szA == szB))
    fprintf('input matrices are of different size, matrix addition not computed');
else
    for i = 1 :1 :szA(1)
        for j = 1 : 1 : szA(2)
            C(i , j)= A (i , j) + B(i , j);
        end
    end
end