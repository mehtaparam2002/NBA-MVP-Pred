%this is to check the accuracy of the model on the original dataset
yfit = GPRmdl.predictFcn(final_1819);
yfit2 = array2table(yfit);
predicted_outputs_names = [playerNames yfit2];
pon = predicted_outputs_names;


