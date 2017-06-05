function  numletter = countletter(charString, letter)
%function which counts the occurrence of the character specified by 'letter' 
%within the character sring 'charString' 
%and returns this value as an output variable.


%FOR Loop

numletterFOR = 0;                       %initialise counter to zero

for i = 1:length(charString)            %loop from first character to last
    if charString(i) == letter          %compare each character with letter
        numletterFOR = numletterFOR + 1;      %increment counter if both the same
    end
end

disp([' FOR LOOP : number of ' letter  ' is ' num2str(numletterFOR)]); %display result

%WHILE Loop

numletterWHILE =  1;

charNum = 1;                            %initialise loop index to 1

while charNum <= length(charString)     %set up condition for while loop
    if charString(charNum) == letter    %compare each character with letter
        numletterWHILE = numletterWHILE + 1;      %increment counter if both the same
    end
    charNum = charNum + 1;              %increment loop index
end

disp([' WHILE LOOP : number of ' letter  ' is ' num2str(numletterWHILE)]); 

if numletterFOR == numletterWHILE       %if both counts are equal
    numletter = numletterFOR;           % as both the same, either can be used 
else
    disp(' WARNING : Incompatibility  between the two counts')
    numletter = [];                     %empty variable returned as length cannot be determined
end

%without  control loops

let = strfind(charString, letter);
numletter = length(let);


