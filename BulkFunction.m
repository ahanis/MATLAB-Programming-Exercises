%Hanis Athirah 
%26/1/2018
%Assignment 1: Question 2

function [B] = Bulk (x,z)

%this function is for row vector v which is the input insert in x and z then will return matrix B
%Bulk is the name of fuction
%access the fuction by type in at command window Bulk (x,z)
%x will be the first number which is the smallest in the range of row vector v
%z will be the last number which is the largest in the range of row vector v
%Matrix B whose first column will be the elements of v
%Second column of matrix B will be the squares of element v
%Third column of matrix B consists of cubes of element v


v = [x:z]
B = [ v ; v.^2 ; v.^3 ] %v in this square bracket will be the first column
                        %v.^2 in this square bracket will be the second column
                        %v.^3 in this square bracket will be the third column

end %the function ends here