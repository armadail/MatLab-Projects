x= [78 89 27 65 81 77 80 61 75 90 82 80 69 76 67 82 41 22 87 79 58 80];
for i=1 : 1 :22
    if x(i) >= 90
        disp('A+')
    elseif x(i) >= 80
        disp('A')
    elseif x(i) >= 75
        disp('B+')
    elseif x(i) >= 68
        disp('B')
    elseif x(i) >= 60
        disp('C+')
    elseif x(i) >= 50
        disp('C')
    elseif x(i) >= 40
        disp('D')
    else
        disp('F')
    end
    
end

fprintf('The average is %f ', mean(x));
fprintf('The standard deviation is %f ', std(x));


