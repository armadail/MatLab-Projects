%[A]= [1 7 ; 2 4];
%[B]= [3 3 ; 5 2];
[A] = input('enter the first matrix');
[B] = input('enter the second matrix');
C = addM(A , B);
disp(C);
c = multM(A, B);
disp(c);