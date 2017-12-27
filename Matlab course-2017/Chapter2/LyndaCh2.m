%Basic commands
%Creating scalar variable
clear;
a = 3
% Creating multiple variable or matrix
b = [4, 0, 2; 1, 2, 3]
%b is Same as c below
c = [4 0 2
     1 2 3]
%strcat combines two strings (concatenation)
clear;
d='hello'
e=' world'
f=strcat(d,e)
%num2str converts numerical value to a string
g = num2str(eps)
h = num2str(pi)
%Use ' for transpose of matrix, eg.
b'
%If you put semicoluns at the end of the line,Matlab doesn't print the output (suppressing output) in the command window
%which is helpful for long/complicated codes.
%By default, Matlab display everything in the command window as the program
%runs

%Using built-in functions and variables
%Functions are useful when you're writing complicated programs that might
%repeat same calculations over and over again. You can simply pull put that
%part of it into a separate function, you don't have to rewrtire the code.
%Let's learn how to use Matlab's in built functions.
%Let's review Matrix generation function to create matrix with certain
%starter data eg.
clear;
a = ones(2,3) %This will generate 2 raws, 3 columns matrix with all entries 1.zeros will
%do the same with entries 0. rand, and randn are other examples and so
%on..If you want help finding functions, and you know what you want to do,
%go to the mathworks/matlab documentation help..eg. if you want to invert
%the matrix, search for invert..it will tell you to use int function.
%If you know the name of the function but not sure waht it does, type help
%function name here in the command window, it will show you different ways
%to use the function as well as similar functions. eg. help zeros will show
%you all about it and similar functions.

%Working with matrix and scalar operations
clear;
a = [1,2,3;5,6,7];
b = [1,1,1;0,4,5];
c = [3,1;2,2;0,0];
d = [4,4,2;-1,2,4];
e = 1:4; %raw matrix, same as [1,2,3,4]
f = [2,1,4,3];
a+b %since a, and b have same matrix dimension, Matlab will interpret this as piecewise
%addition and simply add the corresponding values in each cell of matrices.
a+2 % Matlab will interpret this as a scalar addition, so it will add two to every cell 
%in A. Same holds for multiplying..eg.
a*b %since dimensions match, Matlab will carry out matrix multiplication, but if you type
c*2 %It will understand 2 is constant and mutiply every term in c by 2. 
% If we want to do a piecewise multiplication of corresponding entries of
% the matrix, we need to add a dot infront of the asterisk .*
% Adding a dot . infront of eveyr operation (Addition,
% subtraction,multiplication, division,exponent, equality) tells Matlabs to
% execute the operation piecewise. 
%Anytime you are wokring with 1X1 matrix, Matlab will treat them as scalar,
%anytime you are working with larger amtrices, Matlab will treat them as
%matrices. If you want Matlab to perform piecewise, place a dot infront of
%the operation symbol. If you want to take a dot product, just treat the
%vector like they were matrices nd then just use matrix multiplication.
e*f' %first Matlab will generate transpose of f, and then do matrix multiplication e*f'

%Control flow
clear;
a = [1,2,3;2,6,4;1,2,round(rand(1)*5)];
a = a';
a = inv(a);
%Our goal here is to test whether the matrix a is invertible before we try
%to invert it, if a is not invertible, we want to transpose it instead.
%The only way for this matrix to be non-invertible is if the 3,3 term in
%the matrix is eqaul to 3.Let's look at if else statment
a = [1,2,3;2,6,4;1,2,round(rand(1)*5)];
if a(3,3)==3 % we are using == for comparision instead of assigning a value with =
    a = a'; %this will be indented, and executed only if the comndition is true
else         % else will automatically deindent itself to go with the if statement
    a = inv(a); %else will be executed only if the first condition doesn't meet
end          %To end the if statement, use end..it will automatically deindent itself

%same as if else statement, we can use switch otherwise. eg.
a = [1,2,3;2,6,4;1,2,round(rand(1)*5)];
switch a(3,3)
    case 3 % case 3 is like saying that if a(3,3)==3
    a = a'; %this will be indented, and executed only if the comndition is true
    otherwise    % otherwise is similar to else statement
    a = inv(a); %this will be executed only if the first condition doesn't meet
end             %every block of if/else, switch/otherwise ends with end
%This basic structure applies for WHILE loops, FOR loops, and TRY-CATCH
%statements.
%Two other keywords are break and continue. Both appear on their own within
%a for or while loop. Breaks tells the Matlab to jump completely out of the
%loop and resume execution at the end statement. 
%continue tells Matlab to jump to the beginning of the loop, check the
%condition again, and then if it still holds, execute the loop as normal.

%Understanding data types
clear;
a = 1/3;
b = 1/12;
n =50;
y = [a,b]; for i =2:n,y=[y,2.25*y(i)-y(i-1)/2]; end;
a = 1
b = 1/4
n = 50
x = [a,b]; for i =2:n, x=[x,2.25*x(i)-x(i-1)/2]; end;
ind=1:n+1;
semilogy(ind,x,ind,y)
%round-off errors.Matlab uses many decimal points so that the error is
%extremely tiny. However,this small errors can cause huge problems. So, it
%is important to understand difference between different types of ints and
%doubles.
%In the example code, we are plotting x, and y as a fucntion of ind which
%should expect two exponential sequence going down.However, x goes down as
%expected but y goes down for sometimes and then suddenly turns upward and
%diverges. This is due to rounding off veyr small numbers. There are
%several ways to deal with it.
%1. We can change the data type. going from more precise from less precise
%or the other way around.
%eg. you can type x = uint64(1024) which will define x as 64-bit unsigned integer
%with a value of 1024.The data must be of the same type in order for it to
%be combined in an expression.
%2. Using symbolic arithmatic. Matlab considers the data as rational
%factors rather than decimals removing all roundings. eg.type sym and
%parenthesis around each of the numbers. a = sym(1/3); and so on..
%corrected one
clear;
a = sym(1/3); %or x = uint64(1024)
b = sym(1/12);
n =50;
y = [a,b]; for i =2:n,y=[y,2.25*y(i)-y(i-1)/2]; end;
a = 1
b = 1/4
n = 50
x = [a,b]; for i =2:n, x=[x,2.25*x(i)-x(i-1)/2]; end;
ind=1:n+1;
semilogy(ind,x,ind,y)

