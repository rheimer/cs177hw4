function test_has22()
%   tests whether the function has22 works or not by 
%  calling on the function test_function and displaying the results

global error;
error = 0;

test_function([1 2 2],'true' )
test_function([1 2 1 2],'false')
test_function([2 1 2],'false')

if error == 0
    fprintf('The function works!\n')
else
    fprintf('The function has errors\n')
    
end

end

function test_function(a,answer)
%  test_function tests whether has22 equals the correct
%  value and prints a statement telling the user
%  if the function works or not for the particular input values.

global error;

if strcmp(has22(a),answer) == 1
    fprintf('"has22" with input:\n')
        fprintf('%d  \n',a )
    fprintf('yields:\n')
    fprintf('%s\n', answer)
    fprintf(' \n')
else
    fprintf('string_times() does not work. ERROR\n')
    error = error + 1;
end
            
end

