figure(1)
for i = 1 : 16
    subplot(4,4,i)
    plot(EMG(:,i))
    xlabel('Timestamp')
    ylabel('EMG Signal')
end