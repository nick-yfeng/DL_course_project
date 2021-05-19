Data = readmatrix('data.txt');
Data = Data(2:end,:);
R = size(Data,1);
N = R/720;
I = randi([1 int32(N)],1,1);

examp = Data((I-1)*720+1 : I*720,:);
figure(2)
for i = 1 : 16
    subplot(4,4,i)
    plot(examp(:,i),'LineWidth',2)
    grid
    xlabel('Timestamps')
    ylabel('EMG')
end