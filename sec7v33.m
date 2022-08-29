
%dataset
data = round( exp(2*randn(101,1)/2));

figure(1), clf
histogram(data,20)

%%compute median

%mean
n=numel(data);
themean = sum(data) / n;

themean2 = mean(data);

%%compute median
%sort data
datasort = sort(data , 'ascend');

%find median
themedian = datasort(ceil(n/2));


themedian2 = median(data);

%%compute mode
uniquevals = unique(data);


numnums = zeros(size(uniquevals));

for ui=1:length(numnums)
    
    
    numnums(ui) = sum(data == uniquevals(ui)) ;
    
    
end

%find max
[dontcare,maxidx] = max(numnums);


themode = uniquevals(maxidx);

themode2 = mode(data);

%bonus
hold on
plot([1 1]*themean , get(gca,'ylim') , 'r--','linew',3) 
plot([1 1]*themedian , get(gca,'ylim') , 'b--','linew',3) 
plot([1 1]*themode , get(gca,'ylim') , 'k--','linew',3)

legend({'Data';'mean';'median';'mode'})
xlabel('Value'),ylabel('Count')