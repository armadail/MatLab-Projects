%Question 7 of the Final Exam 2018
% Traffic Simulation Problem
clc
clear
%set arrays with the number of vehicles going through when the
%light is green for D1-D3 direction and D2-D4 direction, and the
%initial number of vehicles in each direction
passing1=[60 0 60 0];
passing2=[0 60 0 60];
nvehicles=[20 20 20 20];
% Set up vehicle matrix for the 4 directions
vehicles=[nvehicles;zeros(120,4)]';
time(1)=0;

% Set the time counter for 2-minute blocks for alternating lights
for i=1:60
 for j=1:2
 IJ=2*(i-1)+j;
 if j == 1 & i<= 30
 nvehicles = nvehicles+randi(40,1,4)+randi(10,1,4)-passing1;
 elseif j == 2 & i <= 30
 nvehicles = nvehicles+randi(40,1,4)+randi(10,1,4)-passing2;
 elseif j ==1 & i > 30
 nvehicles = nvehicles+randi(20,1,4)+randi(6,1,4)-passing1;
 else
 nvehicles = nvehicles+randi(20,1,4)+randi(6,1,4)-passing2;
 end
% check for negative vehicle numbers and add entries to vehicle
%matrix
 for k=1:4
 if(nvehicles(k) <= 0) nvehicles(k)=0;
 end
vehicles(k,IJ+1)=nvehicles(k);
 end
 % set up time vector
 time(IJ+1)=IJ;
 end
end
% plot vehicles in each direction at 1-minute interval
plot(time,vehicles) 