importURL = "C:\FYP\report\Code\2019-01-11T16-26-00_androidAccData.csv";
AccData = csvread(importURL,1,1);
SmoothedAccData = zeros(size(AccData,1),4);
t = 1:size(AccData,1);
lowpassAlpha = 0.40; % 80%
for i = 1:size(AccData,1)
   for j = 2:4
    % Low Pass Filter on
    SmoothedAccData(i,j) = SmoothedAccData(i,j) ...
        + lowpassAlpha * (AccData(i,j) - SmoothedAccData(i,j));
   end
end
for plotNum = 1:3
    subplot(3,1,plotNum);
    plot(t,AccData(:,plotNum+1),'k');
    hold on
    plot(t,SmoothedAccData(:,plotNum+1), 'r', 'LineWidth',1);
    ylabel('m/s^2');
    switch(plotNum)
        case(1)
            title('Raw X Acceleration vs LPF Smoothed');
            legend('Raw', 'LPF');
        case(2)
            title('Raw Y Acceleration vs LPF Smoothed');
        case(3)
            title('Raw Z Acceleration vs LPF Smoothed');
            xlabel('Sample Number');
    end
end
set(gcf,'color','white')
saveas(gcf,'AndroidDataExample.png')
