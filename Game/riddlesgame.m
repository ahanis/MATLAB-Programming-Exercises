%Hanis Athirah Abdullah
%6th March 2018
%Assignment 2: Question 2

clear %to clear the workspace
clc %to clear the command window

disp ('TEST YOUR GENERAL KNOWLEDGE GAME') %to display the sentence in the bracket
fprintf('\n') %this command will make the next sentence go to the next line.
disp ('This game is created for player age 13 and above')  %to display the sentence in the bracket
fprintf('\n') %this command will make the next sentence will go to the next line.
disp ('In this game, you have to answer 5 general knowledge questions for the level you anticipated.')  %to display the sentence in the bracket
fprintf('\n') %this command will make the next sentence go to the next line
disp('To get the answer correct, you have to spell it correct too & most of the answers are in one word unless it stated.')  %to display the sentence in the bracket
disp ('There are 3 chances for you to get the correct answers. The more chances you used, the lesser the mark will be for every questions')  %to display the sentence in the bracket
disp('You will get 5 marks for first attemot & 2 marks deducted for every chances you take.')  %to display the sentence in the bracket
disp('You will get zero for every wrong answers.')  %to display the sentence in the bracket
disp('Your mark would not be any lesser if you choose to know the clue.')  %to display the sentence in the bracket

fprintf('\n') %this command will make the next sentence go to the next line

disp('Please insert the number of players in integer.')%to display the sentence in the bracket
nplayers = input('How many players are playing this game?'); %to prompt user input for number of players

if isempty(nplayers)==1 %if the condition is true
 while  isempty (nplayers) == 1 %while nplayers not equal to integers it will loop line 22
     nplayers = input('\n How many players are playing this game?'); %to prompt user input for number of players
 end %while loop ends here
end %if loop ends here

fprintf('\n') %this command will make the next sentence go to the next line

disp ('There are three levels that you can choose which is easy, intermediate & difficult') %to display the sentence in the bracket
level = input('Which level you choose to play?','s'); %to prompt user input for the level the player/s want to play
      
fprintf('\n') %this command will make the next sentence go to the next line.

