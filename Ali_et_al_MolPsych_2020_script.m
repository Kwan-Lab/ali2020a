%For details, refer to Ali et al. (2020). Inhibitory regulation of calcium transients in prefrontal dendritic
%spines is compromised by a nonsense Shank3 mutation. Molecular Psychiatry
%https://doi.org/10.1038/s41380-020-0708-6

%% Fig. 1g
clearvars;
load Fig1g.mat;

figure;
[f,x]=ecdf(spineBoutonCondProbAll(:,3)); %shuffled data
stairs(x,f,'k'); hold on;
[f,x]=ecdf(spineBoutonCondProbAll(:,1)); %actual data, with subtraction
stairs(x,f,'r'); hold on;
[f,x]=ecdf(spineBoutonCondProbAll(:,2)); %actual data, no subtraction
stairs(x,f,'b'); 
xlim([0 1]); box off;
xlabel('Prob(bouton event | spine event');
ylabel('Cumulative fraction');

%% Fig. 2c-d, 1f
% Note that for some animals, multiple imaging sessions were performed at
% different fields of view

clearvars;
load Fig2c-f.mat;

allRawdFF; %raw dF/F for all spines for all animals
allCalciumEvents; %peeled calcium events for all spines for all animals
allCalciumEventRate; %mean calcium event rates (Hz) for all spines for all animals
allAmpCalcium; %mean calcium amplitude for all spines for all animals
allFreqCalcium;  %mean frequency of calcium events for all spines for all animals
allThreshCrossingsAmp; %mean amplitude of dF/F above threshold (alternative quantification) for all spines for all animals
genotypes; %genotypes of animals: 1=WT, 2=R1117+/+
frameRate; %imaging frame rate

