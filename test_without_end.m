function test_without_end()
%   tests whether the function without_end works or not by 
%  calling on the function test_function and displaying the results

global error;
error = 0;

test_function('Hello', 'ell')
test_function('java','av')
test_function('coding', 'odin')

if error == 0
    fprintf('The function works!\n')
else
    fprintf('The function has errors\n')
    
end

end

function test_function(a,answer)
%  test_function tests whether without_end equals the correct
%  value and prints a statement telling the user
%  if the function works or not for the particular input values.

global error;

if strcmp(without_end(a),answer) == 1
    fprintf('"without_end" with input:\n')
    fprintf('%s \n',a)
    fprintf('%s\n', answer)
else
    fprintf('without_end() does not work. ERROR\n')
    error = error + 1;
end
            
end

