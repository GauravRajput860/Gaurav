# Set the seed for reproducibility
set.seed(123)

# Generate data for 50 students
num_students <- 50

# Generate roll numbers starting from 930001
roll_numbers <- seq(930001, length.out = num_students)

# Generate random student names
student_names <- c("John", "Mary", "David", "Lisa", "Michael", "Sarah", "James", "Emily", "Andrew", "Emma")

# Sample names for 50 students
student_names <- sample(student_names, num_students, replace = TRUE)

# Generate random marks out of 500 for each student
obtaining_marks <- sample(0:500, num_students, replace = TRUE)

# Create a data frame with student information
student_data <- data.frame(
            Roll_No = roll_numbers,
            Name = student_names,
            Obtaining_Marks = obtaining_marks
)

# Write the data frame to a CSV file
write.csv(student_data, "students_data.csv", row.names = FALSE)

# Display the first few rows of the data frame
head(student_data)
