Data = readmatrix('data.txt');
Data = Data(2:end,:);
R = size(Data,1);
N = R/720;
I = randi([1 int32(N)],1,1);

examp = Data((I-1)*720+1 : I*720,:);

figure(1)

subplot(2,3,1)
plot(examp(:,7),'LineWidth',2)
xlabel('Timestamp')
ylabel('EMG')
title('Original')

data = readmatrix('GAN1_out.csv');
subplot(2,3,2)
plot(data(4,:),'LineWidth',2)
xlabel('Timestamp')
ylabel('EMG')
title('Approach 1')

data = readmatrix('GAN2_out.csv');
subplot(2,3,3)
plot(data(7,:),'LineWidth',2)
xlabel('Timestamp')
ylabel('EMG')
title('Approach 2')

data = readmatrix('GAN3_out.csv');
subplot(2,3,4)
plot(data(10,:),'LineWidth',2)
xlabel('Timestamp')
ylabel('EMG')
title('Approach 3')

data = readmatrix('GAN4_out.csv');
subplot(2,3,5)
plot(data(3,:),'LineWidth',2)
xlabel('Timestamp')
ylabel('EMG')
title('Approach 4')

data = readmatrix('GAN5_out.csv');
data = reshape(data(2:end,:),[28*28,1]);
subplot(2,3,6)
plot(data,'LineWidth',2)
xlabel('Timestamp')
ylabel('EMG')
title('Approach 5')