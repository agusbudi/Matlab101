
%For the second approach, we are going to take three digits and iterate them
%to get all the possible combinations to achieve integers from 100 to 999. 
%(these digits are obviously hundreds, tens and units).

 clear; 
 clc
% We use h as hundreds
for h = 1 : 9

    % We use t as tens
    for t = 0 : 9

        % We use u as units
        for u = 0 : 9

            % n is the resulting number
            n = h*100 + t*10 + u;

            % sumcube is the sum of the cubes
            sumcube = h^3 + t^3 + u^3;

            % We compare the  original number n  with sumcube
            if n == sumcube
                % and display if they're the same
                disp([num2str(n) ' is an Armstrong Number'])
            end
        end
    end
end
 