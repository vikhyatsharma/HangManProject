
ini_word = input("please enter a word",'s');
%tries is set to 5
tries = 5;


guessed = [];
correct = [];

iniSaved = [];


correctGuess = [];
incorrectGuess = [];

while tries > 0 %As long as there are tries left, the loop keeps going
    
    guesslet = input("Please guess a letter:\n","s"); 
    guessed = guesslet; 
    
    clc;
    

    %runs through iniword to see if guesslet matches any letter in there
 for i = 1:length(ini_word) 
     
    %If the word is in it print out ...
    
    %when guesslet equals iniword of i, guesslet is removed from iniword.
    if guesslet == ini_word(i)
         disp("You guessed correct, Nice one :)!!")
         ini_word = ini_word(ini_word ~= guesslet); 
         correct = 1;
         correctGuess = char(correctGuess,guessed); 
         %correctguess stroes the letters that has been removed from
         %iniword.
         break;
      
    end
   %When a letter in iniword is the same as the character in iniword when
   %print...
    if i == length(ini_word)
        disp("Your guess is not correct, unlucky :(!!")
        correct = 0;
        tries = tries - 1; %incorect guess means one less tries
        
    end
    
 guessed
 correct
    %don't save previously correct letters to the incorrect letter array
    if i == length(ini_word) 
        %disp("Strike added due to letter double-up.");
        incorrectGuess = char(incorrectGuess,guessed);
    end
    
 end

 if tries == 0
     
    disp("You are hanged, you lose!!!") %When tries = 0, disp...
     fprintf("Unlucky")
     disp("The word was")
     disp(iniSaved)
 end
%print the incorrect and correct gueses everytime
 disp("Correct Letters:");
 fprintf("%s\n",correctGuess);
 disp("Incorrect Letters:");
 fprintf("%s\n",incorrectGuess);


 %when all letters have been removed from ini string, that means that you
 %guessed them all correctly so you win
 if isempty(ini_word) 
     clc;
        disp("Congratualtions! you win!")
        break;
 end
    
    
end