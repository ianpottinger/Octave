# ver
clear; clc;
cd 'G:\WorkingData\Work @ Home\GitHub\Octave'
dir;
CurrentDirectory = pwd;
ls

"+ - * /"
"^ **"
mod(7, 3)

"Equal to" == 'Equal to'
"Equal to " != " to Equal"
"Equal" ~= "equal"
TRUE && TRUE
TRUE || FALSE
xor(TRUE,TRUE)


fprintf('Octave PI is %20.18f \n', pi)
infinity = 10^309
disp(infinity)
zero = 10^-324
disp(zero)
fprintf('Octave closest to zero is %e and nearet to infinity is %e \n', 10^-323, 10^308)
float = 3.4^38 - 1.2^-38
double = 10^308 - 10^-323 
boolean = 1 != 0
integer08 = int8(2^8)
integer16 = int16(2^16)
integer32 = int32(2^32)
integer64 = int64(2^64)
byte = uint8(2^8)
word = uint16(2^16)
dword = uint32(2^32)
qword = uint64(2^64)


vect = [9, 8, 7, 6, 5, 4, 3, 2, 1]
matr = [1, 2, 3, 4;
5, 6, 7, 8;
9, 10, 11, 12]

[pvect, nvect] = meshgrid(vect, -vect)
KeneticEnergy = 0.5 * nvect .* pvect .^2

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
cuberoot = nthroot(result, 3)
sine = sin(result)
cosine = cos(result)
tangent = tan(result)
average = mean(result)
truncate = fix(result)
skylimit = ceil(result)
ocean = floor(result)
balanced = round(result)
highest = max(result)
lowest = min(result)
decent = factorial(result)
primes(result)
list_primes(result)

width = [matr, array']
height = [array; matr']

first = "Starting here "
last = "Ending there.. "
concatenation = strcat(first, last)
withwhitespace = cstrcat(first, last)
textnumber = num2str(number)
textrounded = num2str(number, digits)
compare = strcmp(first, last)
subcompare = strncmp(first, last, characters)
ignorecase = strcmpi(first, second)
subignorecase = strncmpi(first, last, characters)
removetrailing = deblank(first)
removebothends = strtrim(last)
truncated = strtrunc(first, length)




control = typeinfo(pi)
valid = false
while (valid == false)
    try
        number = input('Enter a number: ');
    catch
        if (typeinfo(number) == control)
            disp( ['The number entered is: ', num2str(number), ', which is a number.'] )
            valid = true
            break
        else
            disp('Invalid number entered, Try again much harder.')
            valid = false
        endif
    end_try_catch    
endwhile

switch number
    case {42}
        disp('The answer to Life, the Universe and Everything')
    case {666}
        disp('The mark of the beast')
    otherwise
        disp('Another day, another number')
endswitch

control = typeinfo('string')
string = input('Enter a string: ', 's');
if (typeinfo(string) == control)
    disp( ['The string entered is: ', string, ', which is a string.'] )
else
    disp('Invalid string entered')
endif

switch string
  case {'string'}
    disp('Almost correct')
  case {'a string'}
    disp('Completely correct')
  otherwise
    disp('Totally wrong')
endswitch

proceed = input('Press Enter to continue: ', 's');

who

results = whos
results_type = typeinfo(results)

file_name = 'OctaveOutput.txt'
file_handle = fopen(file_name, 'w')
fprintf(file_handle, 'All results from session\n\n%i', results)
fclose(file_handle)

file_handle = fopen(file_name)
file_content = fscanf(file_handle, '%i', [1, inf])
fclose(file_handle)
disp(file_content)
disp(file_content')

function[ results, answer_type ] = do_this (parameter)
    results = parameter
    answer_type = typeinfo(results)
    return
endfunction

lets = do_this('shit')

lambda = @(first, last) function meansq( first, last ) endfunction

expression = lambda(pi, pi * rand(1) )


start = 0
step = 2
finish = 20
x = [start:step:finish]
y = [finish:-step:start]
plot(x, y, '-xb')
axis( [start, finish, finish, start] )
xlabel('dubs')
ylabel('steps')
title('Dub Steps')
text(10, 10, 'middle')
grid on
hold on
z = x .*2
plot(x, y, '.og')
hold off
legend('first','next')
%clf






%clear
