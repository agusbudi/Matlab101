function output = remove2(input)
%function which removes double characters from a character string

i = 1;
output = input;
while i < (length(output) - 1)   %compare current char with next one
                                %so counter cannot equal the total length
    if output(i) == output(i + 1)
        output(i + 1) = [];      %remove double letter
    end
    i = i + 1;                  %increment counter 
end
                  

%another way without WHILE loop

output2 = input
diffChar = diff(output2); % fait la difference des codes ascii
same = find(~diffChar); % trouver les occurrences des zeros
if ~isempty(same) % si same n'est pas vide - et donc il y avait bien des doublements
    output2(same) = [];
end