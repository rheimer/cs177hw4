function [ y ] = love6( a,b )
%LOVE6 The number 6 is a truly great number. Given two int values, a and b,
%return True if either one is 6. Or if their sum or difference is 6. Note: 
%the function abs(num) computes the absolute value of a number. 

if a == 6 || b == 6
    y = 'true';
    return
end
if (a + b) == 6
    y = 'true';
else
    y = 'false';
end
