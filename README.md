# R Bug: Incorrect Mean Calculation with Infinite Values

This repository demonstrates a subtle bug in an R function designed to calculate the mean of a numeric vector. The function fails to correctly handle cases where the input vector contains `Inf` values. 

## Bug Description
The `calculate_mean` function, as written, returns `Inf` when the input vector contains at least one `Inf` value, even if other finite values are present. This is incorrect; the correct behavior should be to return `NaN` (Not a Number) as the mean is undefined in such a case.  The bug is primarily within how the function handles `Inf` values during summation.

## Solution
The provided solution modifies the function to use `is.finite()` to filter out non-finite values before performing the summation and mean calculation. This handles both `Inf` and `NaN` appropriately.