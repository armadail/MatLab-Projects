%1)
x = -2*pi:0.01:2*pi;
 y = 1-cos(x)+sin(x);
 
 plot (x,y);
 for i=1:1:1256
     if y(i)> 0 
         if (y(i+1)< 0)
             fprintf('root fount at %f ',x(i));
         end
     end
     if y(i)< 0 
         if(y(i+1)> 0)
             fprintf('root fount at %f ',x(i));
         end
     end
 end
         