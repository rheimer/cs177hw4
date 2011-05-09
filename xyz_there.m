function [ y ] = xyz_there( x )
%XYZ_THERE Return True if the given string contains an appearance of "xyz"
%where the xyz is not directly preceeded by a period (.). So "xxyz" counts 
%but "x.xyz" does not. 

if strcmp(x(1:3),'xyz') == 1
   y = 'true';
   return
end

for i = 2:length(x)-2
    if strcmp(x(i:i+2),'xyz') == 1 && strcmp(x(i-1),'.') ~= 1
        y = 'true';
        return
    else
        y = 'false';
       
    end
end
    