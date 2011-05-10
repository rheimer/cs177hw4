function test_first_half()
%   tests whether the function first_half works or not by 
%  calling on the function test_function and displaying the results

global error;
error = 0;

test_function('WooHoo', 'Woo')
test_function('HelloThere','Hello')
test_function('abcdef', 'abc')

if error == 0
    fprintf('The function works!\n')
else
    fprintf('The function has errors\n')
    
end

end

function test_function(a,answer)
%  test_function tests whether first_half equals the correct
%  value and prints a statement telling the user
%  if the function works or not for the particular input values.

global error;

if strcmp(first_half(a),answer) == 1
    fprintf('"first_half" with inputs:\n')
        fprintf('%s ',a)
    fprintf('yields:\n')
    fprintf('%s\n', answer)
    fprintf(' \n')
else
    fprintf('string_times() does not work. ERROR\n')
    error = error + 1;
end
            
end

