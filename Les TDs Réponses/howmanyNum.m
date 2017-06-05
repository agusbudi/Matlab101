function num = howmanyNum( vect, seuil)
%function to determine how many of the elements in a given vector
%are required to just achieve a threshold

num = 1;            %initialise the loop counter to one
sum = 0;            %initialise the current total to zero

while sum <= seuil          %set up condition for LOOP
    sum = sum + vect(num)  %add the current element to running total
    num = num + 1;          %increment loop counter;
end

%as loop counter has been incremented once too many...
%the actual number of elements required to reach the 
%given threshold is one less than the final value of num.

num = num - 1;

%This algorithm cannot be written using a FOR loop as  
%the number of iterations cannot tbe known in advance
