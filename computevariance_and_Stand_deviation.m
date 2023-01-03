
data = exp(2*randn(101,1)/2);


figure(1) ,clf
histogram(data,20)

thevar = 0;
for i=1:length(data)
    
    thevar = thevar + (data(i) - mean(data))^2;
    
end

thevar = thevar / (length(data)-1);

thevar2 = var(data);
%%without using mean
dataM = data-mean(data);

thestd = 0;
for i=1:length(dataM)
    thestd = thestd + dataM(i)^2;
end

thestd = sqrt( thestd/(length(dataM)-1) );

thestd2 = std(data);
