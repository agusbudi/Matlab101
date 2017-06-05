%script to find armstrong Numbers in range 100 to 999

%Armstrong number = is an integer such that the sum of the cubes of its digits equals the number itself. 
%For example, 407 is an Armstrong number since 4^3 + 0^3 + 7^3 = 64 + 343 = 407

clear, clc 

% Let i be a vector of numbers 100 to 999 
for i = 100 : 999

    % We examine every digit in i 
    %first create a string of characters 
    ichar = num2str(i);
    
    %convert each individual character into a numeric 
    % ione is the left-most digit in i
    
    ione = str2num(ichar(1));

    % i2 is the middle digit
    itwo = str2num(ichar(2));

    % i3 is the right-most digit in i
    ithree = str2num(ichar(3));

    % We calculate the sum of the cubes
    sumcubes = ione^3 + itwo^3 + ithree^3;

    % We compare this sum to the number itself
    if i == sumcubes
        % We display the number if the sum equals the original
        disp([ num2str(i) ' is an Armstrong Number'])
    end
end
 

% The results are: 
% 
%    153   153
%    370   370
%    371   371
%    407   407
