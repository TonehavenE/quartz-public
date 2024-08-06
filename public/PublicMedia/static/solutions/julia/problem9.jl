# Purpose:
#
# Author: Eben Quenneville
# Date: 2023-02-21
function problem9()
    goal = 1000
    for a in 3:Int64(round(goal / 3))
        for b in a:Int64(round(goal / 2))
            c = goal - a - b
            if (a * a) + (b * b) == c * c
                if a + b + c == goal
                    return a * b * c
                end
            end
        end
    end
    return -1
end

function main()
    solution = problem9()
    @assert solution == 31875000
    println("Output: ", solution)
end

main()
