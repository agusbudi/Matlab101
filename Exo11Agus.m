numb = input('please enter the number of name ');

matName= [];
firstlet='';
for n = 1:numb    
    %insert numb
    name = input(['name ' num2str(n) ' (only 4 letters) '], 's');
    while length(name)~= 4
        name = input('only 4 letters!!! please enter the name ', 's');
    end
    
    %minuscule majuscule
    if name(1)>=97 && name(1)<=122
        name(1) = name(1)-32;
    end
    
    %add to matrices
    matName = [matName;name];
    firstlet=name(1);
end

matName2 = sortrows(matName);

matName
matName2


