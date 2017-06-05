%Example of application of switch
day = input('Quel jour sommes nous ? ','s');
switch day
        case 'lundi'
           jr = 5;
        case 'mardi'
           jr = 4;
        case 'mercredi'
           jr = 3;
        case 'jeudi'
           jr = 2;
        case 'vendredi'
           jr = 1;
        otherwise
        jr = 0;
end
disp([ 'Encore ' num2str(jr) ' jours avant le weekend' ])
