%Hanis Athirah Abdullah
%4th MArch 2018
%Assignment 2: Question 1

function [belltriangle] = bell (n)

%this function called bell returns the first n rows & columns of the bell triangle
%n is an input argument

if n < 1  
    belltriangle = []; %if the input which is n is less than one, it will return empty array . 

else %if the input which is n more than 0, the following code will execute.

belltriangle(1) = 1; %matrix named belltriangle for column 1, row 1 will be 1

for row=2:n %for loop will repeat from 2 until n which is the input insert in bell. It is saved in variable row.
    
    belltriangle(row,1) = belltriangle(1,end); %the value for row which is starting from 2 to n will be insert in matrix position of the belltriangle and resulting to
                                               %the belltriangle now will display ones at row 1 and 2 to n columns respectively.                                      
    
     for column = 1:row-1 %for loop will repeat from 1 until n-1 which is the input insert in bell before. It is saved in variable column.
        belltriangle(row-column,column+1) = belltriangle(row-column+1,column)+belltriangle(row-column,column); %for matrix belltriangle position row-column for row and column+1 for column the value of that position
                                                                                                               % is the computation by doing addition from the value at bellriangle position row-column+1 for row and column for column added with 
                                                                                                               %the bellriangle position at row-column at row and column at column in order to create bell triangle.
                                                                                                             
     end % for loop for variable column ends here
end %for loop for variable row ends here
end %if else statement ends here 
end %function ends here