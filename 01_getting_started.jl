println("Hello World")

#= You can asign variables like this, but you do not need to define a type like in JS =#
firstVariable = 42

#= This is how you print to the console =#
println(firstVariable)

#= This is how you can show the type of a variable =#
println(typeof(firstVariable))

#= 1.1 Assign 365 to a variable named "days". Convert `days` to a float assign it to a variable "days_float" =#

days = 365
days_float = convert(AbstractFloat, days)
println(typeof(days_float))

#= 1.2 See what happens when you execute "convert(Int64, "1")" and parse(Int64, "1")" =#

#= convert(Int64, "1") ERROR: LoadError: MethodError: Cannot `convert` an object of type String to an object of type Int64 =#

oneParsed = parse(Int64, "1")
println(oneParsed)