switch level % switch among several cases, based on expressions

    case 'easy' % if the case expression is true, it executes the corresponding statements and exits the switch block.
    while nplayers>0 %this case easy will loop until all the players have played.
        
    namee = input('\n Hi, before you play this game, can I get your name?', 's'); %to prompt user input for the name of player
    name=upper(namee); %to change the input name into uppercase
    greet = sprintf('Hi %s! Good luck in this game, wish you get a good mark!', name); %it will print out the sentence in the bracket and saved in variable greet
    fprintf('\n')%this command will make the next sentence go to the next line
    disp(greet) %the strings in greet will be displayed

    nplayers=nplayers-1; %nplayers will minus with one so it won't be unlimited loop
        
    %first question
    easyone=input('\n 1. Which country features a maple leaf on its flag?','s'); %to prompt the user for the answer of the question
    lowereasyone=lower(easyone);  %to change the input answer into lowercase
    if strcmpi ('canada',lowereasyone)  %if the answer is canada then the sentence in the bracket below will be displayed
        disp('Great, you get it right in first attemt!') %to display the sentence in the bracket
        countereo=5; %allocate 5 marks to the player
    else %if the answer is other than canada then the following command will be displayed
        fprintf('\n') 
        disp('Um, you need to guess it again.')%to display the sentence in the bracket
        easyone=input('\n Which country features a maple leaf on its flag?','s'); %to prompt the user for the answer of the question
        lowereasyone=lower(easyone); %to change the input answer into lowercase
            if strcmpi ('canada',lowereasyone) %if the answer is canada then the sentence in the bracket below will be displayed
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            countereo=3; %allocate 3 marks to the player
            else %if the answer is other than canada then the following command will be displayed
                fprintf('\n')%this command will make the next sentence go to the next line.
                disp('Um no, guess it again.')%to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                clueeasyone =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowerclueeasyone=lower(clueeasyone); %to change the input answer into lowercase
                if strcmpi ('yes',clueeasyone)  %if the answer is yes then the sentence in the bracket below will be displayed
                 disp ('C****A') %to display the word in the bracket
                 easyone=input('\n Which country features a maple leaf on its flag?','s'); %to prompt the user for the answer of the question
                 lowereasyone=lower(easyone); %to change the input answer into lowercase
                    if strcmpi ('canada',lowereasyone)  %if the answer is canada then the sentence in the bracket below will be displayed
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    countereo=1; %allocate 1 marks to the player
                    else %if the answer is other than canada then the following command will be displayed
                    disp( 'You have used all your chances, the answer is Canada.')%to display the sentence in the bracket
                    countereo=0; %allocate 0 mark to the player 
                    end %if loop ends here
                else %if the answer is other than yes then the sentence in the bracket below will be displayed
                    easyone=input('\n Which country features a maple leaf on its flag?','s'); %to prompt the user for the answer of the question
                    lowereasyone=lower(easyone); %to change the input answer into lowercase
                    if strcmpi ('canada',lowereasyone)%if the answer is canada then the sentence in the bracket below will be displayed
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    countereo=1; %allocate 1 mark to the player 
                    else %if the answer is other than canada then the sentence in the bracket below will be displayed
                    disp( 'You have used all your chances, the answer is Canada.') %to display the sentence in the bracket
                    countereo=0; %allocate 0 mark to the player 
                    end %if loop ends here
                end %if loop ends here
            end %if loop ends here
    end %if loop ends here
    
    %for if loop of you want to know which if loop it belongs kindly click at the words end.
    
    %second question
    disp('For this second question,give your answer in integer')%to display the sentence in the bracket
    easytwo=input('\n 2.How many sides an isosceles triangle have?'); %to prompt the user for the answer of the question

    if easytwo==3 %if the condition is true, thecommand below will be displayed
        disp('Great, you get it right in first attempt!') %to display the sentence in the bracket
        counteretw=5;
    else
        fprintf('\n')%this command will make the next sentence go to the next line. 
        disp('Um, you need to guess it again.') %to display the sentence in the bracket
        easytwo=input('\n How many sides an isosceles triangle have?'); %to prompt the user for the answer of the question
            if easytwo==3 
            disp('Great, you get it right in second attempt!')%to display the sentence in the bracket
            counteretw=3;
            else
                fprintf('\n')%this command will make the next sentence go to the next line.
                disp('Um no, guess it again.') %to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                fprintf('\n')%this command will make the next sentence go to the next line.
                clueeasytwo =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowerclueeasytwo=lower(clueeasytwo);
                if strcmpi ('yes',clueeasytwo)
                 disp ('The triangle has three angles') %to display the sentence in the bracket
                 easytwo=input('\n How many sides an isosceles triangle have?'); %to prompt the user for the answer of the question
                    if easytwo==3 
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counteretw=1;
                    else
                    disp( 'You have used all your chances, the answer is 3.') %to display the sentence in the bracket
                    counteretw=0;  
                    end
                else
                    easytwo=input('\n How many sides an isosceles triangle have?'); %to prompt the user for the answer of the question
                    if easytwo==3 
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counteretw=1;
                    else
                    disp( 'You have used all your chances, the answer is 3') %to display the sentence in the bracket
                    counteretw=0;
                    end
                end
            end
    end
    
    %third question
    easythree=input('\n 3.Name a US state beginning with K.','s'); %to prompt the user for the answer of the question
    lowereasythree=lower(easythree);
    if strcmpi ('kansas',lowereasythree) 
        disp('Great, you get it right in first attempt!')%to display the sentence in the bracket
        counteret=5;
    else
        fprintf('\n') %this command will make the next sentence go to the next line.
        disp('Um, you need to guess it again.')%to display the sentence in the bracket
        easythree=input('\n Name a US state beginning with K.','s'); %to prompt the user for the answer of the question
        lowereasythree=lower(easythree);
            if strcmpi ('kansas',lowereasythree) 
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            counteret=3;
            else
                fprintf('\n') %this command will make the next sentence go to the next line.
                disp('Um no, guess it again.')%to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                clueeasythree =input('Do you want a clue?','s');
                lowerclueeasythree=lower(clueeasythree);
                if strcmpi ('yes',clueeasythree)
                 disp ('K***A*') %to display the word in the bracket
                 easythree=input('\n Name a US state beginning with K.','s'); %to prompt the user for the answer of the question
                 lowereasythree=lower(easythree);
                    if strcmpi ('kansas',lowereasythree)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counteret=1;
                    else
                    disp( 'You have used all your chances, the answer is Kansas.') %to display the sentence in the bracket
                    counteret=0;   
                    end
                else
                    easythree=input('\n Name a US state beginning with K.','s'); %to prompt the user for the answer of the question
                    lowereasythree=lower(easythree);
                    if strcmpi ('kansas',lowereasythree)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counteret=1;
                    else
                    disp( 'You have used all your chances, the answer Kansas.') %to display the sentence in the bracket
                    counteret=0;
                    end
                end
            end
    end
    
    %fourthquestion
    easyfour=input('\n 4.What is the standard unit of distance in the metric system?','s'); %to prompt the user for the answer of the question
    lowereasyfour=lower(easyfour);
    if strcmpi ('meter',lowereasyfour) 
        disp('Great, you get it right in first attempt!') %to display the sentence in the bracket
        counteref=5;
    else
        fprintf('\n') %this command will make the next sentence go to the next line.
        disp('Um, you need to guess it again.') %to display the sentence in the bracket
        easyfour=input('\n What is the standard unit of distance in the metric system?','s'); %to prompt the user for the answer of the question
        lowereasyfour=lower(easyfour);
            if strcmpi ('meter',lowereasyfour) 
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            counteref=3;
            else
                fprintf('\n') %this command will make the next sentence go to the next line.
                disp('Um no, guess it again.') %to display the sentence in the bracket
                disp('This is your last chance.')%to display the sentence in the bracket
                clueeasyfour =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowerclueeasyfour=lower(clueeasyfour);
                if strcmpi ('yes',clueeasyfour)
                 disp ('It has five words') %to display the sentence in the bracket
                 easyfour=input('\n What is the standard unit of distance in the metric systems?','s'); %to prompt the user for the answer of the question
                 lowereasyfour=lower(easyfour);
                    if strcmpi ('meter',lowereasyfour)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counteref=1;
                    else
                    disp('You have used all your chances, the answer is meter.') %to display the sentence in the bracket
                    counteref=0;   
                    end
                else
                    easyfour=input('\n What is the standard unit of distance in the metric system?','s'); %to prompt the user for the answer of the question
                    lowereasyfour=lower(easyfour);
                    if strcmpi ('meter',lowereasyfour)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counteref=1;
                    else
                    disp( 'You have used all your chances, the answer meter.') %to display the sentence in the bracket
                    counteref=0;
                    end
                end
            end
    end
    
    %fifthquestion
    easyfive=input('\n 5.What is the capital of Turkey?','s'); %to prompt the user for the answer of the question
    lowereasyfive=lower(easyfive);
    if strcmpi ('ankara',lowereasyfive) 
        disp('Great, you get it right in first attempt!') %to display the sentence in the bracket
        counterefv=5;
    else
        fprintf('\n') %this command will make the next sentence go to the next line.
        disp('Um, you need to guess it again.') %to display the sentence in the bracket
        easyfive=input('\n What is the capital of Turkey?','s'); %to prompt the user for the answer of the question
        lowereasyfive=lower(easyfive);
            if strcmpi ('ankara',lowereasyfive) 
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            counterefv=3;
            else
                fprintf('\n') %this command will make the next sentence go to the next line.
                disp('Um no, guess it again.') %to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                clueeasyfive =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowerclueeasyfive=lower(clueeasyfive);
                if strcmpi ('yes',clueeasyfive)
                 disp ('It has six words')
                 easyfive=input('\n What is the capital of Turkey?','s'); %to prompt the user for the answer of the question
                 lowereasyfive=lower(easyfive);
                    if strcmpi ('ankara',lowereasyfive)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterefv=1;
                    else
                    disp('You have used all your chances, the answer is Ankara.') %to display the sentence in the bracket
                    counterefv=0;   
                    end
                else
                    easyfive=input('\n What is the capital of Turkey?','s'); %to prompt the user for the answer of the question
                    lowereasyfive=lower(easyfive);
                    if strcmpi ('ankara',lowereasyfive)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterefv=1;
                    else
                    disp( 'You have used all your chances, the answer Ankara.') %to display the sentence in the bracket
                    counterefv=0;
                    end
                end
            end
    end
    playereo = countereo+counteretw+counteret+counteref+counterefv; %to count the players marks
    if playereo == 25 %if the mark is equal to 25
       congrats= sprintf('Congratulatins %s! You got full mark which is %3.0f.', name,playereo); %it will print out the sentence in the bracket and saved in variable greet.
       fprintf('\n')%this command will make the next sentence go to the next line.
       disp(congrats) %the strings in greet will be displayed
        elseif playereo>=20 && playereo<=24 %if the mark is between 20 t0 24 
            congrats= sprintf('You did a great job %s, you mark is %3.0f which is almost to full mark!', name,playereo); %it will print out the sentence in the bracket and saved in variable greet.
            fprintf('\n')%this command will make the next sentence go to the next line.
            disp(congrats) %the strings in greet will be displayed
        elseif playereo>=10 && playereo<=19 %if the mark is between 10 t0 19
            congrats= sprintf('Its okay %s, you will get there if you read more!', name); %it will print out the sentence in the bracket and saved in variable greet.
            fprintf('\n')%this command will make the next sentence go to the next line.
            fprintf(congrats) %the strings in greet will be displayed
            congrats= sprintf('Congratulations anyway for getting %3.0f.', playereo); %it will print out the sentence in the bracket and saved in variable greet.
            disp(congrats) %the strings in greet will be displayed
    else
        playereo>=0 && playereo<=9; %if the mark is between 0 t0 9 
            fprintf('\n')%this command will make the next sentence go to the next line.
            disp ('Um, seems like you have to read more in order to enhancing your general knowledge.')
            congrats= sprintf('Anyway, thank you for trying %s. You got %1.0f. Hope you will do better in future!', name,playereo); %it will print out the sentence in the bracket and saved in variable greet.
            disp(congrats) %the strings in greet will be displayed
    end
    end
        
    case 'intermediate' % if the case expression is true, it executes the corresponding statements and exits the switch block.
    while nplayers>0 %this case easy will loop until all the players have played.
    namee = input('\n Hi, before you play this game, can I get your name?', 's'); %to prompt user input for the name of player
    name=upper(namee); %to change the input name into uppercase
    greet = sprintf('Hi %s! Good luck in this game, wish you get a good mark!', name); %it will print out the sentence in the bracket and saved in variable greet.
    fprintf('\n')
    disp(greet) %the strings in greet will be displayed
    
    nplayers=nplayers-1; %nplayers will minus with one so it won't be unlimited loop
    
    %question 1
    intone=input('\n 1.Which instrument has keys, pedals and strings?','s'); %to prompt the user for the answer of the question
    lowerintone=lower(intone);
    if strcmpi ('piano',lowerintone) 
        disp('Great, you get it right in first attemt!') %to display the sentence in the bracket
        counterio=5;
    else
        fprintf('\n') 
        disp('Um, you need to guess it again.') %to display the sentence in the bracket
        intone=input('\n Which instrument has keys, pedals and strings?','s'); %to prompt the user for the answer of the question
        lowerintone=lower(intone);
            if strcmpi ('piano',lowerintone) 
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            counterio=3;
            else
                fprintf('\n') %this command will make the next sentence go to the next line.
                disp('Um no, guess it again.') %to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                fprintf('\n') %this command will make the next sentence go to the next line.
                clueintone =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowerclueintone=lower(clueintone);
                if strcmpi ('yes',lowerclueintone) 
                 disp ('The keys has two colours.') %to display the sentence in the bracket
                 intone=input('\n Which instrument has keys, pedals and strings?','s'); %to prompt the user for the answer of the question
                 lowerintone=lower(intone);
                    if strcmpi ('piano',lowerintone)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterio=1;
                    else
                    disp('You have used all your chances, the answer is piano.') %to display the sentence in the bracket
                    counterio=0;   
                    end
                else
                    intone=input('\n Which instrument has keys, pedals and strings?','s'); %to prompt the user for the answer of the question
                    lowerintone=lower(intone);
                    if strcmpi ('piano',lowerintone)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterio=1;
                    else
                    disp( 'You have used all your chances, the answer piano.') %to display the sentence in the bracket
                    counterio=0;
                    end
                end
            end
    end
    
    %question 2
    inttwo=input('\n 2.Which classical composer became deaf near the end of his life?','s'); %to prompt the user for the answer of the question
    lowerinttwo=lower(inttwo);
    if strcmpi ('beethoven',lowerinttwo) 
        disp('Great, you get it right in first attemt!') %to display the sentence in the bracket
        counterit=5;
    else
        fprintf('\n') %this command will make the next sentence go to the next line.
        disp('Um, you need to guess it again.') %to display the sentence in the bracket
        inttwo=input('\n Which classical composer became deaf near the end of his life?','s'); %to prompt the user for the answer of the question
        lowerinttwo=lower(inttwo);
            if strcmpi ('beethoven',lowerinttwo) 
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            counterit=3;
            else
                fprintf('\n') %this command will make the next sentence go to the next line.
                disp('Um no, guess it again.') %to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                fprintf('\n') %this command will make the next sentence go to the next line.
                clueinttwo =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowerclueinttwo=lower(clueinttwo);
                if strcmpi ('yes',lowerclueinttwo) 
                 fprintf('\n') %this command will make the next sentence go to the next line.
                 disp ('********n') %to display the sentence in the bracket
                 inttwo=input('\n Which classical composer became deaf near the end of his life?','s');
                 lowerinttwo=lower(inttwo);
                    if strcmpi ('beethoven',lowerinttwo)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterit=1;
                    else
                    disp('You have used all your chances, the answer is Beethoven.') %to display the sentence in the bracket
                    counterit=0;   
                    end
                else
                    inttwo=input('\n Which classical composer became deaf near the end of his life?','s'); %to prompt the user for the answer of the question
                    lowerinttwo=lower(inttwo);
                    if strcmpi ('beethoven',lowerinttwo)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterit=1;
                    else
                    disp( 'You have used all your chances, the answer Beethoven.') %to display the sentence in the bracket
                    counterit=0;
                    end
                end
            end
    end
    
    %question 3
    fprintf('\n') %this command will make the next sentence go to the next line. 
    disp('For this second question,give your answer in integer') %to display the sentence in the bracket
    intthree=input('3.How many days does the earth take to revolve around the sun?'); %to prompt the user for the answer of the question

    if intthree==365 
        disp('Great, you get it right in first attemt!') %to display the sentence in the bracket
        counterith=5;
    else
        fprintf('\n') %this command will make the next sentence go to the next line.
        disp('Um, you need to guess it again.') %to display the sentence in the bracket
        intthree=input('\n How many days does the earth take to revolve around the sun?'); %to prompt the user for the answer of the question
            if intthree==365 
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            counterith=3;
            else
                fprintf('\n') %this command will make the next sentence go to the next line.
                disp('Um no, guess it again.') %to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                fprintf('\n') %this command will make the next sentence go to the next line.
                clueintth =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowerclueintth=lower(clueintth);
                if strcmpi ('yes',clueintth)
                 fprintf('\n')%this command will make the next sentence go to the next line.
                 disp ('When the earth done revolve the orbit, we will also done with the year we currently living.') %to display the sentence in the bracket
                 intthree=input('\n How many days does the earth take to revolve around the sun?'); %to prompt the user for the answer of the question
                    if intthree==365
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterith=1;
                    else
                    disp( 'You have used all your chances, the answer is 365.') %to display the sentence in the bracket
                    counterith=0;  
                    end
                else
                    intthree=input('\n How many days does the earth take to revolve around the sun?'); %to prompt the user for the answer of the question
                    if intthree==365 
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterith=1;
                    else
                    disp( 'You have used all your chances, the answer is 365.') %to display the sentence in the bracket
                    counterith=0;
                    end
                end
            end
    end
    
    %question 4
    intfo=input('\n 4. What can travel around the world while staying in a corner?','s'); %to prompt the user for the answer of the question
    lowerinfo=lower(intfo);
    if strcmpi ('stamp',lowerinfo) 
        disp('Great, you get it right in first attemt!') %to display the sentence in the bracket
        counterfo=5;
    else
        fprintf('\n')%this command will make the next sentence go to the next line.
        disp('Um, you need to guess it again.') %to display the sentence in the bracket
        intfo=input('\n What can travel around the world while staying in a corners.','s');
        lowerinfo=lower(intfo);
            if strcmpi ('stamp',lowerinfo) 
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            counterfo=3;
            else
                fprintf('\n')%this command will make the next sentence go to the next line.
                disp('Um no, guess it again.') %to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                fprintf('\n')%this command will make the next sentence go to the next line.
                clueintfo =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowerclueintfo=lower(clueintfo);
                if strcmpi ('yes',lowerclueintfo) 
                 fprintf('\n')%this command will make the next sentence go to the next line.
                 disp ('What is necessary thing to get the envelope post?') %to display the sentence in the bracket
                 intfo=input('\n What can travel around the world while staying in a corner?','s'); %to prompt the user for the answer of the question
                 lowerinfo=lower(intfo);
                    if strcmpi ('stamp',lowerinfo)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterfo=1;
                    else
                    disp('You have used all your chances, the answer is stamp.') %to display the sentence in the bracket
                    counterfo=0;   
                    end
                else
                    intfo=input('\n What can travel around the world while staying in a corner?','s'); %to prompt the user for the answer of the question
                    lowerinfo=lower(intfo);
                    if strcmpi ('stamp',lowerinfo)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterfo=1;
                    else
                    disp( 'You have used all your chances, the answer is stamp.') %to display the sentence in the bracket
                    counterfo=0;
                    end
                end
            end
    end

    %question 5
    intfi=input('\n 5.What do we call the study of birds?','s'); %to prompt the user for the answer of the question
    lowerinfi=lower(intfi);
    if strcmpi ('ornithology',lowerinfi) 
        disp('Great, you get it right in first attempt!') %to display the sentence in the bracket
        counterfi=5;
    else
        fprintf('\n') %this command will make the next sentence go to the next line.
        disp('Um, you need to guess it again.')%to display the sentence in the bracket
        intfi=input('\n What do we call the study of birds?','s'); %to prompt the user for the answer of the question
        lowerinfi=lower(intfi);
            if strcmpi ('ornithology',lowerinfi) 
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            counterfi=3;
            else
                fprintf('\n') %this command will make the next sentence go to the next line.
                disp('Um no, guess it again.') %to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                fprintf('\n') %this command will make the next sentence go to the next line.
                clueintfi =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowerclueintfi=lower(clueintfi);
                if strcmpi ('yes',lowerclueintfi) 
                 fprintf('\n') %this command will make the next sentence go to the next line.
                 disp ('O***t*****y') %to display the word in the bracket
                 intfi=input('\n What do we call the study of birds?','s'); %to prompt the user for the answer of the question
                 lowerinfi=lower(intfi);
                    if strcmpi ('ornithology',lowerinfi)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterfi=1;
                    else
                    disp('You have used all your chances, the answer is ornithology.') %to display the sentence in the bracket
                    counterfi=0;   
                    end
                else
                    intfi=input('\n What do we call the study of birds?','s');%to prompt the user for the answer of the question
                    lowerinfi=lower(intfi);
                    if strcmpi ('ornithology',lowerinfi)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterfi=1;
                    else
                    disp( 'You have used all your chances, the answer is ornithology.') %to display the sentence in the bracket
                    counterfi=0;
                    end
                end
            end
    end
    
    playerio= counterio+counterit+counterith+counterfo+counterfi;
    
    if playerio == 25
       congrats= sprintf('Congratulatins %s! You got full mark which is %3.0f.', name,playerio); %it will print out the sentence in the bracket and saved in variable greet.
       fprintf('\n')%this command will make the next sentence go to the next line.
       disp(congrats) %the strings in greet will be displayed
        elseif playerio>=20 && playerio<=24
            congrats= sprintf('You did a great job %s, you mark is %3.0f which is almost to full mark!', name,playerio); %it will print out the sentence in the bracket and saved in variable greet.
            fprintf('\n')%this command will make the next sentence go to the next line.
            disp(congrats) %the strings in greet will be displayed
        elseif playerio>=10 && playerio<=19
            congrats= sprintf('Its okay %s, you will get there if you read more!', name); %it will print out the sentence in the bracket and saved in variable greet.
            fprintf('\n')%this command will make the next sentence go to the next line.
            fprintf(congrats) %the strings in greet will be displayed
            congrats= sprintf('Congratulations anyway for getting %3.0f.', playerio); %it will print out the sentence in the bracket and saved in variable greet.
            disp(congrats) %the strings in greet will be displayed
    else
        playerio>=0 && playerio<=9;
            fprintf('\n')%this command will make the next sentence go to the next line.
            disp ('Um, seems like you have to read more in order to enhancing your general knowledge.')
            congrats= sprintf('Anyway, thank you for trying %s. You got %1.0f. Hope you will do better in future!', name,playerio); %it will print out the sentence in the bracket and saved in variable greet.
            disp(congrats) %the strings in greet will be displayed
    end
    end
    
    case 'difficult' %if the case expression is true, it executes the corresponding statements and exits the switch block.
    while nplayers>0 %this case difficlt will loop until all the players have played.
    namee = input('\n Hi, before you play this game, can I get your name?', 's'); %to prompt user input for the name of player
    name=upper(namee); %to change the input name into uppercase
    greet = sprintf('Hi %s! Good luck in this game, wish you get a good mark!', name); %it will print out the sentence in the bracket and saved in variable greet.
    fprintf('\n')
    disp(greet) %the strings in greet will be displayed
    
    nplayers=nplayers-1; %nplayers will minus with one so it won't be unlimited loop
    
    %question 1
    diffone=input('\n 1.Golf was first played in which country?','s'); %to prompt the user for the answer of the question
    lowerdiffo=diffone;
    if strcmpi ('scotland',lowerdiffo) 
        disp('Great, you get it right in first attempt!') %to display the sentence in the bracket
        counterdo=5;
    else
        fprintf('\n') %this command will make the next sentence go to the next line. 
        disp('Um, you need to guess it again.') %to display the sentence in the bracket
        diffone=input('\n Golf was first played in which country?','s'); %to prompt the user for the answer of the question
        lowerdiffo=diffone;
            if strcmpi ('scotland',lowerdiffo) 
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            counterdo=3;
            else
                fprintf('\n') %this command will make the next sentence go to the next line.
                disp('Um no, guess it again.') %to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                fprintf('\n') %this command will make the next sentence go to the next line.
                cluediffo =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowercluediffo=lower(cluediffo);
                if strcmpi ('yes',lowercluediffo) 
                 fprintf('\n') %this command will make the next sentence go to the next line.
                 disp ('Its from one of these:') %to display the sentence in the bracket
                 disp('-Wales') %to display the word in the bracket
                 fprintf('\n') %this command will make the next sentence go to the next line.
                 disp('-Great Britain') %to display the word in the bracket
                 fprintf('\n') %this command will make the next sentence go to the next line.
                 disp('-Ireland') %to display the word in the bracket
                 fprintf('\n') %this command will make the next sentence go to the next line.
                 disp('-Scotland') %to display the word in the bracket
                 diffone=input('\n Golf was first played in which country?','s'); %to prompt the user for the answer of the question
                 lowerdiffo=diffone;
                    if strcmpi ('scotland',lowerdiffo)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterdo=1;
                    else
                    disp('You have used all your chances, the answer is Scotland.') %to display the sentence in the bracket
                    counterdo=0;   
                    end
                else
                    diffone=input('\n Golf was first played in which country?','s'); %to prompt the user for the answer of the question
                    lowerdiffo=diffone;
                    if strcmpi ('scotland',lowerdiffo)
                    disp('Great, you get it right in the last attempt!') %to display the sentence in the bracket
                    counterdo=1;
                    else
                    disp( 'You have used all your chances, the answer is scotland.') %to display the sentence in the bracket
                    counterdo=0;
                    end
                end
            end
    end
    
    %question 2
    difftwo=input('\n 2.Name the largest fresh water lake in the world?','s'); %to prompt the user for the answer of the question
    lowerdifft=lower(difftwo);
    if strcmpi ('lake superior',lowerdifft) 
        disp('Great, you get it right in first attempt!') %to display the sentence in the bracket
        counterdt=5;
    else
        fprintf('\n') %this command will make the next sentence go to the next line.
        disp('Um, you need to guess it again.') %to display the sentence in the bracket
        difftwo=input('\n Name the largest fresh water lake in the world?','s'); %to prompt the user for the answer of the question
        lowerdifft=lower(difftwo);
            if strcmpi ('lake superior',lowerdifft) 
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            counterdt=3;
            else
                fprintf('\n') %this command will make the next sentence go to the next line.
                disp('Um no, guess it again.') %to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                fprintf('\n') %this command will make the next sentence go to the next line.
                cluedifft =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowercluedifft=lower(cluedifft);
                if strcmpi ('yes',lowercluedifft) 
                 fprintf('\n') %this command will make the next sentence go to the next line.
                 disp ('The lake is located in North America.') %to display the sentence in the bracket
                 difftwo=input('\n Name the largest fresh water lake in the world?','s'); %to prompt the user for the answer of the question
                 lowerdifft=lower(difftwo);
                    if strcmpi ('lake superior',lowerdifft)
                    disp('Great, you get it right in the last attempt!')%to display the sentence in the bracket
                    counterdt=1;
                    else
                    disp('You have used all your chances, the answer is Lake Superior.')%to display the sentence in the bracket
                    counterdt=0;   
                    end
                else
                    difftwo=input('\n Name the largest fresh water lake in the world?','s'); %to prompt the user for the answer of the question
                    lowerdifft=lower(difftwo);
                    if strcmpi ('lake superior',lowerdifft)
                    disp('Great, you get it right in the last attempt!')%to display the sentence in the bracket
                    counterdt=1;
                    else
                    disp( 'You have used all your chances, the answer is Lake Superior.')%to display the sentence in the bracket
                    counterdt=0;
                    end
                end
            end
    end

    %question 3
    diffthr=input('\n 3.In which sport would you use a sand iron?','s'); %to prompt the user for the answer of the question
    lowerdiffth=lower(diffthr);
    if strcmpi ('golf',lowerdiffth) 
        disp('Great, you get it right in first attempt!') %to display the sentence in the bracket
        counterdth=5;
    else
        fprintf('\n')%this command will make the next sentence go to the next line.
        disp('Um, you need to guess it again.') %to display the sentence in the bracket
        diffthr=input('\n In which sport would you use a sand iron?','s'); %to prompt the user for the answer of the question
        lowerdiffth=lower(diffthr);
            if strcmpi ('golf',lowerdiffth) 
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            counterdth=3;
            else
                fprintf('\n') %this command will make the next sentence go to the next line.
                disp('Um no, guess it again.') %to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                fprintf('\n')%this command will make the next sentence go to the next line.
                cluediffth =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowercluediffth=lower(cluediffth);
                if strcmpi ('yes',lowercluediffth) 
                 fprintf('\n')%this command will make the next sentence go to the next line.
                 disp ('Its an outdoor sports.') %to display the sentence in the bracket
                 diffthr=input('\n In which sport would you use a sand iron?','s'); %to prompt the user for the answer of the question
                 lowerdiffth=lower(diffthr);
                    if strcmpi ('golf',lowerdiffth)
                    disp('Great, you get it right in the last attempt!'); %to display the sentence in the bracket
                    counterdth=1;
                    else
                    disp('You have used all your chances, the answer is golf.'); %to display the sentence in the bracket
                    counterdth=0;   
                    end
                else
                    diffthr=input('\n In which sport would you use a sand iron?','s'); %to prompt the user for the answer of the question
                    lowerdiffth=lower(diffthr);
                    if strcmpi ('golf',lowerdiffth)
                    disp('Great, you get it right in the last attempt!') ;%to display the sentence in the bracket
                    counterdth=1;
                    else
                    disp( 'You have used all your chances, the answer is golf.'); %to display the sentence in the bracket
                    counterdth=0;
                    end
                end
            end
    end
    
    %question 4
    fprintf('\n')%this command will make the next sentence go to the next line.
    disp('For this question, it is a two words answer.') %to display the sentence in the bracket
    difffo=input('4. Which ocean is to the east of Africa?','s'); %to prompt the user for the answer of the question
    lowerdiffo=lower(difffo);
    if strcmpi ('indian ocean',lowerdiffo) 
        disp('Great, you get it right in first attempt!') %to display the sentence in the bracket
        counterdfo=5;
    else
        fprintf('\n') %this command will make the next sentence go to the next line.
        disp('Um, you need to guess it again.') %to display the sentence in the bracket
        difffo=input('\n Which ocean is to the east of Africa?','s'); %to prompt the user for the answer of the question
        lowerdiffo=lower(difffo);
            if strcmpi ('indian ocean',lowerdiffo) 
            disp('Great, you get it right in second attempt!') %to display the sentence in the bracket
            counterdfo=3;
            else
                fprintf('\n')%this command will make the next sentence go to the next line.
                disp('Um no, guess it again.')%to display the sentence in the bracket
                disp('This is your last chance.')%to display the sentence in the bracket
                fprintf('\n')%this command will make the next sentence go to the next line.
                cluediffo =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowercluedifffo=lower(cluediffo);
                if strcmpi ('yes',lowercluedifffo) 
                 fprintf('\n') %this command will make the next sentence go to the next line.
                 disp ('*n***n ****n') %to display the sentence in the bracket
                 difffo=input('\n Which ocean is to the east of Africa?','s'); %to prompt the user for the answer of the question
                 lowerdiffo=lower(difffo);
                    if strcmpi ('indian ocean',lowerdiffo)
                    disp('Great, you get it right in the last attempt!'); %to display the sentence in the bracket
                    counterdfo=1;
                    else
                    disp('You have used all your chances, the answer is Indian Ocean.'); %to display the sentence in the bracket
                    counterdfo=0;   
                    end
                else
                    difffo=input('\n Which ocean is to the east of Africa?','s'); %to prompt the user for the answer of the question
                    lowerdiffo=lower(difffo);
                    if strcmpi ('indian ocean',lowerdiffo)
                    disp('Great, you get it right in the last attempt!'); %to display the sentence in the bracket
                    counterdfo=1;
                    else
                    disp( 'You have used all your chances, the answer is Indian Ocean.'); %to display the sentence in the bracket
                    counterdfo=0;
                    end
                end
            end
    end
    
    
    %question 5
    difffi=input('\n 5. Which is the nearest star?','s'); %to prompt the user for the answer of the question
    
    lowerdiffi=lower(difffi);
    if strcmpi ('sun',lowerdiffi) 
        disp('Great, you get it right in first attempt!') %to display the sentence in the bracket
        counterdfi=5;
    else
        fprintf('\n')%this command will make the next sentence go to the next line.
        disp('Um, you need to guess it again.') %to display the sentence in the bracket
        difffi=input('\n Which is the nearest star?','s'); %to prompt the user for the answer of the question
        lowerdiffi=lower(difffi);
            if strcmpi ('sun',lowerdiffi) 
            disp('Great, you get it right in second attempt!'); %to display the sentence in the bracket
            counterdfi=3;
            else
                fprintf('\n')%this command will make the next sentence go to the next line.
                disp('Um no, guess it again.') %to display the sentence in the bracket
                disp('This is your last chance.') %to display the sentence in the bracket
                fprintf('\n')%this command will make the next sentence go to the next line.
                cluediffi =input('Do you want a clue?','s'); %to prompt the user for the answer of the question
                lowercluedifffi=lower(cluediffi);
                if strcmpi ('yes',lowercluedifffi) 
                 fprintf('\n')%this command will make the next sentence go to the next line.
                 disp ('It is large enough that approximately 1.3 million Earths could fit inside (if squashed in) or even if the Earths retained their spherical shape.') %to display the sentence in the bracket
                 difffi=input('\n Which is the nearest star?','s'); %to prompt the user for the answer of the question
                 lowerdiffi=lower(difffi);
                    if strcmpi ('sun',lowerdiffi)
                    disp('Great, you get it right in the last attempt!'); %to display the sentence in the bracket
                    counterdfi=1;
                    else
                    disp('You have used all your chances, the answer is the Sun.');  %to display the sentence in the bracket
                    counterdfi=0;   
                    end
                else
                    difffi=input('\n Which is the nearest star?','s'); %to prompt the user for the answer of the question
                    lowerdiffi=lower(difffi);
                    if strcmpi ('sun',lowerdiffi)
                    disp('Great, you get it right in the last attempt!'); %to display the sentence in the bracket
                    counterdfi=1;
                    else
                    disp( 'You have used all your chances, the answer is the Sun.'); %to display the sentence in the bracket
                    counterdfi=0;
                    end
                end
            end
    end
  
    playerdo=counterdo+counterdt+counterdth+counterdfo+counterdfi; %to count the player marks
    
    if playerdo == 25
       congrats= sprintf('Congratulatins %s! You got full mark which is %3.0f.', name,playerdo); %it will print out the sentence in the bracket and saved in variable greet.
       fprintf('\n')%this command will make the next sentence go to the next line.
       disp(congrats) %the strings in greet will be displayed
        elseif playerdo>=20 && playerdo<=24
            congrats= sprintf('You did a great job %s, you mark is %3.0f which is almost to full mark!', name,playerdo); %it will print out the sentence in the bracket and saved in variable greet.
            fprintf('\n')%this command will make the next sentence go to the next line.
            disp(congrats) %the strings in greet will be displayed
        elseif playerdo>=10 && playerdo<=19
            congrats= sprintf('Its okay %s, you will get there if you read more!', name); %it will print out the sentence in the bracket and saved in variable greet.
            fprintf('\n')%this command will make the next sentence go to the next line.
            fprintf(congrats) %the strings in greet will be displayed
            congrats= sprintf('Congratulations anyway for getting %3.0f.', playerdo); %it will print out the sentence in the bracket and saved in variable greet.
            disp(congrats) %the strings in greet will be displayed
    else
        playerdo>=0 && playerdo<=9;
            fprintf('\n')%this command will make the next sentence go to the next line.
            disp ('Um, seems like you have to read more in order to enhancing your general knowledge.') %to display the sentence in the bracket
            congrats= sprintf('Anyway, thank you for trying %s. You got %1.0f. Hope you will do better in future!', name,playerdo); %it will print out the sentence in the bracket and saved in variable greet.
            disp(congrats) %the strings in greet will be displayed
    end
    
    end %the while loop for case difficult ends here  
    
    otherwise % if the all the three cases expressions are false, it executes the corresponding statement and exits the switch block
        disp ('Sorry the level you insert is not available.') %to display the sentence in the bracket
        disp('Please enter the number of players again as well as the level given for you to play this exciting game.') %to display the sentence in the bracket
        fprintf('\n')%this command will make the next sentence go to the next line.
        playagain %go to function playagain.m
end %the switch ends here

plagain = input('\n Do you want to play the game again?','s');
lowerplagain=lower(plagain);
if strcmpi ('yes',lowerplagain)
    playagain
else
    disp('Thank you for playing! See you again. :)') %to display the sentence in the bracket
end
    


%determine which players marks are they
%compare marks to show who's the winner
%play the game again
    

   




