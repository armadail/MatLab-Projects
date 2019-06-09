function [height,velocity] = R_motion(t)

height = 2.13.*(t.^2) - 0.0013.*(t.^4) + 0.000034.*(t.^4.751);
velocity = 4.16.*(t) - 0.0052.*(t.^3) + 0.000161534.*(t.^3.751);
end