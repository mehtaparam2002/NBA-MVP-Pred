%this is supposed to calculate the top 5 given a proper dataset
yfit = MaternGPR.predictFcn(tb1);
k = 5;
top5 = maxk(yfit,k);
for i=1:k
    indexes(i) = find(yfit==top5(i)); 
    playerNames1819(indexes(i),1)

end


