function [ y ] = first_half( x )
%FIRST_HALF Given a string of even length, return the first half. So the
%string "WooHoo" yields "Woo". 

y = x(1:length(x)/2);
