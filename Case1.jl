a = rand(4)
b = rand(4)

a * b #does not work
a .* b #you have to add . in front of it

f(x) = 2x + 2

f.(x) = 2x + 2

f!(x) = x[2] = 5

d = c #if you change one, the other will be changed too
d = copy(c) #literally a copy that you can chance without changing the other

c = 1:4 #not a vector from 1 to 4

c = collect(1:4) #this is how ot create an actual vector

n = Exponential(0.2)

rand(n)

rand(n, 1000)

a = ans


histogram(a)

plot(b)
#################

] # opens the pkg install mode

]add SimpleSDMLayers GBIF Plots

using GBIF
using SimpleSDMLayers
using Plots
using StatsBase

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

add StatsBase

savefig(“mycoolfigure.png”)

#https://github.com/EcoJulia/SimpleSDMLayers.jl/latest/sdm/bioclim/

#computational thinking on youtube

#https://juliahub.com/ui/Home

#ecojulia.org