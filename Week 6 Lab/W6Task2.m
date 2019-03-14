% Name: Andrew Pang
% Date: 12 APR 2019
% Task 2 : Andrew's Circumference Calculator

%welcoming note for user
fprintf("Thank you for using Andrew's circumference calculator!\n");

%while loop so that the code loops indefinitely unless prompted to exit
while 1
    
    %gets user choice
    usr_choice = input('Enter (1) for circle \nEnter (2) for elipse \n >');
    
    %if else statement for user's choice 1 for circle, 2 for elipse
    if usr_choice == 1
        
       %prompts user for circle radius and calculates circumference
       c_rad = input('Enter radius length : ');
       c_cir = 2*pi*c_rad;
       
       %prints the answer
       fprintf('The circle of radius %f has circumference %f',c_rad,c_cir);
    
    elseif usr_choice == 2
        
       %prompts the user for major and minor axes length and calculates
       %circumference
       a = input('Enter minor axis length : ');
       b = input('Enter major axis length : ');
       e_cir = pi * abs(3*(a+b) - sqrt((3*a + b)*(a + 3*b)));
       
       %prints the answer
       fprintf('The elipse with minor axis %f and major axis %f has a circumference of %f',a,b,e_cir);
    
    else
        
       %error code if user enters something invalid
       fprintf('Invalid choice!')
   
    end
    
    %prompts the user for exit condition
    usr_exit = input('\nWould you like to exit? Yes (1) No (0)  \n >');
    
    %ends the loop if user chooses to exit (1)
    if usr_exit == 1
        break
    end
    
end
    
    
    


   


