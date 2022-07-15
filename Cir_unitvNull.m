function [realdiffv,diffv,nullv] = Cir_unitvNull(unitv1,unitv2,nboot)

% What it does:
% The function compare two sets of unit vectors
% and do the null hypothesis by random shuffling
%
% Last updated on 07/14/2022 by YCL

n1 = length(unitv1);
n2 = length(unitv2);
rind1 = randi(n1,[nboot,n1]);
rind2 = randi(n2,[nboot,n2]);

% Differential vector of the two group
realdiffv = mean(unitv1) - mean(unitv2);
diffv = mean(unitv1(rind1),2) - mean(unitv2(rind2),2);

% Null hypothesis
unitv12 = [unitv1,unitv2];
rind3 = randi(n1+n2,[nboot,n1]);
rind4 = randi(n1+n2,[nboot,n2]);
nullv = mean(unitv12(rind3),2) - mean(unitv12(rind4),2);

end

