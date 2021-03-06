% how are program files stored?
%Matlab always displays in the top bar which folder its working off of. You
%can click on any upper folders to nevigate between folders.
%By default Matlab can only find .m files that are either included in the
%program by default or present in your currently active folder. This means
%that if a certain file is referenced by your script, it must be in the
%active folder or else Matlab won't be able to find it.
%Matlab also has a few folders that are included in its search called
%search path. These include all folders provided by the Matlab installation
%as well as all folders within the Matlab userpath fodler in your document
%folder. If you want Matlab to look into additional folders you can add
%them to the search path by typing addpath followed by the file path.
%eg. addpath('/Users/hiralpatel/Desktop/LyndaCh3.m')
addpath('/Users/hiralpatel/Desktop/LyndaCh3.m');

%Viewing and editing programs
p = rand(2,3) %generates random 2X3 matrix.
%To run the program, we have several options.
%1. Click run on the top wihtin editor window.
%2. Right click on the script from within the current folder window. Choose
%Run or press F9.
%3.run the script by typing its' name into the command window and pressing
%enter. This method is useful if your script is a function, since this is
%the only way to provide inputs.
% Matlab doesn't have a variable definition statement, so each inout
% argument must be a variable of the proper type and dimensions in order to
% be acceptable.
%It's a good practice to make the variable names in your functions as
%descriptive as possible. eg. here, instead of defining p = rand(2,3), we
%should say stock_price = rand(2,3)
%It is also a good practice to add checks in the program.

% Creating scripts
clear;
%addpath('/Users/hiralpatel/Documents/MATLAB/Ex_Files_UaR_MATLAB/Exercise Files/Chapter 3/sample_data.csv');
stocks = csvread('sample_data.csv') %Matlab can automatically convert csv files to matrices by simply using csvread
%defining a function csvread, and loading data sample_data.csv into it.
%Upon running the 1st line, you should see stocks as 2515X1 matrix.
mean(stocks)
for i = 0:9
    mean(stocks(250*i+1:250*i+250)) 
end

%created mean value of stocks each year.This tells Matlab to start at a
%given year where each year is 250 business days and then only consider the
%next 250 values.

%Creating functions
%Functions are very similar to scripts in many ways but they have different
%output and input protocols. Whereas a script is run on its own and runs
%the same way everytime.
%A function takes an inout from the user each time it runs, making it
%general and powerful tool.
%Functions directly provide their output for use by other scripts of
%functions that call them.
%Refer to function example file now

clear;
%function [ output_args ] = LyndaCh3_practice_function( input_args )
%function output will be displayed when it's called with some input
%arguments
%   Detailed explanation goes here
%mean(input_args)
%for i = 0:9
    %output_args(i+1)=mean(input_args(250*i+1:250*i+250)) %make sure input_arg variable name is consistent throughout 
%end


%we can define the output_arg(i+1), so that the function will hold it't
%output there instead of just displaying in the command window.
%To run the function, type a =
%LyndaCh3_practice_function(csvread('sample_data.csv')) in the command
%window, it will generate a with 1X10 size.
%Matlab will display mean first and then define the matrix to hold all the
%output data from the function. 

%Debugging
%Several different method for a clower look at the mechanics of functions
%as they run to identify the problem.
%1.To remove bug, you can remove the semicolons allowing to display every
%single calculation to be able to spot the problem.
%2.If 1 doesn't solve problem, run the program in sections by specifying
%breakpoints. breakpoints can be added within the editor window.To add a breakpoint
%on a specific line, click on the line,go to breakpoint dropdown menu, then click set/clear breakpoint.
%as an example from previous script..use set/clear and disable/enable
%..conditional breakpoints will activate if specific condition is met.
%You can also use error handling codes such as stop on error or stop on
%warning to catch errors. 
stocks = csvread('sample_data.csv') %Matlab can automatically convert csv files to matrices by simply using csvread
%defining a function csvread, and loading data sample_data.csv into it.
%Upon running the 1st line, you should see stocks as 2515X1 matrix.
mean(stocks)
for i = 0:9
    mean(stocks(250*i+1:250*i+250)) 
end

%Performance considerations
%Timing a function
clear;
tic
stocks = csvread('sample_data.csv') 
mean(stocks)
stock_data=zeros(10,1)
for i = 0:9
    stock_data(i+1,1)=mean(stocks(250*i+1:250*i+250)) 
end
toc
%The Tic function starts a built-in stop watch function 
%that measures computing time to the millisecond.While 
%the Toc starts the function and returns the amount of 
%time elapsed. The general syntax for these functions, is to 
%put tic on the line before whatever part of the function you want 
%to time and then store the output of talk in a permanent variable by 
%typing the variable name equals talk. The stopwatch can be used multiple 
%times and assigned to multiple variables. So it's easy to time each critical 
%part of the function and record the execution time of each one.
%Symbolic arithmetic is even worse for speed. While it will completely eliminate
%rounding errors, it also takes many times longer to run than normal arithmetic. 
%Variables can be left as high precision values while you're writing the script to 
%avoid any rounding errors while debugging, but once the program is complete, it 
%can significantly reduce the run time to go back and change variable to single or
%8 bit integer wherever higher degree of precision are unnecessary.

%In general, computing time is displayed in big O notation, which is a quick and 
%dirty representation of the rate at which the number of calculations scales with 
%the data set size. For instance a program with o of n run time would take twice 
%as long to process a data set with twice as many values.
%While a program with O of n squared, would take two squared, or four times 
%as long, to process the same double data set. The steepest scaling, is exponential,
%such as, O of two to the n.

%Adding program documentation
%You can add a help comment at the top of the script eg. %Practice script
%calculates the rolling mean of stock data, so when you type help name of
%the script here in the command window, it will say what you wrote in the
%front wihtout you having to open the code.
%Good habit to comment what your code does, 1. use % , 2. %{ and %}, 3. ...
%to comment out multiple lines and code use %{ and %} between code/lines,
%very helpful for debugging
%eg.
%{
stocks = csvread('sample_data.csv')
mean(stocks)
%}
%To comment out part of the code, use ...eg.
clear;
stocks = csvread('sample_data.csv') %converts csv to matrix
mean(stocks)
for i = 0:9
    mean(stocks(...
        ...250*...
        i+1:250*i+250)) 
end
stocks = csvread('sample_data.csv') %converts csv to matrix
mean(stocks)
for i = 0:9
    mean(stocks(250*i+1:250*i+250)) 
end