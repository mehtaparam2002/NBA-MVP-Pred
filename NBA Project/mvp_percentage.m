function percentage = mvp_percentage(coefficients, player_statistics)
% calculates mvp_percentage for one player using lin. reg coefficients or
% something like that

fga = player_statistics(1);
fg3a = player_statistics(2);
fta = player_statistics(3);
per = player_statistics(4);
ts_pct= player_statistics(5);
usg_pct= player_statistics(6);
bpm= player_statistics(7);
win_pct= player_statistics(8);
g= player_statistics(9);
mp_per_g= player_statistics(10);
pts_per_g= player_statistics(11);
trb_per_g= player_statistics(12);
ast_per_g= player_statistics(13);
stl_per_g= player_statistics(14);
blk_per_g= player_statistics(15);
fg_pct= player_statistics(16);
fg3_pct= player_statistics(17);
ft_pct= player_statistics(18);
ws= player_statistics(19);
ws_per_48= player_statistics(20);

percentage = 0;
for i = 1:20
    percentage = (player_statistics(i) * coefficients(i)) + percentage;
end

    






















end