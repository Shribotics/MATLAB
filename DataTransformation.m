
data = exp(2*randn(10000,1)/2);
[yo,xo] = hist(data,100);


%lograthmic data
datalog = log(data);
[yl,xl] = hist(datalog,100);

%sqrt data
datasqt = sqrt(data);
[ys,xs] = hist(datasqt,100);


figure(1),clf ,hold on
plot(xo,yo,'k','linew',2)
plot(xl,yl,'r','linew',2)
plot(xs,ys,'b','linew',2)


legend({'original';'log';'squareroot'})
set(gca,'xlim',[0,100])
xlabel('Value'), ylabel('Count')


%%
N = 10000;
data = linspace(100,.001,N) .* rand(1,N);

figure(2) ,clf
subplot(221)
plot(data)
title('Data')

subplot(222)
hist(data,round(N/20))
title('Data distribution')
