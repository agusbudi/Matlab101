%Les Tds Qu 1
N = 100;
vecA = 1:N;
vecB = rand(1,N);
vecC = vecA(1:2:end);
vecD = vecB(2:2:end);
vecE = vecD +10;
vecF = vecC + vecD;

M = [ vecC' vecD' vecE' vecF'];
%M = [ vecC; vecD; vecE; vecF]';

sum3 = M(1,2) + M(2,1) + M(3,4);
M(end,:) = [];

numcols = size(M,2);
sumM = sum(M);
maxCol1 = max(M(:,1));
maxAll = max(max(M));