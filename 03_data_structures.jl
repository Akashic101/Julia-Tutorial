#= Dictionaries is a set of data related to one another. A good example is a phonebook. It is similar to an Array of Objects in JS =#

myPhoneBook = Dict("Emergency services" => "0118 999 881 999 119 725 3", "Ghostbusters" => "555-2368")
println(myPhoneBook)

#= We can add another element to the Dictionary as follows =#

myPhoneBook["Dwayne Johnson"] = "(323) 951-9839"
println(myPhoneBook)
println(typeof(myPhoneBook))

#= We can grab data from the Dictionary like this =#

println(myPhoneBook["Dwayne Johnson"])

#= We can also get a value of the Dictionary - and at the same time deleting it - by using pop! =#

println(pop!(myPhoneBook, "Dwayne Johnson"))
println(myPhoneBook)

#= Note: Dictionaries are not ordered, so they cannot be indexed into them. If we want to index them we can use a Tuple. Also Julia has a 1-index instead of a 0-index =#

myFavouriteAnimals = ("Cats", "Dogs", "Penguins")
println(myFavouriteAnimals[1])
println(typeof(myFavouriteAnimals))

#= Tuples are immutable, meaning they cannot be indexed. For that we need Arrays =#

myCats = ["Tia", "Luna"]
println(myCats[1])
println(typeof(myCats))

#= And this is how we can change elements of an Array =#

push!(myCats, "Sweety")
println(myCats)
myCats[3] = "Biscuit"
println(myCats)

#= We can also mix values =#

randomMix = ["string", 1, 2, 3.0, ["ArrayOne", "ArrayTwo"]]
println(randomMix)
println(typeof(randomMix))

#= A 2D Array would look like this. Note that the internal Arrays do not need to have the same length =#

numbers = [[1, 2, 3], [4, 5], [6, 7, 8, 9]]
println(numbers)

#= Using the rand()-function we can create 2D- or 3D-Arrays with random values. The numbers are chosen between 0 and 1 and are of type Float64 =#

println(rand(4, 3))
println(rand(4, 3, 2))
print(typeof(rand(3, 2, 1)))
