%set threshould
thresh = exp(-10);
nrep = 100;
%initailize initial value
[curval,startval] = deal(10);

%decay
decayvar = nan(nrep,1000);




for repi=1:nrep
    
    
    counter = 0;
    curval = startval;
    
    while curval > thresh
        
        counter = counter + 1;
        
        decayvar(repi,counter+1) = curval;
        
        curval = curval * rand^(1/2);
        
        
    end
end

%without stats
decayvarAvg = zeros(1,size(decayvar,2));
for i=1:size(decayvar,2)

    decayvarAvg(i)=mean(decayvar(isfinite(decayvar(:,i)) , i));
    
    
end
figure(1) ,  clf
plot( decayvarAvg,'ks-','linew',2,'markersize',15,'markerfacecolor','w')
xlable('Iteration'), ylable('Value')
title([num2str (counter) 'iterations until threshold'])

