function [ y ] = without_end( x )
%WITHOUT_END Given a string, return a version without the first and last
%char, so "Hello" yields "ell". The string length will be at least 2. 

y = x(2:length(x)-1);
