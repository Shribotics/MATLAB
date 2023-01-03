

m = rand(4,10);
v = 1:10;

bsxfun(@plus,m,v)

%%
m = 30;
n = 6;

%data
data = randn(m,n);
data = bsxfun(@times,data,linspace(-1,1,n).^2);

data = bsxfun(@plus,data,(1:n).^2);

figure(1) ,clf
subplot(131)
bar(1:n, mean(data,1))
axis 'square',set(gca,'xlim',[0 (n+1)],'xtick',1:n)
title('Bar plot')

subplot(132)
%errorbar of standard  deviation
errorbar(1:n,mean(data),std(data),'s')

axis 'square',set(gca,'xlim',[0 (n+1)],'xtick',1:n)
title('Error bar plot')


subplot(133)
bar(1:n, mean(data,1))
hold on
errorbar(1:n,mean(data),std(data),'.')

axis 'square',set(gca,'xlim',[0 (n+1)],'xtick',1:n)
title('Error bar plot')

m = [1 2 3];
