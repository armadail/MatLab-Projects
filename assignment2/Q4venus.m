hours=input('How  many hours are you parking?');

if hours <= 0.5
    cost = 2.5;
    fprintf('short term parkade %f', cost);
elseif (hours > 0.5) && (hours < 2.5)
    cost = 2.5 + (hours - 0.5).*4.*1;
    fprintf('short term parkade %f', cost);
elseif (hours >= 2.5) && (hours < 3) %the point where long term parking becomes more worth)
    cost = 10;
    fprintf('long term parkade %f', cost);
elseif (hours >= 3)&&(hours <= 5)
    cost = 10 + (hours - 3).*3;
    fprintf('long term parkade %f', cost);
elseif (mod(hours  ,24) > 5)&&(hours <= 98)%5 hours after the start of a new day it is cheaper to pay the maximum daily rate
    cost = ceil(hours/24).*18 ;
    fprintf('long term parkade %f', cost);
elseif (mod(hours  ,24) <= 5 )&&(hours <= 98)%less than 5 hours after the start of a new day it is cheaper to pay the per hour rate
    cost = floor(hours/24).*18 + mod(hours  ,24).*3;
    fprintf('long term parkade %f', cost);
else % hours > 98 , weekly max point
    cost = 80;
    fprintf('long term parkade %f', cost);  
end


        
    
    
 