[A]= [4 3 1;3 7 -1; 1 -1 9];
[C]= [1 -1 ; 4 7 ;9 5];
[c_rows , c_columns] = size(C);
x=zeros(c_rows,c_columns);

 
a = [A C];

[rows,columns]=size(a);
for j = 1:rows-1
    for z=2:rows
        if a(j,j)==0
            t=a(j,:);a(j,:)=a(z,:);
            a(z,:)=t;
        end
    end
    for i=j+1:rows
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end
disp (a);

for s=rows:-1:1
    c=0;
    for k=2:1:columns
        c=c+a(s,k)*x(k);
    end
    x(s,1)=(a(s,columns-1)-c)/a(s,s);
    
end

disp(x);