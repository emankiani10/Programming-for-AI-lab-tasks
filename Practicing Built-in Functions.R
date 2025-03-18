# 1. (mean, median, mode)
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

------------------------
# 2. Generate a sequence of numbers from 1 to 100 and find the sum of all even numbers
numbers <- 1:100
sum_even <- sum(numbers[numbers %% 2 == 0])
cat("Sum of even numbers from 1 to 100:", sum_even, "\n\n")
  
------------------------
# 3. Use the paste() function to concatenate multiple strings with a separator
str1 <- "Hello"
str2 <- "World"
str3 <- "R Programming"
concatenated_str <- paste(str1, str2, str3, sep = " - ")
cat("Concatenated String:", concatenated_str, "\n\n")

-----------------------
# 4. Create a matrix and perform operations (Transposition, Determinant, Inversion)
matrix_A <- matrix(c(2, 3, 1, 4, 6, 5, 7, 8, 9), nrow = 3, byrow = TRUE)
# Transpose of the matrix
transpose_A <- t(matrix_A)
# Determinant of the matrix
det_A <- det(matrix_A)
# Check if determinant is non-zero before inversion
if (det_A != 0) {
  inverse_A <- solve(matrix_A)  # Find inverse
} else {
  inverse_A <- "Matrix is singular, no inverse"
}
# Print results
cat("Matrix A:\n"); print(matrix_A)
cat("\nTranspose of A:\n"); print(transpose_A)
cat("\nDeterminant of A:", det_A, "\n")
cat("\nInverse of A:\n"); print(inverse_A)

