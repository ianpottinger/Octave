# ver
clc;
cd 'G:\WorkingData\Work @ Home\GitHub\Octave'
dir;
CurrentDirectory = pwd;
ls

pi
infinity = 10^309;
disp(infinity)
zero = 10^-324;
disp(zero)

vect = [9, 8, 7, 6, 5, 4, 3, 2, 1]
matr = [1, 2, 3, 4;
5, 6, 7, 8;
9, 10, 11, 12]

array = [12, 11, 10; 9, 8, 7; 6, 5, 4; 3, 2, 1]

expontial = array .^ 2
multiplication = array .* 2
division = array ./ 2
addition = array .+ 2
subtraction = array .- 2

result = array * matr
last = result(end, end)

dimensions = size(result)
elements = numel(result)
squareroot = sqrt(result)
sine = sin(result)
cosine = cos(result)
tangent = tan(result)

width = [matr, array']
height = [array; matr']

control = 2
number = input('Enter a number: ');
if (typeinfo(number) == typeinfo(control))
  disp( ['The number entered is: ', num2str(number), ', which is a number.'] )
else
  disp('Invalid number entered')
end


control = 'string'
string = input('Enter a string: ', 's');
if (typeinfo(string) == typeinfo(control))
  disp( ['The string entered is: ', string, ', which is a string.'] )
else
  disp('Invalid string entered')
end

proceed = input('Press Enter to continue: ', 's');

who

whos

%clear
