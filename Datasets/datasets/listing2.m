% opts = detectImportOptions('list.txt');
% C = readmatrix('list.txt',opts);
Cut_Size = 784;
Index = 1;
INDEX = [];
EMG = [];
for i = 1 : 10
    fprintf("individual %i\n", i)
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
                for C = 1 : 16
                    E = emg(M(I):M(I)+Cut_Size-1,C);
                    E = E - mean(E);
                    E = reshape(E,28,28);
                    int8(E);
                    EMG = [EMG; E];
                end
            end
        end
        
        
    end
end

EMG = int8(EMG);
% INDEX = int8(INDEX);
% delete('data.txt')
fileID = fopen('data2.txt','w');
fprintf(fileID,'%i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i, %i\n',EMG');
fclose(fileID);
