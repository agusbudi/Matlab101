%Exo.11 les TDs
clear;
N = input('Entre the number of Names (4 letters)  to be sorted ')

for i = 1: N
    tempName = ''; %check to see if name has 4 characters
    while length(tempName)~=4
        tempName = input([ 'Enter Name ' num2str(i) ': '], 's');
    end
    Name(i, 1:4) = tempName; %create matrix of all names - one on each line
    
    firstletter(i)  = Name(i,1); %extract first letters
    %or convert all first letters into Ascii code values with
    %firstletter(i)  = double(Name(i,1)); 
    

    %make sure all first letters are capital(upper case) letters.
        %97<= lower case <= 122
        %65<= upper case <= 90
    
    if (firstletter(i)>= 97 )&& (firstletter(i)<= 122)
        firstletter(i) = firstletter(i) - 32 ; %32 is the diff between lower and upper case
        Name(i,1) = double(firstletter(i)) ; %correct case in  name Matrix
   
    end
    
end

%sort values into ascending order using sort function
[orderedval, indexorder] = sort(firstletter)

SortedNames =Name(indexorder,:)







