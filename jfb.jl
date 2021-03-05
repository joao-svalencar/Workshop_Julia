#####Julia For Talented Amateurs YouTube channel
####Julia for beginners tutorial series 1:13 (Watched on speed 1.25)

################################################## TUTORIAL VIDEO 1:##################################################
##Installation of Julia and related programs

################################################## TUTORIAL VIDEO 2: ##################################################
##Theory on computer science and basics:

#BASIC MATH
1 + 1
1 * 2
2 / 1
2 ^ 2 #note that in this case you have to use a space between de numbers and the caret operator
# % shows for the remainder in a division:
4 % 2 # is zero, because the remainder is zero.
5 % 2 # is one, because the remainder is one.
# PEMDS = Please Excuse My Dear Aunt Sally:
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
#true && true
#true && false

|| # stands for OR 
#true || true
#false || false
#true || false

# true and false stands for one and zero
false == 0
true == 1
false + false
false + true

################################################## TUTORIAL VIDEO 3: ##################################################
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

s2 = """This is an "interesting" tutorial."""
s2
println(s2)
print(s2)
println("Line 1\nLine 2\nLine 3") #new Line
println("1\t2\t3\t4\t5") #tabulation

snowperson = "\:snowman:" # on console
snowperson * snowperson
snowperson ^ 3
repeat(snowperson, 3)

s3 = "How much wood"
s4 = " "
s5 = "would a woodchuck chuck?"
s6 = s3 * s4 * s5 #concatenate strings

s7 = string(s3, s4, s5)

#interpolation
kpatty = 1.50
cbits = 1.25
sfsoda = 1.25
kmeal = 3.50
place = "Krusty Krab"

println("I am eating lunch at the $place.") #can also be println("I am eatinglunch at the", place, ".")
println("I bought separately = $(kpatty + cbits + sfsoda) dollars.")
println("Krabbe meal deal = $kmeal dollars.")

#to actually show the dollar sign:
println("\$100")
println("\euro")  #console

print("Enter some text: "); text = readline()
text
print("Enter some number: "); text = readline()

num = parse(Int64, text) #parse converts to any type you want

typeof(text) #should be string
typeof(num) #should be Int64

i = 123
snum = string(i) #function string converts object to strings

typeof(i)
typeof(snum)

color = :mycolor #: followed by name creates a datatype called symbol
typeof(color)

printstyled(s1, bold = false, color = :red) #printstyled allows us to print stylized outputs
printstyled(s1, bold = true, color = :red) #printstyled allows us to print stylized outputs


#=
begin   
    <code block>
end
=#

begin
    printstyled("   π", bold = true, color = :green)
    println()
    printstyled("  π ", bold = true, color = :red)
    printstyled("π", bold = true, color = :magenta)
end

################################################## TUTORIAL VIDEO 4: ##################################################
## Data Structure: Arrays, turples && dictionaries
#dictionary: R list?
d1 = Dict()#opens a "dictionary"
typeof(d1)

d1 = Dict("A" => 1, "B" => 3, "C" => 5, "D"=> 7) #we have to use => to assign values to keys
#not actually indexing, but especificly seeing a value
d1["A"]
d1["B"]

d1["A"] = 10
d1["E"] = 100

d1

d2 = Dict("A" => 10, "B" => 30, "C" => 50, "D" => 100)
d3 = Dict("A" => 100, "B" => 300, "C" => 500, "D" => 1000)
keys(d1) #returns the name of the keys
values(d1)
d1
d2
merge(d1, d2)
d3
push!(d3, "G" => 350) #"push-bang" it says that the mutation is permanent INCLUDES
pop!(d2, "A") #"pop-gang" REMOVES an entry

"A" in keys(d3) #boolean test to check if key "A" exists in d3
10 in values(d2) #boolean test to check if value 10 exists in d2

a = collect(10:50)
b = collect(60:100)

c = Dict("a" => a, "b" => b)
c = Dict("a" => collect(1:5), "b" => collect(6:10))

100 in values(c) #does not "read" inside the whole dict, on must point to a specific key:
100 in values(c["b"]) 

#tuple - can select by indexing retomar em 5m48s