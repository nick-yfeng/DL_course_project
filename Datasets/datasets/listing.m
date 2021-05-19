% opts = detectImportOptions('list.txt');
% C = readmatrix('list.txt',opts);
Cut_Size = 720;
Index = 1;
INDEX = [];
EMG = [];
for i = 1 : 10
    for j = 1 : 3
        
        name = "S" + num2str(i) + "_E" + num2str(j) + "_A1";
        command = "load " + name + ".mat";
        eval(command);
        restimulus = [restimulus; 0];
        MAX = max(restimulus);
        for k = 1 : MAX
            K = find(restimulus == k);
            M = find(restimulus(K-1) == 0);
            N = find(restimulus(K+1) == 0);
            for I = 1 : length(M)
                E([(I-1)*Cut_Size+1:I*Cut_Size],:) = emg(M(I):M(I)+Cut_Size-1,:);
                Ind = [Cut_Size*(Index-1) , Index; Cut_Size*(Index) - 1 , Index];
                Index = Index + 1;
                INDEX = [INDEX; Ind];
            end
            E = E - mean(E);
            EMG = [EMG; E];
        end
        
        
    end
end

EMG = int8(EMG);
fileID = fopen('data.txt','w');
fprintf(fileID,'%i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i\n',EMG');
fclose(fileID);

fileID = fopen('index.txt','w');
fprintf(fileID,'%f, %f\n',INDEX');
fclose(fileID);