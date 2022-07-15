function [unitv] = Cir_dir2unitv(angle_vec)
% What the function does:
% The function transforms a vector of angles in radius to unit circle including 
% "single" - exp(iTheta) and "double" - (exp(i*2*Theta) by double the angle 
% (wrap around twice as fast)
%   Dir: for direction; calculate the unit vector by the angles 
%   Ori: for orientation; calculate the unit vector by doubling the angles 
%
% Inputs:
% angle_vec: a vector of angles from both response 1 and 2 (angles are in radius)
% ncond: number of conditions in the angle vector
% 
% Outputs:
% unitv: a structure of unit vectors, including single (the original
% angles) and double (doubling angles)
% 
% Equation used:
%   exp(1i * angle_vec)
%
% Last updated on 07/14/2022 by YCL

% Transform to unit circle
unitv.dir = exp(1i * angle_vec);

% For orientation -- 
% Square the vector as double the angle
unitv.ori = unitv.dir.^2;

end

