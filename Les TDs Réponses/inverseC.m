
function invchaine = inverseC(chaine)

%exo 12 TD Ec Doc

i = 1
for t = length(chaine):-1:1
    invchaine(i) = chaine(t);
    i = i + 1;
end