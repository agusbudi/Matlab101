manipData = fopen('manipData.txt');

head = fgetl(manipData);
data = fscanf(manipData, '%f',[]);

fclose(manipData);
