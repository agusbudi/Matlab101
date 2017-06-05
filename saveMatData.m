%generated data file

t=0:0.01:4;
data = sin(2*pi*t*2);
Matrice = [t' data'];

save('toto','Matrice'); %default .mat
save('toto.txt','Matrice','-ascii');
csvwrite('toto.csv',Matrice);

sub = 'Coyle1';
id = fopen('testdata.txt', 'w');
fprintf(id, '%s\n', sub);
%fprintf(id, '%f\t%f\n', Matrice);
%fprintf(id, '%f\t%f\n', Matrice');
%fprintf(id, '\n\n\n\n');


M2 = rand(10,50);
format='';
for i =1:50
    format = [format '%f\t'];
end
format(end) = 'n';
fprintf(id, format, M2);

fclose(id);

