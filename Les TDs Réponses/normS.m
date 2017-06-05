%script version

M = rand(10,4);

mx = max(M);

%Méthode 1
numcol = size(M,2)
for i = 1:numcol
      
    result(:,i) = M(:,i)/mx(i)   ;
    
end

%Méthode 2
DiagMx = diag(mx); % put max values along diagonal of square matrix
result2 = M/DiagMx; % division matricielle





