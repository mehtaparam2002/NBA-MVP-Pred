%this creates newTable, which is alphabetically sorted 
allstatsS1.Properties.VariableNames{'FG3_PCT'} = 'FG31';
names = allstatsS1.Properties.VariableNames;
        
newTable = allstatsS1;

sorted = sort(names);

for j=1:19
    for i=1:19
   
        if strcmp(sorted{j}, names{i})
            newTable(:,j) = allstatsS1(:,i);
        end
    end
end
newTable.Properties.VariableNames = sorted;

            