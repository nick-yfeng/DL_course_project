data = readmatrix('GAN1_out_adams_10_5.csv');

for i = 1 : 16
    subplot(4,4,i)
    plot(data(i+1,:),'LineWidth',2)
    grid
    xlabel('Timestamps')
    ylabel('EMG')
end