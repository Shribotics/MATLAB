%%
basefilename = 'testfile';
numfiles     = 10;

%loop over all files
for filei = 1:numfiles
    
    %create string with name of file
    filename = [basefilename num2str(filei) '.nat'];
    
    if exist(filename,'file')
        %continue;
    end    
    
    randomdata = randn(100);
    
    
    save(filename ,'randomdata')
    disp(['I just wrote ' filename '.'])
    
end


%%

for i=1:10
    
    if mod(i,2)==0,continue,end
    
    disp (['Iterations' , num2str(i)])
end



%%
%importing data

%use wild card (*)to find the files to import
files2import = dir('testfile*.nat');

%initialise as cell array
alldataC = cell(1,length(files2import));



for filei=1:length(files2import)

    %import and store data
     load(files2import(filei).name)
     alldataC(filei) = randomdata;
    if filei == 1 
     alldataM = zeros(length(files2import),size(randomdata,1),size(randomdata,2));
    end
     
     alldataM(filei,:,:)= randomdata;
end