% Fig. 2c
[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
xlim([0 3]); 
title ('Calcium events');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

%Fig. 2d
[f,x]=ecdf(cell2mat(allAmpCalcium(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allAmpCalcium(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
xlim([0 8]);
title ('Amplitude');
xlabel('a.u.');
ylabel('Cumulative fraction');

%Fig. 2e
[f,x]=ecdf(cell2mat(allFreqCalcium(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allFreqCalcium(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
box off; 
xlim([0 1]);
title ('Frequency');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

%Fig. 2f
[f,x]=ecdf(cell2mat(allThreshCrossingsAmp(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allThreshCrossingsAmp(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
box off; 
xlim([0 3]);
title ('Calcium events');
xlabel('a.u.');
ylabel('Cumulative fraction');

%% Fig. 2h

clearvars;
load Fig2h.mat;

allRawdFF; %raw dF/F for all spines for all animals
allCalciumEvents; %peeled calcium events for all spines for all animals
allCalciumEventRate; %mean calcium event rates (Hz) for all spines for all animals
allAmpCalcium; %mean calcium amplitude for all spines for all animals
allFreqCalcium;  %mean frequency of calcium events for all spines for all animals
genotypes; %genotypes of animals: 1=WT, 2=R1117+/+
frameRate; %imaging frame rate

[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
xlim([0 3]); 
title ('Calcium events');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

[f,x]=ecdf(cell2mat(allAmpCalcium(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allAmpCalcium(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
xlim([0 8]);
title ('Amplitude');
xlabel('a.u.');
ylabel('Cumulative fraction');

[f,x]=ecdf(cell2mat(allFreqCalcium(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allFreqCalcium(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
box off; 
xlim([0 1]);
title ('Frequency');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

%% Fig. 2i

clearvars;
load Fig2i.mat;

allRawdFF; %raw dF/F for all spines for all animals
allCalciumEvents; %peeled calcium events for all spines for all animals
allCalciumEventRate; %mean calcium event rates (Hz) for all spines for all animals
allAmpCalcium; %mean calcium amplitude for all spines for all animals
allFreqCalcium;  %mean frequency of calcium events for all spines for all animals
genotypes; %genotypes of animals: 1=WT, 2=Shank3B+/-
frameRate; %imaging frame rate

[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==2))); %Shank3B+/-
stairs(x,f,'r'); box off;
xlim([0 3]); 
title ('Calcium events');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

[f,x]=ecdf(cell2mat(allAmpCalcium(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allAmpCalcium(genotypes==2))); %Shank3B+/-
stairs(x,f,'r'); box off;
xlim([0 8]);
title ('Amplitude');
xlabel('a.u.');
ylabel('Cumulative fraction');

[f,x]=ecdf(cell2mat(allFreqCalcium(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allFreqCalcium(genotypes==2))); %Shank3B+/-
stairs(x,f,'r'); box off;
box off; 
xlim([0 1]);
title ('Frequency');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

%% Fig. 3e

clearvars;
load Fig3e.mat;

allRawdFF; %raw dF/F for all SST cell bodies for all animals
allCalciumEvents; %peeled calcium events for all SST cell bodies for all animals
allCalciumEventRate; %mean calcium event rates (Hz) for all SST cell bodies for all animals
genotypes; %genotypes of animals: 1=WT, 2=R1117X+/+
frameRate; %imaging frame rate

[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
xlim([0 4]); 
title ('Calcium events');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

%% Fig. 3f

clearvars;
load Fig3f.mat;

allRawdFF; %raw dF/F for all SST axons for all animals
allCalciumEvents; %peeled calcium events for all SST axonss for all animals
allCalciumEventRate; %mean calcium event rates (Hz) for all SST axons for all animals
genotypes; %genotypes of animals: 1=WT, 2=R1117X+/+
frameRate; %imaging frame rate

[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
xlim([0 10]); 
title ('Calcium events');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

%% Fig. 5d

clearvars;
load Fig5d.mat;

allRawdFF; %raw dF/F for all SST cell bodies for all animals
allCalciumEvents; %peeled calcium events for all SST cell bodies for all animals
allCalciumEventRate; %mean calcium event rates (Hz) for all SST cell bodies for all animals
genotypes; %genotypes of animals: 1=WT control, 2=R1117X+/+ control, 3=R1117X+/+ + LV
frameRate; %imaging frame rate

[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); 
[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==3))); %R1117X+/+ + LV
stairs(x,f,'c'); 
box off;
xlim([0 4]); 
title ('Calcium events');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

%% Fig. 5e

clearvars;
load Fig5e.mat;

allRawdFF; %raw dF/F for all spines for all animals
allCalciumEvents; %peeled calcium events for all spines for all animals
allCalciumEventRate; %mean calcium event rates (Hz) for all spines for all animals
genotypes; %genotypes of animals: 1=WT control, 2=R1117X+/+ control, 3=R1117X+/+ + LV
frameRate; %imaging frame rate

[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); 
[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==3))); %R1117X+/+ + LV
stairs(x,f,'c'); 
box off;
xlim([0 3]); 
title ('Calcium events');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

%% Supplementary Fig. 1b

clearvars;
load SuppFig1b.mat;

corrGCaMP6f; %correlation between actual and reconstructed ?F/F at imaging frames in which a calcium event was detected for all spines for all animals 
corrEGFP; %sames above for EGFP
genotypes; %genotypes of animals: 1=WT, 2=R1117X+/+

[f,x]=ecdf(cell2mat(corrGCaMP6f(genotypes==1))); %GCaMP6f for WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(corrGCaMP6f(genotypes==2))); %GCaMP6f for R1117X+/+
stairs(x,f,'b'); 
[f,x]=ecdf(corrEGFP); %EGFP
stairs(x,f,'k--'); 
box off;
xlim([0 1]); 
title ('Correlation between reconstructed dF/F and actual dF/F');
xlabel('r');
ylabel('Cumulative fraction');


%% Supplementary Fig. 1c

clearvars;
load SuppFig1c.mat;

allRawdFFEGFP; %raw dF/F for all spines for all animals using EGFP
allCalciumEventsEGFP; %peeled calcium events for all spines for all animals using EGFP
allCalciumEventRateEGFP; %mean calcium event rates (Hz) for all spines for all animals using EGFP
allRawdFFGCaMP6f;allCalciumEventsGCaMP6f;allCalciumEventRateGCaMP6f; %same as above but for GCaMP6f, same data as Fig. 2c
genotypesGCaMP6f; %genotypes of animals: 1=WT control, 2=R1117X+/+ control
frameRate; %imaging frame rate

[f,x]=ecdf(cell2mat(allCalciumEventRateGCaMP6f(genotypesGCaMP6f==1))); %GCaMP6f for WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allCalciumEventRateGCaMP6f(genotypesGCaMP6f==2))); %GCaMP6f for R1117X+/+
stairs(x,f,'b'); 
[f,x]=ecdf(cell2mat(allCalciumEventRateEGFP)); %EGFP
stairs(x,f,'k--'); 
box off;
xlim([0 3]); 
title ('Calcium events');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

%% Supplementary Fig. 1d

clearvars;
load SuppFig1d.mat;

templateAmp; %array of template amplitude (% dF/F) used
templateDecayTime; %array of template decay constant (sec) used
calciumEventRateWT; %mean calcium event rates (Hz) for all spines for all WT animals for all values of templateAmp and templateDecayTime
calciumEventRateR1117X; %same but for all spines for all R1117X+/+ animals
pValTtest; %p-values from two-sample t-test of mean calcium event rates (Hz) for each of the values for all values of templateAmp and templateDecayTime 

%Need cbrewer package to plot
%download at https://www.mathworks.com/matlabcentral/fileexchange/34087-cbrewer-colorbrewer-schemes-for-matlab
figure;imagesc(log10(pValTtest)); 
% caxis([1e-9 1e-6]);
colormap(cbrewer('seq', 'Reds', 10));

%% Supplementary Fig. 2b

clearvars;
load SuppFig2b.mat;

allCalciumEventRate; %mean calcium event rates (Hz) for all spines for all animals
genotypes; %genotypes of animals: 1=WT control, 2=R1117X+/+ control
allAmpCalcium; %mean calcium amplitude for all spines for all animals
allFreqCalcium;  %mean frequency of calcium events for all spines for all animals
genotypes; %genotypes of animals: 1=WT, 2=R1117+/+
frameRate; %imaging frame rate

[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
xlim([0 3]); 
title ('Calcium events');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

[f,x]=ecdf(cell2mat(allAmpCalcium(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allAmpCalcium(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
xlim([0 8]);
title ('Amplitude');
xlabel('a.u.');
ylabel('Cumulative fraction');

[f,x]=ecdf(cell2mat(allFreqCalcium(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allFreqCalcium(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
box off; 
xlim([0 1]);
title ('Frequency');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

%% Supplementary Fig. 3b

clearvars;
load SuppFig3b.mat;

allRawdFF; %raw dF/F for all cell bodies for all animals
allCalciumEvents; %peeled calcium events for all cell bodies for all animals
allCalciumEventRate; %mean calcium event rates (Hz) for all cell bodies for all animals
allAmpCalcium; %mean calcium amplitude for all cell bodies for all animals
allFreqCalcium;  %mean frequency of calcium events for all cell bodies for all animals
genotypes; %genotypes of animals: 1=WT, 2=R1117+/+
frameRate; %imaging frame rate

[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allCalciumEventRate(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
xlim([0 4]); 
title ('Calcium events');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');

[f,x]=ecdf(cell2mat(allAmpCalcium(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allAmpCalcium(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
xlim([0 8]);
title ('Amplitude');
xlabel('a.u.');
ylabel('Cumulative fraction');

[f,x]=ecdf(cell2mat(allFreqCalcium(genotypes==1))); %WT
figure;stairs(x,f,'k');
hold on;
[f,x]=ecdf(cell2mat(allFreqCalcium(genotypes==2))); %R1117X+/+
stairs(x,f,'b'); box off;
box off; 
xlim([0 1]);
title ('Frequency');
xlabel('Rate (s^-1)');
ylabel('Cumulative fraction');
