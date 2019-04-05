% Name: Andrew Pang
% Date: 5 APR 2019
% Function for Task 5 : Final Marks
%
%
%INPUTS
%lab_m = total marks for lab
%ass_m = total assignment marks
%oth_m = total other marks
%exm_m = total exams marks
%
%
%OUTPUTS
%Final_m = final marks
%grade = final grade
%
%
%defines the function getmarks with 4 input arguments
%this function returns two values
function [ final_m, grade ] = getmarks(lab_m , ass_m , oth_m , exm_m)

%calculates the final marks of student
final_m = (0.25*(lab_m/100) + 0.1*(ass_m/10) + 0.15*(oth_m/15) + 0.5*(exm_m/100))*100;

%if else statement to determine which grade category the student belongs to
if final_m >= 80 
    
    grade = 'HD';
    
elseif final_m >= 70
    
    grade = 'D';
    
elseif final_m >= 60
    
    grade = 'C';
    
    
elseif final_m >= 50
    
    grade = 'P';
    
else
    
    grade = 'N';
    
end