function ex_struct(S)
%Affichage de la structure "Sujet"

for i=1:length(S)
   figure
   plot(S(i).data)
   title(S(i).nom,'fontsize',18)
end
