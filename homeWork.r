# 1 function to find out the addition of the given numbers
addition <- function() {
    values <- as.numeric(strsplit(readline("Enter numbers separated by spaces: "), " ")[[1]]) # nolint
    if (length(values) < 2) { # nolint
        print("Please enter at least two numbers.")
        return(NULL)
    }
    total <- sum(values)
    print(paste("The Sum of given numbers is : ", total))
}

# 2 function to find out the subtractio of the given number
subb <- function() {
    values <- as.numeric(strsplit(readline("Enter numbers separated by spaces: "))[[1]])
    if (length(values) < 2) {
        print("Please enter at least two numbers.")
        return(NULL)
    }
    total <- values[1] - sum(values[-1])
    print(paste("The Subtraction of given numbers is : ", total, "\n"))
}
# 3 function to find out the multiplication of the given data
multiply <- function() {
    numbers <- readline(prompt = "Enter numbers separated by spaces: ")
    numbers <- as.numeric(strsplit(numbers, " ")[[1]])
    if (length(numbers) < 2) {
        print("Please enter at least two numbers.")
        return(NULL)
    }
    result <- 1
    for (num in numbers) {
        result <- result * num
    }
    print(paste("The Multiplication of given numbers is : ", result, "\n"))
}

# 4 function to find out the division of two number
div <- function() {
    numerator <- as.numeric(readline(prompt = "Enter the numerator: "))
    denominator <- as.numeric(readline(prompt = "Enter the denominator: "))

    if (is.na(numerator) || is.na(denominator)) {
        print("Invalid input. Please enter valid numbers.")
        return(NULL)
    }

    if (denominator == 0) {
        print("Error: Division by zero is not allowed.")
        return(NULL)
    }

    result <- numerator / denominator
    print(paste("The Division of given numbers is : ", result, "\n"))
}

# 5 making the function for mean
meanFunction <- function() {
    data <- scan()
    mean_value <- mean(data)
    print(paste("Mean:", mean_value))
}
# 6 function to find out the median of the given data
medianFunction <- function() {
    data <- scan()
    median_value <- median(data)
    print(paste("Median:", median_value))
}

