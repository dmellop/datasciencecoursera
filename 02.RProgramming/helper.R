# helper function for getting the hospital name
helper <- function(data, col_num, state) {
        state_subset <- data[data[, 7]==state, ]
        outcome_arr <- state_subset[, col_num]
        min <- min(outcome_arr, na.rm=T)
        min_index <- which(outcome_arr == min)
        hosp_name <- state_subset[min_index, 2]
        return(hosp_name)
}
