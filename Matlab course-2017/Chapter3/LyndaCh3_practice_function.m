%Practice script calculates the rolling mean of stock data
% Upon typing help LyndaCh3_practice_function.m in the command window you
% should see the first comment written here.
function [ output_args ] = LyndaCh3_practice_function( input_args )
%function output will be displayed when it's called with some input
%arguments
%   Detailed explanation goes here
mean(input_args)
for i = 0:9
    output_args(i+1)=mean(input_args(250*i+1:250*i+250)) %make sure input_arg variable name is consistent throughout 
end

end

%we can define the output_arg(i+1), so that the function will hold it't
%output there instead of just displaying in the command window.
%To run the function, type a =
%LyndaCh3_practice_function(csvread('sample_data.csv')) in the command
%window, it will generate a with 1X10 size.
%Matlab will display mean first and then define the matrix to hold all the
%output data from the function. 

