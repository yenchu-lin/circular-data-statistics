function [] = Cir_plot_dir_unitv(dir1,unitv,vtype,nbin,mveclength,fcolor,fcolord)
% What it does:
% The funciton plots the circular histogram and the mean vector
%
% Last updated on 07/18/2022 by YCL

if strcmp(vtype,'ori')
    dir1 = dir1.*2;
end
unitv1 = unitv.(vtype);

mvec = mean(unitv1);
veclength = sqrt(real(mvec)^2 + imag(mvec)^2);
ang = atan(imag(mvec)/real(mvec));
if real(mvec) < 0 && imag(mvec) > 0
    ang = ang + pi;
elseif real(mvec) < 0 && imag(mvec) < 0 
    ang = atan(real(mvec)/imag(mvec));
    ang = (pi - ang) + pi/2;
end

polarhistogram(dir1,nbin,'FaceColor',fcolor)
hold on
polarplot([0 ang],[0 veclength*mveclength],'Color',fcolord,'LineWidth',2)
polarplot(ang,veclength*mveclength,'o','markersize',12,'color',fcolord,'LineWidth',2)
set(gca,'Fontsize',14)
thetaticks(0:90:270)

end
