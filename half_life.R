#general equation: Nt = No(1/2)^(t/th), where
        #Nt is the quantity remaining
        #No is the initial quantity
        #t is the elapsed time
        #th is the half-life
        #n is the "cycle"

#half_life for one observation
half_life <- function(initial_quantity, elapsed_time, half_life) {
        remaining_quantity <- initial_quantity*.5^(elapsed_time/half_life)
        remaining_quantity
}

#half life for 8 observations
half_life8 <- function(initial_quantity, elapsed_time, half_life, n = 24) {
        remaining_quantity <- initial_quantity * .5^(elapsed_time/half_life) +
                initial_quantity * .5^((elapsed_time + n)/half_life) +
                initial_quantity * .5^((elapsed_time + 2*n)/half_life) +
                initial_quantity * .5^((elapsed_time + 3*n)/half_life) +
                initial_quantity * .5^((elapsed_time + 4*n)/half_life) +
                initial_quantity * .5^((elapsed_time + 5*n)/half_life) +
                initial_quantity * .5^((elapsed_time + 6*n)/half_life) +
                initial_quantity * .5^((elapsed_time + 7*n)/half_life)
        remaining_quantity
}
