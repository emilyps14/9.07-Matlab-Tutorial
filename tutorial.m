%% 9.07 Matlab Tutorial

%% Comments, Variables, Vectors and Matrices

% Comments

% Green text preceded by a percent sign % are comments.  Matlab
% ignores comments -- that is, any text with a percent sign before it will
% result in Matlab doing nothing.  Try it out by copying and pasting the
% following:

% a = 5

% Comments are useful to put in your code so that you remember why are you
% writing a particular line of code.  It also helps other people understand
% your code should they have to use it.

% Comments that are preceded by two percent signs (%%) mark the beginning
% of a "cell", and are often used as section headings

% Often it is more useful and clear to assign a value to a variable name.
% This makes your code more readable and understandable.  For example, what
% is more readable? 

% firingRate * 10 

% OR 

% 5 * 10.  

% Here is how you assign a
% value to a variable in Matlab:

firingRate = 5

% You can assign more than one value to a variable.  The following code
% makes a 2 x 1 vector:

b = [3; 4]

% You can verify this is a 2 x 1 vector by the following command:
size(b)

% size is a built-in matlab function.  It tells you how many elements are
% in a vector of matrix.

% You can also make a 2 x 1 vector.  Notice that omitting the semi-colon
% makes this vector "horizontal":

c = [3 4]

size(c)

% If you don't want to see the output in the command window each time, you
% can supress the output by ending the statement with a semi-colon:

c = [3 4];

% You can also make a matrix.  Here is a 2x2 matrix:

d = [1 2; 3 4]

d = [1 2; ...
     3 4]

size(d)

% Typing in each number for a vector or matrix can be a pain in the ass.
% Luckily, you can tell Matlab to assign a consecutive sequence of numbers
% to a variable:

vec = 1:10

% The "step-size" of the consecutive sequence of numbers doesn't have to be
% one.  You can also step by larger or smaller numbers:

vec = 1:.25:10

% Sometimes you just want to access and change a single elmement of a
% vector.  You can access the fourth element of a vector by:

vec(4)

% And you can change the fourth element by:

vec(4) = 33

% Sometimes you don't want to have all the output in the command window.
% You can clear the command window by typing:

clc

% Similarly, you might want to clear variables from your workspace to
% reduce clutter:

clear all

% A helpful way to learn about built-in matlab functions is to type help
% before the function:

% help clc
% help clear

clc
%% Mathematical Operations

% You can use Matlab as a calculator.  For example, here is how you
% multiply, add, divide, and exponentiate:

3 * 4
3 + 4
3 / 4
3 ^ 4

% You can also use mathematical operations on vectors and matrices.
% Element-wise operations (multipying each element of a vector or matrix
% individually) are performed by using the period . before a mathematical
% operator such as times *:

vector = [2 2]
vector .* 5
matrix = [2 2; 2 2]
matrix .* 3

% If you want to multiply matrices as in linear algebra (which is not element-wise)
% you omit the period before the mathematical operator:

matrix * matrix

[3 1; 9 2; 3 7] * [1; 2]

%% Logical operations

% Sometimes you want to know whether two variables are equal or if one
% variable is larger than the other.  This is achieved by logical operators.
% In Matlab, 1 stands for True and 0 stands for False.  For example, say you 
% want to know if the firing rate from neuron1 is greater than the firing 
% rate from neuron2:

% First let's give the neurons' firing rates
neuronFiringRate1 = 4
neuronFiringRate2 = 3

% Now you can test whether the two variables are equal:
neuronFiringRate1 == neuronFiringRate2

% or if neuron1 has a greater firing rate than neuron2?
neuronFiringRate1 > neuronFiringRate2

% These operations also work on vectors and matrices element-wise, so you
% can determine whether a number is greater than each element in a matrix:

% Here is our original matrix

matrix

% And here is the result of comparing the matrix to the number 6:

6 > matrix

% Logical operators such as AND and OR are also useful.  For example, say
% that you had had a data set that consisted of animals and whether they
% were fast and big.  Suppose you only wanted the animals that were fast
% and big.  Using logical operators, you can select only the fast and big
% animals:

% Here we define the properties of one animal
isBig = 1; %  isBig = true
isFast = 0; % isFast = false

% Is it both big and fast?  The ampersand & indicates AND
isBig & isFast

% Suppose you only cared if the animal is big or fast, but either one would
% do.  You could then use the OR operator | :

isBig | isFast

% Finally, suppose you wanted animals that were small and slow.  You can
% use the negation operator, the tilde ~:

~isBig | ~isFast

% If you want to find out if they are not equal, then use the tilde and
% equal sign:

isBig ~= isFast


%% Selective Indexing

% You can combine what you've learned with assigning elements to variables
% and logical operators.  One of the more useful things you can learn is to
% use logical operators to access and change elements in vectors and
% matrices. Suppose you have a vector that goes from 1 to 10:

vec = 1:10

% Remember you could access each individual element of vec by typing:

vec(1)
vec(2)
vec(3)

% Suppose that you wanted to only access the elements of vec greater than
% five.  From before, you know that

vec > 5

% is a vector with zeros for each element in vec that is not greater than
% five and ones for each element that is.  Now, if you type:

vec(vec > 5)

