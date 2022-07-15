function [] = Cir_plot_unitvNulls(realdiffv,nullv,lim)

% What it does:
% The function plot the result of LD_unitvNulls, the null distribution and
% the true difference between means
%
% Last updated on 07/14/2022 by YCL

figure('Position', [10 10 400 400])
hold on
plot(nullv,'o','color',[.6,.6,.6],'linewidth',2) % gray color
plot(realdiffv,'+','color','r','linewidth',4) % orange color
plot([-lim,lim],[0,0],'color',[.7,.7,.7],'linewidth',2)
plot([0,0],[-lim,lim],'color',[.7,.7,.7],'linewidth',2)
axis equal
axis square
xlim([-lim lim])
ylim([-lim lim])
set(gca,'linewidth',2)
set(gca,'FontSize',18)
legend('null','real difference')

end

