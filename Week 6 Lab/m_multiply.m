% Name: Andrew Pang
% Date: 12 APR 2019
% Function for Task 5 : Matrix multiplication
%
%
%---INPUTS:---
% A = first matrix
% B = second matrix
%
%---OUTPUTS:---
% M = product of matrices
%
function M = m_multiply(A,B)
    %gets the n of rows and columns of matrices A and B
    [ rA, cA ] = size(A);
    [ rB, cB ] = size(B);
    
    %creates an empty matrix of the product
    M= zeros(rA,cB);
    
    %for loop that runs through every row of matrix A
    for x = 1:1:rA
        
        %for loop that runs through every column for matrix B
        for y = 1:1:cB
            
            %set cumulative counter i to zero
            i = 0;
            
            %for loop that runs number of column in A or rows in B
            for k = 1:1:cA
                
                %adds the calculated value to i and over-write i until for
                %loop is over
                i = i + A(x,k) * B(k,y);
                
            end
            
            %assigns the value of element to its position in matrix M
            M(x,y) = i;
            
        end
    end

end
