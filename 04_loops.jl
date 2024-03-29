#= The syntax for a while-loop is
    while *condition*
        *loop body*
    end

In a .jl file they need to be defined in a function with the local scope as following
=#

function simpleLoop()
    local n = 0
    while n < 10
        n += 1
        println(n)
    end
end

#= You can also loop over an Array like this =#

myFriends = ["Barney", "Ted", "Lily", "Robin", "Marshall"]

function loopOverArray()
    local i = 1
    while i <= length(myFriends)
        println("Hello $(myFriends[i]), it is great to see you")
        i += 1
    end
end

#= A for-loop looks like this 
    for *var* in *loop interable*
        *loop body*
    end
=#

for n in 1:10
    println(n)
end

#= You can also replace the "in" with "=" or "∈" (meaning n is part of 1:10) =#

for n ∈ 1:10
    println(n)
end

function forLoopArray()
    local i = 1
    for friend in myFriends
        println("This is my friend ", friend)
    end
end

#= Let's use a for-loop to create some additional tables, where the value of every entry is the sum of its row and column incides. Remember that Julia is 1-indexed =#

m, n = 5, 5
A = zeros(m, n)
println(A)

for i in 1:m
    for j in 1:n
        A[i, j] = i + j
    end
end

println(A)

simpleLoop()
loopOverArray()
forLoopArray()