% You get only the elements of vec greater than 5.
% This can be useful if you want to set all elements of a vector or matrix
% to a certain value.  For instance, if you wanted the values of vec
% greater than 5 to be zero, then:

vec(vec > 5) = 0

% Some other examples of this are:

vec(vec == 5)
vec(vec ~= 5)

% Some useful functions that we will not cover that also use logical
% operators and are often useful when comparing two vectors or matrices
% are:

%% Control Loops - For and If

% For loops are useful if you need to repeat a section of code several
% times.  A simple example would be:

for ind = 1:20
    
    ex(ind) = ind
    
end

% Notice that this is the same as

ex = 1:20;

% Often in Matlab, for loops can be avoided and their vector
% representations (like above) will be faster and easier to use.  When
% possible, you should always try to use the vector representation.
% However, you shouldn't waste a whole lot of time trying to figure out the
% vector representation if a quick and easy for loop will do.

% If statements are also useful in Matlab.  There are occasions when you
% will want to execute a section of code only if a certain condition is
% fulfilled.

% isBig is true
isBig = 1;

% What does the if statement display?
if isBig
   display('I will crush you')  
else
    display('Please do not hurt me');
end

% isBig is false
isBig = 0;

% Now what does the if statement display?
if isBig
   display('I will crush you')  
else
    display('Please do not hurt me');
end
%% Graphics

% Matlab has the ability to allow you to visualize your data.  The most
% common way of visualizing your data is by using the plot command.  For
% example if you wanted a straight line going from (0,0) to (10,10) in x-y
% coordinates you would type

figure; % opens a blank new figure window
x = 0:0.1:10; % x-values for the plot
y = x./5; % y-values for the plot

plot(x, y) % Plots the x-y values
xlabel('X')
ylabel('Y')
title('My Figure')

% If you want to add another line to your plot in the same color, you type
hold on
plot(x, sin(x))
legend('y','sin(y)')

% You can change the limits of the x and y axis to zoom in on a particular
% range:
xlim([0,4])
ylim([-1,1])


% Normally if you type plot twice, the second plot will erase the first.
% Hold keeps you on the same plot. If you want to keep plotting on the same
% plot but in different colors, you would type:
hold all;


% You can also change the color of your plots by adding an additional
% argument:

% For instance, if you want a black line you would add 'k' to the plot
% inputs like so
figure;
plot(x, sin(x), 'k');
% If you want a red line, you would add 'r' 
figure;
plot(x, cos(x), 'r');

% There are several other ways to plot data in Matlab.  Here are a few that
% come up frequently:

% help area
% help bar
% help hist
% help stairs

% To close all figures, you can type:
% close all

%% Functions vs Scripts

% Scripts and functions are not the same.  Functions are given inputs and
% they produce outputs.  Scripts, on the other hand, have no inputs and
% outputs.  This m-file tutorial.m is a script because it contains a
% bunch of commands, but you cannot give the script inputs.  For example,
% you can run this whole file by typing its name:

% tutorial

% This will execute every line of code in this document.  You cannot give
% this script specific inputs like:

input1 = 5;
input2 = 10;

% tutorial(input1, input2);

% This will not do anything.  However, functions do have this property.  I
% have written an example function called myFirstFunction.  You can give it
% two inputs.  The function will simply multiply those two inputs and
% return a single output:

output = myFirstFunction(input1, input2)

% Some functions can have more than one output.  Many built-in Matlab
% functions have this feature.  You can assign variables to the outputs for
% a function by using the form [first_output, second_output] == myFunction(input).
% For example, with the Matlab function size, it returns both the number of
% rows and the number of columns

[row, col] = size(matrix);

% Compare
size(matrix)

% to

row
col

%% Saving and Loading Data

% To save all the variables in your workspace, simply type the name that 
% you want to use followed by .mat:
save('myFile.mat')

% To selectively save variables in your workspace, you follow the same
% format as above, except you also type the name of the variable you want
% to save in quotes:

save('myFile.mat', 'output');

% Loading a file works in the same way:
clear all; clc; close all;

load('myFile.mat')


%% Other Useful Built-in Matlab Functions and Miscellany
% Creating Arrays or matrices:
% help ones
% help zeros
% help linspace
% help eye
% help rand
% help randn

% Operations on arrays or matrices
% help sum
% help max
% help min
% help mean
% help var
% help std
% help prctile
% help sort
% help nanmean
% help find

% Set functions:
% help intersect
% help union
% help setdiff
% help unique


%% Publishing your scripts
% For homework, we will ask you to write up the matlab problems in a script
% and to publish them to pdf. Publishing creates a nicely formatted
% document with your code and the results of running the code.

% An example homework is in the m-file "HWX_estephen_180910.m", and its
% published version is in the pdf "HWX_estephen_180910.pdf"

% In the published results, comments preceded by two percent signs (%%),
% which delineate "cells" in your script, are treated as section headings.
% In your homework solutions, we suggest that you use them to separate 
% different problems.

% In order to publish, go to the PUBLISH tab at the top of the window and
% click the arrow under the "Publish" icon. Select "Edit Publishing
% Options" and set these options:
% Output file format: pdf
% Include code: true
% Evaluate code: true

% Submit both the script (the .m file) and the published pdf to stellar 
% along with your homework.
