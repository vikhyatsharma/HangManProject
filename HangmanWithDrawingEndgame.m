%This program is a game where the user put in a word to be guessed then
%have to try to guess the letter. (simplicity version of hangman)

%Introduce the game
disp("Wellcome to hangman, by Ton J. Neill")

%Setting empty vectors
guessed = [];
correct = [];

iniSaved = [];

%setting empty vectors
correctGuess = [];
incorrectGuess = [];


%Reads in players name.

player_name = input("Please enter your player name:\n","s");

clc;

%reads in the word to be guessed
ini_word = input("Please enter a word (max. 10 letters):\n","s");

clc;

%If iniword is longer than ten letters then, "Too long,..." will
%be displayed, until iniword has less than 10 characters

while length(ini_word) > 10 %set a limit
    
    ini_word = input("Too long, please try again:\n","s"); 
    
end 

clc;

%Setting a static copy of the word
iniSaved = ini_word;

%Set a difficulty by reading inputs (easy, medium, and hard).

disp("The game is made easier by adding buffer guesses");
disp("that don't count towards your death. ('easy', 'medium', 'hard')");
number_of_tries = input("NOTE: 'hard' is the original difficulty\n",'s');


%Link the set words to the number of tries
    
switch number_of_tries
    
    case 'medium' 
        tries = 13;
        fprintf("You have  13 guesses\n");
   
    case 'easy' 
        tries = 15;
        fprintf("You have 15 guesses\n");
    
        
    case 'hard' 
        tries = 11;
        fprintf("You have 11 guesses\n");  
        
    otherwise 
        disp("Not valid difficulty, setting to easy by default")
        tries = 15;
        fprintf("You have 15 guesses\n");
     
end



    
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
    
    
    %don't save previously correct letters to the incorrect letter array
    if i == length(ini_word) 
        %disp("Strike added due to letter double-up.");
        incorrectGuess = char(incorrectGuess,guessed);
    end
    
 end
 
 %visualising hangman 
 if tries == 9
    disp("____________________");
 end
 
 if tries == 8
     disp("|");
     disp("|");
     disp("|");
     disp("|");
    disp("____________________");
 end
 
 if tries == 7
     disp("____________________");
     disp("|");
     disp("|");
     disp("|");
     disp("|");
    disp("____________________");
 end
 
 if tries == 6
     disp("____________________");
     disp("|         |");
     disp("|");
     disp("|");
     disp("|");
    disp("____________________");
  end
 
  if tries == 5
     disp("____________________");
     disp("|         |");
     disp("|         O");
     disp("|");
     disp("|");
    disp("____________________");
 end
 
 if tries == 4
     disp("____________________");
     disp("|         |");
     disp("|         O");
     disp("|         |");
     disp("|");
    disp("____________________");
 end
 
 if tries == 3
     disp("____________________");
     disp("|         |");
     disp("|         O");
     disp("|        /|");
     disp("|");
    disp("____________________");
 end
 
 if tries == 2
     disp("____________________");
     disp("|         |");
     disp("|         O");
     disp("|        /|\");
     disp("|");
    disp("____________________");
 end
 
 if tries == 1
     disp("____________________");
     disp("|         |");
     disp("|         O");
     disp("|        /|\");
     disp("|        /");
    disp("____________________");
 end
 
 if tries == 0
     disp("____________________");
     disp("|         |");
     disp("|         O");
     disp("|        /|\");
     disp("|        / \");
    disp("____________________");
 
        disp("You are hanged, you lose!!!") %When tries = 0, disp...
        fprintf("Unlucky %s\n",player_name)
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