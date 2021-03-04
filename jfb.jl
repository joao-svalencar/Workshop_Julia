#####Julia For Talented Amateurs YouTube channel
####Julia for beginners tutorial series 1:13 (Watched on speed 1.25)
###TUTORIAL VIDEO 1:
##Installation of Julia and related programs

###TUTORIAL VIDEO 2: 
##Theory on computer science and basics:

#BASIC MATH
1 + 1
1 * 2
2 / 1
2 ^ 2 #note that in this case you have to use a space between de numbers and the caret operator
# % shows for the remainder in a division:
4 % 2 # is zero, because the remainder is zero.
5 % 2 # is one, because the remainder is one.
# Please Excuse My Dear Aunt Sally:
# Parenthesis Exponents Multiplication/Divison Addition/Subtraction
1 + (2 * 3) ^ 4 * 5

#BOOLEAN
3 > 2
2 > 3
3 >= 3
2 >= 3
2 < 3
4 == 2 * 2
2 * 2 !== 4

&& # stands for AND 
true && true
true && false

|| # stands for OR 
true || true
false || false
true || false

# true and false stands for one and zero
false == 0
true == 1
false + false
false + true

###TUTORIAL VIDEO 3:
## Variables, Expressions, Memory && Types
#Variables: Storage location
x = 1
y = 2
z = x + y

x + y = 2 #ERROR Ambiguous to Julia
y = 2 - x #this works, it is not ambiguous

length = 2
width = 3
# now you can use is as any other operand
area = length * width
varinfo() # shows all variables created and how much space they take in your computer memory
typeof(2) # shows the type of objetc within brackets Int64
typeof("a") #String
typeof(1>2) #Boolean
typeof(4/2) #Float64
0.1 + 0.2 #it is not equal to 0.3! explanation in the video
0.2 + 0.2
bitstring(1)
bitstring(0)

#rational
typeof(-1//2) #I did not understand why we need to use the double bar
typeof(0//3)
typeof(5//2)
1//2 + 1//4
pi
typeof(pi)

#ways to same the same thing
10 ^ 6
1000000
1_000_000
10 ^ 6 == 1000000 == 1_000_000

#we can't use commas to show big numbers:
1,000,000

#built-in functions
sqrt(4)
cbrt(8)
convert(Int64, 3.0)
iseven(3)
isodd(3)
rem(5, 2) #same as 5 % 2
round(3.14159, digits = 2)
round(3.55, digits = 1, RoundUp)
round(3.55, digits = 1, RoundDown)

# equals
a = b #assign variables
a == b #is equal? t or f?
a === b #identical test: indentical in value AND type?

a = 3
b = 3.0

a == b
a === b #false: not the same type

#characters
typeof('a')
typeof('#')

#we can make unicodes in julia!: https://docs.julialang.org/en/v1/manual/unicode-input/

α # type \alpha then hit enter if typing in the script, or hit tab if typing in the console
β # type \beta
δ # type \delta

# if you do a 4 / 2 it will always give you a Float64 number result. to get an integer do:
div(4, 2) #or with the unicode \div:
4 ÷ 2
# \pi returns the value of π:
π

# as do the euler number with \euler:
ℯ

#\approx:
0.1 + 0.2 ≈ 0.3 #now it is true

#upper script: \^2
E = "mc²"

# lower script: \_2
H₂O = "water"

#emojis (in the console hit tab):
#\:phone:
#\:snowman:

#multiline comments:
#= %
@
$
and to close:
=#

#other stuff
s1 = "Hello, World!"
s1



