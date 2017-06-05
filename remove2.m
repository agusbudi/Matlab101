function [ stringOutput ] = remove2( stringInput )

long = length(stringInput);
stringOutput = char(long);

temp = stringInput;
for n = 1:long
    for m = n+1:long
        if stringInput(n) == stringInput(m) && stringInput(n) ~= ' '
            temp(m)= ' ';
        end
    end 
end

out=1;
for n = 1:long
    if temp(n) ~= ' '        
        stringOutput(out) = temp(n);
        out= out+1;
    end
end

%otherway, tapi hanya jika berurutan
i=1;
output=stringInput;

while i <(length(output) -1)
    
    if output(i)== output(i+1)
        output(i+1) =[];
    end
    i = i+1;
end

output
