#(mean, median, mode)
mode_function <- function(v) {
  uniq_v <- unique(v)
  freq <- tabulate(match(v, uniq_v))
  max_freq <- max(freq)
  
  if (max_freq == 1) {
    return(NA)  # No mode if all values appear once
  }
  
  uniq_v[which(freq == max_freq)]
}

# Test
x <- c(5, 10, 15, 20, 25)
mean(x)   # Mean
median(x) # Median
mode_function(x)  # Correctly returns NA

