% Name: Andrew Pang
% Date: 29 MAR 2019
% Function for Task 3 : Functions

%defines a function compute_ug which takes 3 args m1, m2 and r
function find_ug = compute_ug(m1,m2,r)

%returns the value find_ug which operates on the 3 values and computes the GPE
find_ug = ((-6.67e-11)*m1.*m2)./r;