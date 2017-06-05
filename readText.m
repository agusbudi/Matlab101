nomfile = 'testdata.txt';

%alternative
[filename,filepath] = uigetfile('*.txt', 'select file');

nomfile = [filepath filename];
id = fopen(nomfile, 'r');

if id >0
    subjectName = fscanf(id, '%s', 1);
    data = fscanf(id, '%f', [50 inf])';
    fclose(id);
else
    disp('problem');
end