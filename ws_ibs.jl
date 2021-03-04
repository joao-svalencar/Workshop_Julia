#] opens the pkg install mode

#add StatsBase Plots GBIF SimpleSDMLayers   

using StatsBase
using Plots
using GBIF
using SimpleSDMLayers

a = rand(4) #random numbers
b = rand(4)

a = collect(1:5) #creates vector
b = collect(1:5)

a * b #does not work as in R
a .* b #you have to add . in front of it to communicate that you want a mult for the vectors

a
f(x) = 2x + 2 #creates a function
f(a) #does not work 
f.(a) #must add . in front of to to communicate that you want 'a' to be an object in the function
f.(a) = 2x + 2 # don't remember

f!(x) = x[2] = 5 # don't remember either

d = c #if you change one, the other will be changed too
d = copy(c) #literally a copy that you can chance without changing the other

c = 1:4 #not a vector from 1 to 4

c = collect(1:10) #this is how to create an actual vector

n = Exponential(0.2)

rand(n)

rand(n, 1000)

a = ans

plot(c)
histogram(a)

#
#GBIF and SDM in Julia

#Download occurences
records = occurences(
    GBIF.taxon("Alces alces"),
    "hasCoordinate" => true,
    "continent" => "EUROPE",
    "limit" => 50  
)

while length(records) < 200
    occurences!(records)
end



savefig("mycoolfigure.png")

#https://github.com/EcoJulia/SimpleSDMLayers.jl/latest/sdm/bioclim/

#computational thinking on youtube

#https://juliahub.com/ui/Home

#ecojulia.org