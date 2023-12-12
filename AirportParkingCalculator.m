%Hanis Athirah 
%8/2/2018
%Assignment 1: Question 3

clear % To remove items from workspace & freeing up system memory
clc % To clear Command Window
disp (' Hi there! ') %To display the sentence in the bracket
disp (' There are two types of parking lots here which are for long-term and short-term parking.') %To display the sentence in the bracket
lot = input('Enter parking lot that you are using? > ' , 's') % it will prompt user for the input & will be saved in the lot variable

switch lot % Switch among several cases, based on expression

% w stands for week
% d stands for day
% h stands for hour
% m stands for minute

    case 'short-term' % If the case expression is true, it executes the corresponding statements and exits the switch block.
disp(' Now we need you to tell us how long did you park.') %To display the sentence in the bracket
d = input('Enter how many days did you park? > ') % it will prompt user for the input & will be saved in the d variable
h = input('Enter how many hours did you park? > ') % it will prompt user for the input & will be saved in the h variable
while ( h >= 24 ) %when the h>24, it will loop until the condition is false
    disp ('It supposed to be from 23 to 0 only.') %To display the sentence in the bracket
    h = input('Enter how many hours did you park? > ') % it will prompt user for the input & will be saved in the h variable
end %the if loop ends here
m = input('Enter how many minutes did you park? > ')
while ( m >= 60 ) %when the m>59, it will loop until the condition is false
    disp ('It supposed to be from 59 to 0 only.') %To display the sentence in the bracket
    m = input('Enter how many minutes did you park? > ')% it will prompt user for the input & will be saved in the m variable
end %the if loop ends here

y = (60*h) + m; %Perform the calculation & the value will be saved to variable y
bill = 35*d + 1.5*((y-30)/20); %Perform the calculation, the value will be saved to variable bill & display the bill
fprintf('Your bill is RM %5.2f\n',bill) %bill will be displayed

    case 'long-term' % If the case expression is true, it executes the corresponding statements and exits the switch block.
disp(' Now we need you to tell us how long did you park.')  %To display the sentence in the bracket
w = input('Enter how many weeks did you park? > ') %it will prompt user for the input & will be saved in the w variable
d = input('Enter how many days did you park? > ') %it will prompt user for the input & will be saved in the d variable
while ( d >= 7 ) %when the d>=7, it will loop until the condition is false
    disp ('It supposed to be from 6 to 0 only.')  %To display the sentence in the bracket
    d = input('Enter how many days did you park? > ') %it will prompt user for the input & will be saved in the d variable
end %the if loop ends here
h = input('Enter how many hours did you park? > ') %it will prompt user for the input & will be saved in the h variable
while ( h >= 24 ) %when the h>24, it will loop until the condition is false
    disp ('Invalid entry.')  %To display the sentence in the bracket
    h = input('Enter how many hours did you park? > ') %it will prompt user for the input & will be saved in the h variable
end %the if loop ends here


q = h-1; %Perform the calculation & the value will be saved to variable q
bill = (52*w) + (8*d) + (1.5*1) + (1 * q); %Perform the calculation, the value will be saved to variable bill & display the bill
fprintf('Your bill is RM %5.2f\n',bill) %bill will be displayed

    otherwise % If the both cases expressions are false, it executes the corresponding statement and exits the switch block.
        disp ('Invalid entry, run the program again.') %To display the sentence in the bracket
end %the switch ends here

    


