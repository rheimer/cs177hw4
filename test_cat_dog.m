function test_cat_dog()
%   tests whether the function cat_dog works or not by 
%  calling on the function test_function and displaying the results

global error;
error = 0;

test_function('catdog', 'true')
test_function('catcat','false')
test_function('1cat1cadodog', 'true')

if error == 0
    fprintf('The function works!\n')
else
    fprintf('The function has errors\n')
    
end

end

function test_function(a,answer)
%  test_function tests whether cat_dog equals the correct
%  value and prints a statement telling the user
%  if the function works or not for the particular input values.

global error;

if strcmp(cat_dog(a),answer) == 1
    fprintf('"cat_dog" with input:\n')
    fprintf('%s \n',a)
    fprintf('%s\n', answer)
else
    fprintf('cat_dog() does not work. ERROR\n')
    error = error + 1;
end
            
end

