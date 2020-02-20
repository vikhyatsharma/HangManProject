%This driver script test the funtionaly of the code. 

%case 1 

ini_word1 = 'hello';
expc = 'noting prints';

if length(ini_word1) > 10 
    
  disp("case 1,too long") %if too long print...
    
end 

%case 2
ini_word2 = 'alphanet';
expc = 'nothing prints';

if length(ini_word2) > 10 
    
    disp("case 2, Too long") %if too long print...
    
end 

%case 3

ini_word3 = 'aafsdafasfafaagdfgngajsnfabdhjkfasjhfb';
expc = 'nothing prints';

if length(ini_word3) > 10 
    
    disp("Case 3, too long") %if too long print...
    
end 


%case 4


ini_word4 = 'goodmorninghellomynameiston';
expc = 'nothing prints';

if length(ini_word4) > 10 
    
    disp("Case 4, too long") %if too long print...
    
end 
