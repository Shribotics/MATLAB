%number of datapoints
n = 1000;

%number of histogram bins
k = 40;

r = randn(n,1);
data = exp(r/2);


figure(1) ,clf

histogram(data,k);

[y,x] = hist(data,k);
plot(x,y,'s-','linew',2,'markersize',16,'markerfacecolor','r')
xlabel('VAlue')
ylabel('Count')


%%
r = 2*iqr(data)*n^(-1/3);
b = ceil((max(data)-min(data))/r);

histogram(data,'binMethod','fd')
xlabel('VAlue')
ylabel('Count')
title(['R-d "rule" using','bins'])

%%

bins2try = round( linspace(5,n/2,30));


h = plot(x,y,'s-','linew',2,'markersize',16,'markerfacecolor','r');
xlabel('VAlue')
ylabel('Count')

for bini = 1:length(bins2try)
    
    [y,x] = hist(data,bins2try(bini));
    
    
    set(h,'XData',x,'YData' ,y);
    
    
    title(['Histogram with', num2str(bins2try(bini)),'bins'])
    pause(1)
    
    
end


