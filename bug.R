```R
# This function attempts to calculate the mean of a vector, but contains a subtle error.
calculate_mean <- function(x) {
  if (length(x) == 0) {
    return(NA) # Handle empty vectors
  }
  sum_x <- sum(x, na.rm = TRUE) # Summing elements, removing NAs
  mean_x <- sum_x / length(x) # Calculating the mean
  return(mean_x)
}

# Example usage:
vec1 <- c(1, 2, 3, 4, 5)
vec2 <- c(1, 2, NA, 4, 5)
vec3 <- numeric(0) # Empty vector

print(calculate_mean(vec1)) # Correct result
print(calculate_mean(vec2)) # Correct result
print(calculate_mean(vec3)) # Correctly returns NA

# However, consider this edge case:
vec4 <- c(Inf, 2, 3)
print(calculate_mean(vec4)) # Returns Inf, but should be NaN
```