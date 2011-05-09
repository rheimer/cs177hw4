function [ y ] = make_abba( a,b )
%MAKE_ABBA Given two strings, a and b, return the result of putting them
%together in the order abba, e.g. "Hi" and "Bye" returns "HiByeByeHi". 

y = [a b b a];
