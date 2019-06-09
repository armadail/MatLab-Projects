[A]= [4 3 1;3 7 -1; 1 -1 9];
[B]= [10 8 7; 3 -3 0; 14 1 7];
[C]= [1 -1; 4 7;9 5];

disp(A+B);
disp(A-2*B);
disp(A*C);
disp(A');
disp(A*A');
disp(C*C');
disp(inv(A)*(inv(B)));
disp(rank(A));
disp(rank(C));
disp(det(A));
x = A\C;
disp(x);
