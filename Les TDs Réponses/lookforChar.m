%script to find replace specific character with asterix *

chain = input('Type character string : ','s');
letter = input ('Type letter to be replaced : ','s');

%find the occurences of the letter(shortest string) in the input string
where = findstr(chain, letter);

if isempty(where) == 0  %if NOT empty, also can be expressed as  if ~isempty(where)
    chain(where(end)) = '*'; %replace last occurence of key letter with *
end

disp([' final version of input string : ' chain]);