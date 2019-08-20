function estimatepi()
    inv = 0
    error = 1/π - inv
    ϵ = 10^-15
    k = -1

    while error > ϵ
        k += 1
        numer = ❕(4k) * (1103 + 26390k)
        denom = ( ❕(k)^4 ) * (396^4k)
        inv += (2*√2 / 9801) * numer /  denom
        error = 1/π - inv
    end

    1 / inv
end

function ❕(n)
    factorial(n)
end

function main()
    println("\n"^2, "The estimate for π is ", estimatepi())
end

main()
