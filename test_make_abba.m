function test_make_abba()
%   tests whether the function make_abba works or not by 
%  calling on the function test_function and displaying the results

global error;
error = 0;

test_function('Hi','Bye', 'HiByeByeHi')
test_function('Yo','Alice','YoAliceAliceYo')
test_function('x','y', 'xyyx')

if error == 0
    fprintf('The function works!\n')
else
    fprintf('The function has errors\n')
    
end

end

function test_function(a,b,answer)
%  test_function tests whether make_abba equals the correct
%  value and prints a statement telling the user
%  if the function works or not for the particular input values.

global error;

if strcmp(make_abba(a,b),answer) == 1
    fprintf('"make_abba" with inputs:\n')
        fprintf('%s ',a)
        fprintf('%s \n',b)
    fprintf('yields:\n')
    fprintf('%s\n', answer)
    fprintf(' \n')
else
    fprintf('string_times() does not work. ERROR\n')
    error = error + 1;
end
            
end

