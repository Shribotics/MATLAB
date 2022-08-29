

figure(1) ,clf

x=[1 2 3; 4 5 6];
y=[1 2 3; 3 1 1];


patch(x',y','y')
hold on
plot(x,y,'ks','markersize',7,'MarkerFaceColor','k')
set(gca,'xlim',[min(x)-.5 max(x)+.5],'ylim',[min(x)-.5 max(x)+.5])


%% main programm
[money,moneyP,moneyM] = deal(100000);

for i=1:9
    
    money(i+1)  = money(i)  * 10^(-.02);
    moneyP(i+1) = moneyP(i) * 10^(-.01);
    moneyM(i+1) = moneyM(i) * 10^(-.03);
end

%define the xlabel
year = clock;
year = year(1);
xlabels = year+(0:i);

figure(2),clf,hold on

plot(xlabels,moneyM,'r','linew',2)
plot(xlabels,money,'k--','linew',1)
plot(xlabels,moneyP,'g','linew',2)


patch([xlabels xlabels(end:-1:1)],[moneyP money(end:-1:1)],'g','facealpha',.3,'linestyle','none');
patch([xlabels xlabels(end:-1:1)],[money moneyM(end:-1:1)],'r','facealpha',.3,'linestyle','none'); %tricky part


legend(['3% inflation';'2% inflation';'1% inflation'])



