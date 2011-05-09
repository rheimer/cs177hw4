function [ y ] = string_times( x,n )
%STRING_TIMES Given a string and a non-negative int n, return a larger
%string that is n copies of the original string. 


y = repmat(x,1,n);