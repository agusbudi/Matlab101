name = input('please enter a name ', 's');
letter = input('please enter a character ', 's');

long = length(name);

%for----------------
count1=0;
for n = 1:long
    if letter== name(n)
        count1=count1+1;
    end
end

%while----------------
n=1;
count2=0;
while n <= long
    if letter== name(n)
        count2=count2+1;
    end
    n=n+1;
end

disp(['final name is '  name]);

if count1 == count2
    disp(['the number of character is '  num2str(count1)]);
else
    disp(['the number of character is not same!!! ' count1 ' vs ' count2]);
end


%sans boucles---------
countletter= length(strfind(name,letter));
disp(['without if,for,while '  num2str(countletter)]);
