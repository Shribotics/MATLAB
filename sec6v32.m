

%define
n = 1:100;
z =linspace(0,1,100);

%initialize
[pfull,papprox] = deal( zeros(length(n),length(z)) );

for ni=1:length(n)
    for zi=1:length(z)
        
        pfull(ni,zi) = exp ( sqrt(1 +4*n(ni) + 4*(n(ni)^2 - (n(ni)*z(zi))^2)) -(1+2*n(ni)));
        papprox(ni,zi) = exp (-n(ni)*z(zi)^2);
        
    end
end


figure(1) ,clf
subplot(131)
contourf(n,z,pfull,40,'linecolor' , 'none')
axis square ,set(gca,'clim',[0 1])
xlabel('Z'),ylabel('n')
colorbar
title('Full formula')
        
%approx
subplot(132)
contourf(n,z,papprox,40,'linecolor' , 'none')
axis square ,set(gca,'clim',[0 1])
xlabel('Z'),ylabel('n')
colorbar
title('Full formula')

%diff
subplot(133)
contourf(n,z,pfull-papprox,40,'linecolor' , 'none')
axis square ,set(gca,'clim',[-1 1]/20)
xlabel('Z'),ylabel('n')
colorbar
title('Full formula')

        






