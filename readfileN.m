function data = readfileN(filename,n)
%function to read data files - Cours4

id = fopen(filename, 'rt')
data = fscanf(id, '%f', [n,inf])';
fclose(id);
