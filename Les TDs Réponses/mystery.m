function answer = mystery (test_value)
%function to test if input value is a perfect number
%ie. is equal to the sum of its factors
%
%
%
%
%
%

 
  sum = 0; %set this to zero at start
  
  
  for d = 1 : test_value - 1   % will not include d = test_value in the analysys
    div_result = test_value / d

    if (div_result == floor(div_result)) 
       % test to see if d is a factor of test_value ie division of
       % test_value/d gives an integer
       sum = sum + d; % if so add d to sum ,  the running total
    end

  end

  
  if (sum == test_value) %test to see if sum of factors equals the original
     answer = 1;
  else
     answer = 0; %
  end %output is either 1 or 0  