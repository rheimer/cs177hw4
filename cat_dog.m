function [ y ] = cat_dog( x )
%CAT_DOG Return True if the string "cat" and "dog" appear the same number
%of times in the given string. 

dogcount = 0;
catcount = 0;

for i = 1:length(x)-2
    if strcmp(x(i:i+2),'dog') == 1;
        dogcount = dogcount + 1;
    end
    if strcmp(x(i:i+2),'cat') == 1;
        catcount = catcount + 1;
    end
end
    
if catcount == dogcount
    y = 'true';
else
    y = 'false';
end