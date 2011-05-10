function test_love6()
%   tests whether the function love6 works or not by 
%  calling on the function test_function and displaying the results

global error;
error = 0;

test_function(6,4,'true' )
test_function(4,5,'false')
test_function(1,5,'true')

if error == 0
    fprintf('The function works!\n')
else
    fprintf('The function has errors\n')
    
end

end

function test_function(a,b,answer)
%  test_function tests whether love6 equals the correct
%  value and prints a statement telling the user
%  if the function works or not for the particular input values.

global error;

if strcmp(love6(a,b),answer) == 1
    fprintf('"love6" with inputs:\n')
        fprintf('%d %d \n',[a b])
    fprintf('yields:\n')
    fprintf('%s\n', answer)
    fprintf(' \n')
else
    fprintf('string_times() does not work. ERROR\n')
    error = error + 1;
end
            
end

