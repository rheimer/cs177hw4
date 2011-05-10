function test_middle_way()
%   tests whether the function middle_way works or not by 
%  calling on the function test_function and displaying the results

global error;
error = 0;

test_function([1 2 3],[4 5 6],[2 5] )
test_function([7 7 7],[3 8 0],[7 8])
test_function([5 2 9],[1 4 5],[2 4])

if error == 0
    fprintf('The function works!\n')
else
    fprintf('The function has errors\n')
    
end

end

function test_function(a,b,answer)
%  test_function tests whether middle_way equals the correct
%  value and prints a statement telling the user
%  if the function works or not for the particular input values.

global error;

if middle_way(a,b) == answer
    fprintf('"middle_way" with inputs:\n')
        fprintf('%d %d %d\n',a)
         fprintf('%d %d %d\n',b)
    fprintf('yields:\n')
    fprintf('%d %d\n', answer)
    fprintf(' \n')
else
    fprintf('string_times() does not work. ERROR\n')
    error = error + 1;
end
            
end

