function answer = mystery (test_value)
%
%
%
%
%
%
%
%

 
  sum = 0;
  
  
  for d = 1 : test_value - 1    
    div_result = test_value / d

    if (div_result == floor(div_result)) 
       
       sum = sum + d;
    end

  end

  
  if (sum == test_value) 
     answer = 1;
  else
     answer = 0;
  end