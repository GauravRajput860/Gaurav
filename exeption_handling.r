# Define a function to perform division
performDivision <- function(a, b) {
  result <- tryCatch({
    # Attempt to perform division
    division_result <- a / b
    return(division_result)
  }, error = function(err) {
    # Handle division by zero error
    if (inherits(err, "error") && grepl("non-numeric", conditionMessage(err))) {
      cat("Error: Division by zero or non-numeric value\n")
    } else {
      # Handle other errors
      cat("An unexpected error occurred:", conditionMessage(err), "\n")
    }
    # Return NA if error occurs
    return(NA)
  })
  
  return(result)
}

# Test the function
result1 <- performDivision(10, 2)  # Valid division
print("Result 1:", result1)

result2 <- performDivision(10, 0)  # Division by zero
print("Result 2:", result2)

result3 <- performDivision("abc", 2)  # Non-numeric value
print("Result 3:", result3)
