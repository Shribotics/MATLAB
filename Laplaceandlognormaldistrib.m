

lambda = 3;
x = -5:0.1:5;

%function
f = .5*lambda*exp(-lambda*abs(x));

f = f./sum(f);
figure(1),clf
subplot(211)
plot(x,f,'k' ,'linew' ,3)
xlabel('x'), ylabel('p  f(x)')

%plot cumulative
subplot(212)
plot(x,cumsum(f),'y' ,'linew' ,3)
xlabel('x'), ylabel('p  f(x)')

%%
x = linspace(.0001,5,100);
m = 0;
s = .5;

%
part1 = 1./(s*x*sqrt(2*pi));
part2 = exp(-(log(x)-m).^2 /(2*s*s));

%combine
lndist = part1 .* part2;

%probabilty density
lndist = lndist / sum(lndist);


%plots
figure(1),clf
subplot(211)
plot(x,lndist,'k' ,'linew' ,2)
xlabel('x'), ylabel('p  f(x)')

%plot cumulative
subplot(212)
plot(x,cumsum(lndist),'y' ,'linew' ,2)
xlabel('x'), ylabel('p  f(x)')


