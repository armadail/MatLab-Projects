I = 8.4; %A, current
WireLength = 5;%m
WireRadius = 0.002;%m
Density = 2698.9;%kg/m3
MeltingPoint = 993.52;%K
p = 2.6548e-05;%olhm-m , ElectricalResistivity 
InitTemp = 293.15;%K
C = 900.162; %J/kg/K , SpecificHeat

t = 0:1:7200;%time
m = ((pi*WireRadius^2)*WireLength)*Density;
R = p*WireLength/(pi*WireRadius^2);

Power = (I^2)*R;
Energy = Power.*t;
dT = Energy./(m*C);
T = InitTemp + dT;

plot(t ,T);
xlabel('time (s)');
ylabel('temperature (k)');


if (max(T) >MeltingPoint)
    fprintf('wire reaches melting point \n');
end

fprintf('max temp: %d kelvin',max(T));
