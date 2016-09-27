# ver
clc;
cd 'G:\WorkingData\Work @ Home\GitHub\Octave'
dir;
CurrentDirectory = pwd;
ls

fprintf('Octave PI is %20.18f \n', pi)
infinity = 10^309
disp(infinity)
zero = 10^-324
disp(zero)
fprintf('Octave closest to zero is %e and nearet to infinity is %e \n', 10^-323, 10^308)

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
fprintf('The last element of result is %i \n', last)

dimensions = size(result)
elements = numel(result)
squareroot = sqrt(result)
sine = sin(result)
cosine = cos(result)
tangent = tan(result)

width = [matr, array']
height = [array; matr']

control = typeinfo(pi)
valid = false
while (valid == false)
    try
        number = input('Enter a number: ');
    catch
        if (typeinfo(number) == control)
            disp( ['The number entered is: ', num2str(number), ', which is a number.'] )
            valid = true
        else
            disp('Invalid number entered, Try again much harder.')
            valid = false
        end
    end_try_catch    
end

switch number
    case {42}
        disp('The answer to Life, the Universe and Everything')
    case {666}
        disp('The mark of the beast')
    otherwise
        disp('Another day, another number')
end

control = typeinfo('string')
string = input('Enter a string: ', 's');
if (typeinfo(string) == control)
    disp( ['The string entered is: ', string, ', which is a string.'] )
else
    disp('Invalid string entered')
end

switch string
  case {'string'}
    disp('Almost correct')
  case {'a string'}
    disp('Completely correct')
  otherwise
    disp('Totally wrong')
end

proceed = input('Press Enter to continue: ', 's');

who

whos

%clear
