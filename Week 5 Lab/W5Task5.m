% Name: Andrew Pang
% Date: 5 APR 2019
% Task 5 : Final Marks
close all; clear all; clc;

%prompts the user for their student ID
usr_id = input('Welcome to Monash, please enter your student ID :');

%imports the data from ENG1060studentmarks.txt into a table
datum = importdata('ENG1060studentmarks.txt');

%gets the numeric data values in the form of a matrix
marks_table = datum.data;

%finds the row of where the inputted student id is
[ x, y ]= find(marks_table == usr_id);

%sums up the lab marks (column 2 to 11)
lab_total = sum(marks_table(x,2:11));

%gets the marks for assignment, others and exam
ass_total = marks_table(x,12);
oth_total = marks_table(x,13);
exm_total = marks_table(x,14);

%calls the function getmarks with the 4 in put arguments above
%function reutrn 2 values
[ total_marks, grade ] = getmarks(lab_total,ass_total,oth_total,exm_total);

%prints the final mark and grade
fprintf('your total mark is %4.2f, your grade is ',total_marks);
fprintf(grade);




