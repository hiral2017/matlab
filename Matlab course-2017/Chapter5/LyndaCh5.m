% Whar are MATLAB toolboxes?
%MATLAB has veriety of extensions and program libraries available for use
%in a diverse field of applications. These libraries are called toolboxes.
%each toolbox is integrated with the main MATLAB interface and provides
%libraries of default fucntions that can be used for a variety of
%applications. 
%These can be used to extend the functionality os matlab to merge fucntions
%written in other languages and provide additional tools for user
%interfaces, graphics and so on..
%You may have some toolboxes installed by default depending on the license.
%To check what you have installed, type ver in the command window, it will
%lsit everything w/ version etc.
ver %in command window
%You can purchase necessary toolboxes from mathworks.com

%Statistics Toolbox:
%LinearModel
LinearModel.fit(indvar,depvar)
%Regression techniques: linear, nonlinear, robust, ridge
%Analysis of Variance (ANOVA), probability distributions, hypothesis
%testing
%Plot(model): this will generate graphns independent vs. dependent
%variables, best-fit line, confidence interval, legend, title, axis label
%etc.

%further description is below:
% All the regression techniques in this toolbox revolve around linear model
% class. A linear model is an opject comprising of training data, a model
% description, diagnostic infromation and fitted coefficients for linear
% regression.
%Most commonly used method within this class id the LinearModel.fit method.
%This is a class rather than a script or a fucntion so it defines a
%completely separate object. This object then had specific subfunction and
%scripts that will only work on object of that type.And they are called
%using this syntax we display here with the class name.the model name and
%then usual input for the model.
%The LinearModel.fit command causes it to display a linear regression model 
%with coefficients for the intercept and slope of the function. It will also
%calculate the standard errors, t statistics, and p values at the same time.
%So you can tell whether or not the model is significantly different from 
%zero. Below these results, MATLAB lists summary statistics including the 
%r squared and p value for the model. There are several different types of 
%linear regression techniques including linear, nonlinear, robust and ridge
%techniques.

%So this is just that toolbox is not limited to a simple OLS regretion. 
%There are dozens of methods within this class that can be accessed through 
%the documentation. But for now let's just look at one other method. Plot. 
%The plot method can be used on normal data with the syntax that we say 
%in earlier videos. But the linear model class overloads this model class 
%for convenience. If I type in plot of model MATLAB will display the data 
% set on which the model is based as well as the best fit line and the 
% confidence interval for the line on the graph. It also automatically 
% generates a title access labels and legend for the graph. The 
%Statistics Toolbox include many other functions and scripts but the 
%most important thing is that all of these new options are integrated 
%within MATLAB itself.

%Symbolic Math Toolbox:
sym(variable)
%Designates a variable as symbolic, represented as a rational fraction
%rather than a decimal
%Advantages: No roundoff errors, No infinite/repeating decimals,
%Disadvantages: slow to compute
symfun(function,inputs)
%Plugs the given inputs into a symbolic fucntion
%Unlike normal functions, this can be used as an input term in another
%fucntion
%Can be solved, reduced, factored, etc.
%eg. 
syms l w h
volume = symfun(l*w*h,[l w h])
volume(l, w, h)

%Rather than calculating a single solution to an equation, the symbolic
%math toolbox allows you to input an equation and have MATLAB solve it 
%analytically to provide the general solution. Aside from providing more 
%theoretically useful results, this also eliminates rounding errors and 
%other side effects of finite computational power. To designate a variable 
%as symbolic use the sym function. For instance if you type in x equals one
%third normally MATLAB will set x to be the appromixate decimal 
%represenation of one third which is 0.333 and so on. On the other hand if 
%you type in x equals sym of one third then MATLAB sets x equal to precisely
%the fraction 1 over 3.
%It takes substantially longer to compute operations on symbolic variables.
%But there is guranteed to be no rounding error and in some cases having an 
%answer that is a fraction can be more useful than a long decimal. To 
%designate a function as symbolic use the symfun function. The syntax here 
%is symfun of function,inputs. This will define a general function that 
%takes in the given inputs and combines them according to the function to 
%produce an output.

%Of course this behavior could be duplicated by simply defining a MATLAB 
%function that takes in those inputs and gives that output. But there is an
%important advantage to using a symfun. It is stored as a variable not as a
%separate file, which allows you to not only call it as a function but also
%use it as an input term in another function. For example, if I wanted to 
%define a function that would take in the length, width and height of 
%a rectangular prism and return the volume, I could define it as 
%follows. First, I designate the three variables to be used in the 
%function by typing syms of l, w and h.

%Then I define the function, volume equals symfun of l times w times h, 
%comma l, w and h as the inputs. Now I have the function for volume. I call 
%this function at anytime by typing volume length width and height and 
%MATLAB will return the correct answer. The Symbolic Math Toolbox provides 
%numerous other functions in it's library that allow you solve this 
%function. Reduce it's terms or otherwise manipulated analytically.

%Optimization Toolbox:
%Optimtool: Graphical optimization tool
%can find optimal solutions to a function of any degree
%Refer to LyndaCh5_optimtool_function.m file for example.
function [ output ] = optimtool_function( x )

output = x(1)^2 + x(2)^3 - 2*x(1)*x(2) + (x(1)^2 + x(3)^4)^x(1) - 2*x(2)*x(3);

end

%type optimtool in the command window, a window with optimtool will show,
%set solver to fmincon..,algorithm to active set, objective fuction to
%LyndaCh5_optimtool_function (name of the function), derivatives to 
%approximated by solver, start point [1 1 1], under constraints, set linear
%inequalities A to [1 1 1], b to 100, derivatives to approximated by
%solver, press start, it will show some notes in the bottom left with,
%x,y,z, values..on the righthand side of the window, go to plot function,
%check function value check, start again, this will show you a plot as
%runs.
%keep everyhting else default..

%This course was designed to give you an introduction to using MATLAB in a 
%wide variety of field. From numerical analysis to image processing, to 
%finance and statistics. Although the focus of this course was on MATLAB 
%and use MATLAB syntax. The basic principals behind manipulating and 
%displaying large amounts of data are clickable in many other programs. 
%Once you know the basic syntax, the MATLAB language is really just a 
%collection of useful functions. So the easiest way to use MATLAB in more 
%advanced applications is simply to look for the relevant function libraries 
%and apply them as needed. If you want to learn more about any of the 
%applications of MATLAB, lynda.com offers courses in 3-D animation, audio 
%production, statistics, economics, image analysis and more.
