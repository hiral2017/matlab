stocks = csvread('sample_data.csv');
true_mean = 1200;
mean(stocks)
std(stocks)
median(stocks)
max(stocks)-min(stocks)
mean((stocks - true_mean).^2)
plot(stocks)

%The above script will immediately output a list of all of the sample
%statistics including the plot. It is more user friednly though to
%calculate one result at a time, waiting for user input between each
%one.The simplest function that can do this is pause.
%This fucntion requires no input but pauses your script to stop until the
%used presses any key. Addiing a numerical input in the form of pause(3)
%causes program to wait for 3 sec in this case and then continue on its
%own.
%You can also use pause on and pause off to enable and disable pause.

stocks = csvread('sample_data.csv');
true_mean = 1200;
mean(stocks)
pause %This will pause the next command until user presses a key
std(stocks)
pause(3) %This will pause for 3 sec before continuing to the next line
median(stocks)
max(stocks)-min(stocks)
true_mean=input('test mean: ') %This will ask for user input for a guess test mean, instead of using 1200 everytime
mean((stocks - true_mean).^2)
plot(stocks)
