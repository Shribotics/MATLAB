
figure(1) , clf
%Matlab plot down the column
plot(randn(10,4))

hold on  %%helps to not overwrite initial data
plot(get(gca,'xlim'),[0,0] , 'k' ,'linewidth',3)


%%
%number of lines
n = 100;

figure(2) ,clf
hold on

for i=1:n
    
    plot([i n],[0 i],'w') %%first[] = x coordinates and then y coordinates in next []
    plot([i n],[i 0],'m')
    plot([0 i],[i n],'g')
    
    
    
end



set(gcf,'color' , 'k')
axis off

%%
plot([2 10] ,[10 2])