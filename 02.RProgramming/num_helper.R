num_helper <- function(data, col_num, state, num) {
        state_subset <- data[data[, 7]==state, ]
        # get "attack", "failure" and "pneumonia" vector
        outcome_arr <- state_subset[, col_num]
        len <- dim(state_subset[!is.na(outcome_arr), ])[1]
        if (num == "worst") {
                rank <- rank_helper(state_subset, outcome_arr, len)
        } else if (num > len) {
                rank <- NA
        } else {
                rank <- rank_helper(state_subset, outcome_arr, num)
        }
        result <- rank
        return(result)
}
