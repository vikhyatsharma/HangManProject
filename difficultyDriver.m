%This driver script tests the functionality of the following code. 

attempt = input("How many tests do you which to attempt?");

for i = 1:attempt
number_of_tries = input("Enter difficulty (hard, medium, easy)","s");


switch number_of_tries
    
    case 'medium' 
        tries = 13;
        fprintf("You have selected %s, got %0.0f tries, expected 13 tries\n", number_of_tries,tries)
   
    case 'easy' 
        tries = 15;
        fprintf("You have selected %s, got %0.0f tries, expected 15 tries\n", number_of_tries,tries)
   
      
    case 'hard' 
        tries = 11;
        fprintf("You have selected %s, got %0.0f tries, expected 11 tries\n", number_of_tries,tries)
   
        
    otherwise 
        %If select this opetion the difficulty reselts to easy
        disp("Not valid difficulty, setting to easy by default")
        tries = 15;
       fprintf("You have selected %s, got %0.0f tries, expected 15 tries\n", number_of_tries,tries)
   
     
end

end



