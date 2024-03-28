#= You can enclose strings in quotation marks =#

s1 = "Single quotation mark"
println(s1)

#= '' define a Char, but not a string =#

println(typeof('a'))

#= We can use $ to interpolate variables in strings =#

name = "David"
age = 26
cats = 2

println("Hello, I am $name, I am $age years old and have $cats cats. Next year I will be $(age+1) years old")

#= We can concatenate strings in multiple ways =#

AnswerToEverything = string("The answer ", "to everything is ", 42)
println(AnswerToEverything)

partOne = "This is part one, "
partTwo = "and this is part two"

resultFirstWay = partOne * partTwo
println(resultFirstWay)

resultSecondWay = "$partOne$partTwo"
println(resultSecondWay)