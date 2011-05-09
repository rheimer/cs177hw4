function [ y ] = sum13( x )
%SUM13 Return the sum of the numbers in the array, returning 0 for an empty
%array. Except the number 13 is very unlucky, so it does not count and numbers 
%that come immediately after a 13 also do not count. 

ind = x == 13;

for i = length(x)-1:-1:1
    if ind(i) == 1
        ind(i+1) = 1;
    end
end

y = sum(x(~ind));