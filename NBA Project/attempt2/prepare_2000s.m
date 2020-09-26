clear temp
index = 1;
playerNames1819 = table2array(playerNames1819);
for i=1:708
    if allstats_1819_numonly(i,1) > 1
        if allstats_1819_numonly(i,11) > 3
            if allstats_1819_numonly(i,13) > 15
                for j=1:19
                    temp(index, j) = allstats_1819_numonly(i,j);
                end
                temp2(index,1) = playerNames1819(i,1);
                index = index + 1;
            end
        end
    end
end
    temp = array2table(temp);
    temp.Properties.VariableNames = allstats_1819.Properties.VariableNames;
    
        