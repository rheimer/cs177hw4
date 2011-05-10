function test_sum13()
%   tests whether the function sum13 works or not by 
%  calling on the function test_function and displaying the results

global error;
error = 0;

test_function([1 2 2 1],6 )
test_function([1 1],2)
test_function([1 2 2 1 13],6)

if error == 0
    fprintf('The function works!\n')
else
    fprintf('The function has errors\n')
    
end

end

function test_function(a,answer)
%  test_function tests whether sum13 equals the correct
%  value and prints a statement telling the user
%  if the function works or not for the particular input values.

global error;

if sum13(a) == answer 
    fprintf('"sum13" with inputs:\n')
        fprintf('%d  \n',a )
        
    fprintf('yields:\n')
    fprintf('%d\n', answer)
    fprintf(' \n')
else
    fprintf('string_times() does not work. ERROR\n')
    error = error + 1;
end
            
end

