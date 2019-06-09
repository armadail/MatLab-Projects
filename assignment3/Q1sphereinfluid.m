
r=input('enter the radius in mm ');
ps=input('enter the sphere density ');
p0=input('enter the fluid density ');
h = 0 : 0.1 :2*r;
%simplified form of given equasion set to (ps/p0)*volume of sphere
func = 0.25.*(3.*(h./r).^2 - (h./r).^3)-(ps./p0); 

for i=1:1:2*r/0.1 %root finder
     if func(i)> 0 
         if (func(i+1)< 0)
             fprintf('height is %f \n',h(i));
         end
     end
     if func(i)< 0 
         if(func(i+1)> 0)
             fprintf('height is %f \n',h(i));
         end
     end
end

syms x;
fplot ((0.25).*((3).*(x).^2 - (x).^3), [0 2]);
xlabel('sphere density / fluid density');
ylabel('height / radius');

% the change in heigh of the sphere is the smallest at ps/p0 = 0.5 this
% makes sense since the cross sectional area of a sphere is largest at its
% mid point, requiring more volume to be submerged for the same change in height
