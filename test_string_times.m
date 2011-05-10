function test_string_times()
%   tests whether the function string_times works or not by 
%  calling on the function test_function and displaying the results

global error;
error = 0;

test_function('Hi',2, 'HiHi')
test_function('Hi',3,'HiHiHi')
test_function('Hi',1, 'Hi')

if error == 0
    fprintf('The function works!\n')
else
    fprintf('The function has errors\n')
    
end

end

function test_function(a,b,answer)
%  test_function tests whether string_times equals the correct
%  value and prints a statement telling the user
%  if the function works or not for the particular input values.

global error;

if strcmp(string_times(a,b),answer) == 1
    fprintf('"string_times" with inputs:\n')
        fprintf('%s ',a)
        fprintf('%d \n',b)
    fprintf('yields:\n')
    fprintf('%s\n', answer)
    fprintf(' \n')
else
    fprintf('string_times() does not work. ERROR\n')
    error = error + 1;
end
            
end

