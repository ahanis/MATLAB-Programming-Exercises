%Hanis Athirah 
%29/1/2018
%Assignment 1: Question 1

function [gg] = space (mm)

%this function will return mean which is the output (gg) from the squares of
%the first input (mm) which is a positive integer and the only input
%argument.
%space is the name of function.
%access the function by type in at command window space (mm)


z = [1:mm]      % elements of first mm will be assigned to the variable z
b = z.^2        % the elements of z will be squared and assigned to variable b
y = numel (b)   % number of elements in b is calculated and assigned to variable y.
c = sum (b)     % elements in b will be summed and assigned to variable c
gg= c./y        % to find the mean variable c which is the sum will be divided by y which is the number of elements and it is assigned to variable gg

end