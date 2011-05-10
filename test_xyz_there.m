function test_xyz_there()
%   tests whether the function cat_dog works or not by 
%  calling on the function test_function and displaying the results

global error;
error = 0;

test_function('abcxyz', 'true')
test_function('abc.xyz','false')
test_function('xyz.abc', 'true')

if error == 0
    fprintf('The function works!\n')
else
    fprintf('The function has errors\n')
    
end

end

function test_function(a,answer)
%  test_function tests whether xyz_there equals the correct
%  value and prints a statement telling the user
%  if the function works or not for the particular input values.

global error;

if strcmp(xyz_there(a),answer) == 1
    fprintf('"xyz_there" with input:\n')
    fprintf('%s \n',a)
    fprintf('%s\n', answer)
else
    fprintf('xyz_there() does not work. ERROR\n')
    error = error + 1;
end
            
end

