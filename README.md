# MATLAB Programming Exercises

This repository contains solutions to programming exercises written in MATLAB. Below are the descriptions of each exercise.

## Question 1: Space Function

Write a function called `space` that returns `gg`, which is the mean of the squares of the first `mm` positive integers, where `mm` is a positive integer and is the only input argument. For example, if `mm` is 5, your function needs to compute the average of the numbers 1, 4, 9, 16, and 25. You may use any built-in functions including, for example, `sum`.

## Question 2: Bulk Function

Write a function called `bulk` that takes a row vector `v` as an input and returns a matrix `B`. The first column of `B` should consist of the elements of `v`, the second column should consist of the squares of the elements of `v`, and the third column should consist of the cubes of the elements of `v`. For example, if you call the function like this, `H = hulk(1:3)`, then `H` will be `[1 1 1; 2 4 8; 3 9 27]`.

## Question 3: Airport Parking Program

Most major airports have separate lots for long-term and short-term parking. The cost to park depends on the lot you select, and how long you stay. Consider this rate structure from the Alesund International Airport during spring 2016:

- **Long-term (Economy) Parking:**
  - The first hour is $1.50, and each additional hour or fraction thereof is $1.00.
  - Daily maximum $8.00.
  - Weekly maximum $52.00.

- **Short-term Parking:**
  - The first 30 minutes are free, and each additional 20 minutes or fraction thereof is $1.50.
  - Daily maximum $35.00.

Write a program that asks the user the following:
  a) Which lot are you using?
  b) How many weeks, days, hours, and minutes did you park?
  
Your program should then calculate the parking bill.

## Question 4: Prime Pairs Function

Write a function called `prime_pairs` that returns the smallest prime number `p` smaller than 100,000 such that `(p + n)` is also prime, where `n` is a scalar integer and is the sole input argument to the function. If no such number exists, then the function returns -1. You may use the built-in functions `primes` and `isprime`. Note that an efficient solution to this problem, such as the one the grader uses, takes a fraction of a second, but depending on how you do it, yours may be significantly slower.

## Question 5: Bell Triangle Function

Write a function called `bell` that returns the first `n` rows of the Bell triangle, where `n` is an input argument. For a precise definition, see [Bell triangle on Wikipedia](http://en.wikipedia.org/wiki/Bell_triangle). The function must return an `n`-by-`n` array where the top left triangle contains the Bell triangle with each row of the Bell triangle positioned diagonally—bottom-left-to-upper-right—and the bottom right triangle contains only zeros. If `n` is not a positive integer, the function returns an empty array.

## Question 6: MATLAB Game Development

Create an innovative game using MATLAB that prompts the user to choose a level (e.g., easy, intermediate, or difficult). The program should be user-friendly, useful, and creative. It should guide the player with proper instructions to play. Describe what is new or extended (if based on any existing game) in your game as this will be one of the main contributions to this program. Congratulate the player if they get the correct answer or alert the user of the correct move if the game is played incorrectly. The game program should also keep track of the highest score with the name of the player, displaying these running totals at the end of the game. You must decompose your solution into small functions, each of which performs a specific task.