# 7th------------main function of area-------------------------
area <- function() {
    # 7.1 area of square
    areaSquare <- function() {
        side1 <- as.numeric(readline("Enter the First side of the Square : "))
        side2 <- as.numeric(readline("Enter the second side of the Square : "))

        arr <- side1 * side2
        print(paste("The area of the square is: ", arr))
    }
    # 7.2 area of rectangle
    areaRectangle <- function() {
        l <- as.numeric(readline("Enter the lenght of the rectangle  : "))
        b <- as.numeric(readline("Enter the breadth of the rectangle  : "))

        arr <- (l * b) / 2
        print(paste("The area of the rectangle is: ", arr))
    }
    # 7.3 area of Triangle
    areaTriangle <- function() {
        h <- as.numeric(readline("Enter the height of the triangle  : "))
        b <- as.numeric(readline("Enter the base of the triangle  : "))

        arr <- (h * b) / 2
        print(paste("The area of the triangle is: ", arr))
    }
    # 7.4 aree of circle
    areaCircle <- function() {
        r <- as.numeric(readline("Enter the radius of the circle : "))

        arr <- pi * r * r
        print(paste("The area of the rectangle is: ", arr))
    }

    cat("1. Area of Square.\n")
    cat("2. Area of Rectangel.\n")
    cat("3. Area of Triangle.\n")
    cat("4. Area of Circle.\n")

    choice <- as.numeric(readline("Enter your choice(1/2/3/4): "))
    result <- switch(choice,
        "1" = areaSquare(),
        "2" = areaRectangle(),
        "3" = areaTriangle(),
        "4" = areaCircle(),
    )
}
#---------------------------------- 8th perameter of diffrent regions -------;
perimeter <- function() {
    # 8.1
    perSquare <- function() {
        side1 <- as.numeric(readline("Enter the  side of the Square : "))
        arr <- 4 * side1
        print(paste("The perimeter of the square is: ", arr))
    }
    # 8.2
    perRectangle <- function() {
        l <- as.numeric(readline("Enter the lenght of the rectangle  : "))
        b <- as.numeric(readline("Enter the breadth of the rectangle  : "))
        arr <- 2 * (l + b)
        print(paste("The perimeter of the rectangle is: ", arr))
    }
    # 8.3
    perTriangle <- function() {
        s1 <- as.numeric(readline("Enter the 1st side of the triangle  : "))
        s2 <- as.numeric(readline("Enter the 2nd side  of the triangle  : "))
        s3 <- as.numeric(readline("Enter the 3rd side  of the triangle  : "))
        arr <- (s1 + s2 + s3)
        print(paste("The perimeter  of the triangle is: ", arr))
    }
    # 8.4
    perCircle <- function() {
        r <- as.numeric(readline("Enter the radius of the circle : "))
        arr <- 2 * pi * r
        print(paste("The perimeter of the rectangle is: ", arr))
    }

    cat("1. Perimeter of Square.\n")
    cat("2. Perimeter of Rectangel.\n")
    cat("3. Perimeter of Triangle.\n")
    cat("4. Perimeter of Circle.\n")

    choice <- as.numeric(readline("Enter your choice(1/2/3/4): "))
    result <- switch(choice,
        "1" = perSquare(),
        "2" = perRectangle(),
        "3" = perTriangle(),
        "4" = perCircle(),
    )
}
#------------------------9th Volumes of diffrent -----------------
volume <- function() {
    # 9.1 Cube
    cubeVol <- function() {
        side3 <- as.numeric(readline("Enter the side of the cube: "))
        vol <- side3 * side3 * side3
        print(paste("The Volume of the cube is : ", vol))
    }
    # 9.2 Cuboid
    cuboidVol <- function() {
        l <- as.numeric(readline("Enter the length of the cuboid: "))
        b <- as.numeric(readline("Enter the breath of  the cuboid: "))
        h <- as.numeric(readline("Enter the height of the cuboid: "))
        vol <- l * b * h
        cat("The Volume of the cuboid is : ", vol, "\n")
    }
    # 9.3 Cylinder
    cylVol <- function() {
        rds <- as.numeric(readline("Enter the radius of the cylinder : "))
        h <- as.numeric(readline("Enter the height of the cylinder: "))
        vol <- pi * rds * rds * h
        print(paste("The volume of Cylinder is : ", vol, "\n"))
    }
    # 9.4 Cone
    coneVol <- function() {
        rds <- as.numeric(readline("Enter the radius of the cone : "))
        h <- as.numeric(readline("Enter the height of the cone : "))
        vol <- (1 / 3) * pi * rds * rds * h
        print(paste("The volume of the cone is : ", vol, "\n"))
    }
    # 9.5 Sphere
    sphrVol <- function() {
        rds <- as.numeric(readline("Enter the radius of the sphere: "))
        vol <- (4 / 3) * pi * rds * rds * rds
        print(paste("The volume of Sphere is : ", vol, "\n"))
    }
    # 9.6 Hemisphere
    hemivol <- function() {
        rds <- as.numeric(readline("Enter the radius of the hemisphere: "))
        vol <- (2 / 3) * pi * rds * rds * rds
        print(paste("The volume of the hemisphere is: ", vol, "\n"))
    }
    cat(" 1. Volume of Cube.\n")
    cat(" 2. Volume of Cuboid.\n")
    cat(" 3. Volume of Cylinder.\n")
    cat(" 4. Volume of Cone.\n")
    cat(" 5. Volume of Sphere.\n")
    cat(" 6. Volume of Hemisphere.\n")
    choice <- as.numeric(readline("Enter your choice(1/2/3/4/5/6): "))
    result <- switch(choice,
        "1" = cubeVol(),
        "2" = cuboidVol(),
        "3" = cylVol(),
        "4" = coneVol(),
        "5" = sphrVol(),
        "6" = hemivol()
    )
}
# 10 Square root  of any number ...................
sqr <- function() {
    n <- as.numeric(readline("Enter the number : "))
    cat("The square root of ", n, "is : ", sqrt(n), "\n")
}
# 11th to find out the factorial of any number
fact = function() {
    factorial_function <- function(n) {
        if (n == 0) {
            return(1)
        } else if (n < 0) {
            cat("Factorial is not defined for negative numbers.\n")
            return(NULL) # Return NULL for negative numbers
        } else {
            return(n * factorial_function(n - 1))
        }
    }

    # Prompt the user for input
    n <- as.integer(readline(prompt = "Enter a number to calculate its factorial: "))

    # Calculate the factorial and print the result
    result <- factorial_function(n)
    if (!is.null(result)) {
        cat("Factorial of", n, "is:", result, "\n")
    }
    return(factorial_function(n))
}

