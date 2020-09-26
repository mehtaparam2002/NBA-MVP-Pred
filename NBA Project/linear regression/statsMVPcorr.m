R = corrcoef(mvp_votes);
imagesc(R);
set(gca, 'TickLabelInterpreter', 'none')
xticks(1:21);
yticks(1:21);
set(gca, 'XTickLabel',labels);
set(gca, 'YTickLabel',labels);
xtickangle(90);


