

%generation of 2D data
n = 1000;

%DATA
data = exp(linspace(-1,3,n));
data(2,:) = randn(1,n);


figure(1) ,clf

%
h =  plot(data(1,:),data(2,:));

get(h)

set(h,'marker','p')
set(h,'Linestyle','none','MarkerFaceColor','r','MarkerEdgeColor','b')


%bonus
scatter(data(1,:),data(2,:))

scatter(data(1,:),data(2,:),120,'filled')


scatter(data(1,:),data(2,:),77,1:n,'filled')
scatter(data(1,:),data(2,:),77,log(1:n),'filled')
scatter(data(1,:),data(2,:),77,randn(1,n),'filled')

