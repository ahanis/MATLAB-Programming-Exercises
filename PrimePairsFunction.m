%Hanis Athirah 
%29/1/2018
%Assignment 1: Question 4
function y = prime_pairs(n) 

%prime_pairs is the name of fuction.
%access the function by type in at command window prime_pairs(n).
%n is a scalar integer and is the sole input argument to the function.

%this function works when user insert the input (n) into the function 
%called prime_pairs. Then, it will add the input number with all the prime 
%numbers for 100000 and returns the smallest prime number as an output (y). 
%if there's no such number exists, then the function returns -1 as an
%output (y). 


p = primes(100000); %generate list of prime numbers for 100000 and will be saved in variable p.
q = p(isprime(p+n)); %list of numbers for (p + n) that is prime and will be saved in variable q.
if isempty(q) %when there's no such number exist:
	y = -1    %the output of the function is -1
else
	y = q(1)  %else the output of the function is the smallest prime number

end            %the if condition ends here

end            %the function ends here




