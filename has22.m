function [ y ] = has22( x )
%HAS22 Given an array of ints, return True if the array contains a
%2 next to a 2 somewhere. 

ind = find(x == 2);
yesno = diff(ind);
ind1 = find(yesno == 1);
if isempty(ind1) == 1
    y = 'false';
else
    y = 'true';
end