# Student Record function
record <- function() {
    cat(" What do you want?\n ")
    cat(" 1. Show all students data.\n")
    cat(" 2. Search data for any single Student.\n ")
    cat(" 3. Want to add new student in exist record.\n")

    datafunction <- function() {
        mydata <- read.csv("data.csv")
        df <- data.frame(mydata)
        print(df)
    }
    searchFunction <- function() {
        # program to search any student data form the csv file
        cat("Welcome User..!\n")

        print(" Enter your Log in Id : ")
        logIn <- as.numeric(readline(" "))
        if (logIn == 1234) { # here 1234 is user id ...for log in ..
            cat("..Log In successful..\n")
            # reading the csv file
            studentsData <- read.csv("data.csv")
            # creating the main function for data search of any student
            getStudentData <- function(RollNo) {
                studentData <- NULL
                for (i in 1:nrow(studentsData)) {
                    if (studentsData$RollNo[i] == RollNo) {
                        studentData <- studentsData[i, ]
                        break
                    }
                }
                # for invalid input ..........
                if (is.null(studentData)) {
                    cat("Student Roll No. Not Found. \n")
                } else {
                    return(studentData)
                }
            }
            # taking the user input ....for roll no.
            userInput <- as.integer(readline("Enter the Roll No. of the student : "))
            studentsData <- getStudentData(userInput)
            if (!is.null(studentsData)) {
                print(studentsData)
            }
        }
    }

    # adding new student int CSV file
    addstudent <- function() {
        oldrecord <- read.csv("data.csv")
        newstudent <- data.frame(
            RollNo = as.numeric(readline("Enter the student Roll No. : ")),
            Name = readline("Enter the student Name : "),
            ObtMarks = as.numeric(readline("Enter the marks obtained by student : "))
        )
        oldrecord <- rbind(oldrecord, newstudent)
        write.csv(oldrecord, "data.csv", row.names = FALSE)
        cat("New student record added successfully.\n")
    }

    choice <- as.numeric(readline("Ener your choice (1/2/3): "))
    switch(choice,
        "1" = datafunction(),
        "2" = searchFunction(),
        "3" = addstudent()
    )
}
#------------------------------------------------------------------------------
name <- readline(" Enter Your Name Here ") # nolint: commented_code_linter.
cat(" Welcome! ", name, " In this Session you are able to find out the some Mathematical probles.\n ")
cat("Do you want to enter (press 1 else 0) : \n")
ch <- as.numeric(readline(" "))
if (ch == 1) {
    cat("Welcome..!\n")
    cat("1. Addition.\n")
    cat("2. Subtraction.\n")
    cat("3. Multiplication.\n")
    cat("4. Division.\n")
    cat("5. Mean.\n")
    cat("6. Median.\n")
    cat("7. Area.\n")
    cat("8. Perimeter.\n")
    cat("9. Volume.\n")
    cat("10. Square root of any number.\n")
    cat("11. Factorial of any number.\n")
    cat("12. Data Record of the Students.\n")
    choice <- as.numeric(readline("Enter your choice: "))
    result <- switch(choice,
        "1" = addition(),
        "2" = subb(),
        "3" = multiply(),
        "4" = div(),
        "5" = meanFunction(),
        "6" = medianFunction(),
        "7" = area(),
        "8" = perimeter(),
        "9" = volume(),
        "10" = sqr(),
        "11" = fact(),
        "12" = record()
    )
} else {
    print("Thank You! Have a Good Day.")
}
