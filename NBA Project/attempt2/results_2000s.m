yfit = model2.predictFcn(mvp_player_stats); 
seasons = table2array(mvp_player_info(:,1));
names = table2array(mvp_player_info(:,2));
names = string(names);

init_season = seasons(1,1);
count = 1;
s_count = 1;

else_count = 0;
for i=1:637
    if (init_season == seasons(i,1)) == 1 
        temp(count, 1) = yfit(i);
        player_name = names(i,1);
        temp(count, 2) = 0;
        temp2(count,1) = player_name;
        
        count = count + 1;
        
    else
        %part below finds the predicted winner in the year, and the name
        %puts it into winners
        %moves to the next season and clears the previous list
        [M,I] = max(temp(:,1),[],'linear');
        
        winnername = temp2(I,1);
        winners1(s_count, 1) = winnername;
        winners2(s_count, 1) = M;
        winners3(s_count,1) = string(init_season);
        s_count = s_count + 1;
        init_season = seasons(i,1);
        clear temp;
        clear temp2;
       %part below sets up for the next list
        count = 1;
        temp(count, 1) = yfit(i);
        temp2(count, 1) = names(i,1);
        count = 2;
        
end
end
        winners = [string(winners1) winners3 string(winners2)];
        create_all_mvp_winners;
        correct = 0;
        answers = string(winners1);
        for j=20:37
            if strcmp(answers(j,1), all_mvp_winners(j,1))
                j
                correct = correct + 1;
            end
        end
        clear answers
        100 * correct/17
        
   
        
    