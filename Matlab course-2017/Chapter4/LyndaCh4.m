%Data Representations
% Creating basic plots
% Basic function for creating 2D plot in Matlab is the plot function.
%Simplest plot takes a single vector of data and plots the data values
%against the index number of the data in the vector.
%eg. I can import the dailydata.csv file (ch4, exercise files) and then just make sure that all 3
%columns are selected and import them into Matlab.
%This displays the date, closing price, and volume of shares for the S&P
%500 for each day from the year 2000 to 2009. The date in this case is
%displayed as the number of days since 1900.This is an often-used format,
%which makes it easy to do math on the days rather than worry about going
%from one month to the next and not having the same number of days in each
%month. Once the data is imported, you can type command plot, close and it
%will automatically plot the closing price versus index of the data set.
%Just having the index isn't very useful. So, you can use plot(Data,Close).
plot(Close)      %Close on the y-axis, index number on the x-axis.
plot(Date,Close) %Date on the x-axis, Close on the y-axis.
%Matlab considers 1st as independent variable eg.Date, and second variable
%as dependent variable eg. Close
plot3(Date,Close,Volume) %Plots 3D, you can see close as a function of date and volume
%The plot can be edited in the figue window, click tools, edit plot or by
%running plot edit command in the command window.
%double clicking any element of the plot will let you select and modify it.
%you can modify plot type, color, line type, size, etc.
%For 3D plot, you can use the rotation tool in the edit window to visualize
%perticular view.

%Adding annotations:
%To add labels such as x,y,z axis,title,use
plot3(Date,Close,Volume)
xlabel('Date')
ylabel('Close')
zlabel('Volume')
title('S&P500')
legend('S&P500') %for multiple lines, you can use comma to describe them all eg. 'S&P500','S&P1000', and so on..
h=gcf %called current figure handle. this will tell you h = 1 or 2 or whatever corresponding to the active figure number.
%To select certain point on the graph, click on data curson tool from the
%graph, drag on the graph to have a point appear numbers where you want to
%highlight

%Working with images:
%Load a building.jpeg picture from chapter 4, exercise files
%image is a 2D colelction os values corresponding with pixels of color.
%Matlab can import an image just like excel spreadsheet. It can work with
%the data within as if were purely numerical.
%Most common format is RGB, where each pixel contains three values
%corresponding to a saturation in red, green and blue colors. Matlab models
%this image as a 3D matrix. The first two dimentions correspnd to the
%height and width of an image and third is always equal to three so that
%each pixel can have the correct three values stored in it.
%One very simple modification we could do would be to removal of all of the
%red pixels from the image. To do that, we can type in building(:,:,1)=zeros(685,1024);
%It takes the first slice of the building matrix, which corresponds to the
%red values and sets it equal to a zero matrix of the same size.


building(:,:,1)=zeros(685,1024);%this will get rid of red color
image(building)
%3D are width, height and 3 respectively, where 3 corresponds to the RGB pixels.
building(:,:,2)=zeros(685,1024);%this will get rid of green color
image(building)
building(:,:,3)=zeros(685,1024);%this will get rid of blue color
%imagesc(building)
image(building)

%other useful functions are Image, ImageSC, ImageRead, ImageWrite etc.
%Image displays your data as an image
%Imagesc displays an image, but it scales the color almost like increasing
%the contrast
%Imageread and Imagewrite do not display image directly, instead they allow
%you to loas an image from a file or sore on Matrix as an image
%respectively. this saves time having to manually laod and stire images
%before and after running a script.

%Creating responsive programs:
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

%Editing variables manually:
%Import building.jpeg and daily_data.csv files. You can see them in the
%workspace, double clicking on them will show you a table of what they contain.
%as an example, click on close and try chnaging soem variables in the table
%The easiest way to edit a variable directly is double click on specific
%numbers you want to change, change them manually and press enter. This is
%effective editing method for small vectors and scalars. For large
%variables, you should write algorithms.
%Now,if you want to change something in building.jpeg. Double click on it
%in the workspace, it will show you error message 'variable size is too
%large to be summarized'
%Variable view will also not allow editing if the variables is more than
%2D.If you want edit certian portion, you can do the following as an
%example: type in the workspace
tempvar = building(300:350,500:550,3) %is want to change specific postion here
%width, height, pixel color blue
%This will generate a tempvar file in the workspace, double click on it,
%you can edit those values manually.
%for this example let's change the following
tempvar=zeros(51,51) %we are setting all the values to zero in the tempvar file we created, it is 51X51
building(300:350,500:550,3)=tempvar %we are assinging the new tempvar values to
%the specific position we want to change
image(building) %you should be able to display the image with the change you made
%To save the workspace, go to home, save workspace, this will save .mat
%file with all the variables the way you have in the workspace now, so you
%can go back to it later on.double clicking on the .mat file will recreate
%all the varibales with exact same values. 



