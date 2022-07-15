% Circular data statistics demo
%
% Last updated on 07/14/2022 by YCL

% 1. load data (contains two vectors, each has directions in radius)
load('dir_example.mat')

% 2. Map each direction onto the unit circle
[unitv1] = Cir_dir2unitv(dir1);
[unitv2] = Cir_dir2unitv(dir2);

% 3. Calculate the difference between mean unit vectors and their null distribution
nboot = 1000;
vtype = 'dir';
[realdiffv,diffv,nullv] = Cir_unitvNull(unitv1.(vtype),unitv2.(vtype),nboot);

% 4. plot ciruclar histogram of the directions and their mean directions
vtype = 'dir';
mveclength = 100;
nbin = 20;
fcolor{1} = [.2 .4 1.0];
fcolor{2} = [1,0.8,0.6];
fcolord{1} = [0 0 .6];
fcolord{2} = [0.8 0.4 0];
figure('Position', [10 1000 800 800])
subplot(2,1,1)
Cir_plot_dir_unitv(dir1,unitv1.(vtype),nbin,mveclength,fcolor{1},fcolord{1})
subplot(2,1,2)
Cir_plot_dir_unitv(dir2,unitv2.(vtype),nbin,mveclength,fcolor{2},fcolord{2})

% 5. get p value and SEM 
v_p_value = sum(abs(realdiffv) < abs(nullv)) / size(nullv,1);
v_sem = std(abs(diffv))/sqrt(length(abs(diffv)));