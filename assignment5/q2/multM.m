function C = multM(A,B)
szA = size(A);
szB = size(B);
C = zeros(szA(2),szB(1));
if(~(szA(2) == szB(1)))
    fprintf('The # of columns in the first matrix does no equal the # of rows in the second matrix, multiplication not computed');
else
    for i = 1 :1 :szA(1) % row
        for j = 1 : 1 : szA(2) %column
            for k = 1 : 1 :szB(1)
            C(i , j)= (A(i , k)).* (B(k , j))+ C(i , j);
            end
        end
    end
end