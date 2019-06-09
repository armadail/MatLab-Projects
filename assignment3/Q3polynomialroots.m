x = -1:0.001:1;
LP = (693.*(x.^6)-945.*(x.^4)+315.*(x.^2)-15)./48;
CP = (32.*(x.^6)-48.*(x.^4)+18.*(x.^2)-1);
fprintf('roots of legendre polynomial \n');
for i=1:1:2000
     if LP(i)> 0 
         if (LP(i+1)< 0)
             fprintf('root fount at %f \n',x(i));
         end
     end
     if LP(i)< 0 
         if(LP(i+1)> 0)
             fprintf('root fount at %f \n',x(i));
         end
     end
end
fprintf('roots of chebyshev polynomial \n');
for i=1:1:2000
     if CP(i)> 0 
         if (CP(i+1)< 0)
             fprintf('root fount at %f \n',x(i));
         end
     end
     if CP(i)< 0 
         if(CP(i+1)> 0)
             fprintf('root fount at %f \n',x(i));
         end
     end
end

% the roots are symmetric