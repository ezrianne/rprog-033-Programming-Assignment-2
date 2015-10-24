# To test the R script named "cacheMatrix.R"
# Save the file as is in your R working directory
# Open it by typing source("cacheMatrix.R")
# Alternatively, you can type source("Your\\Saved\\Path\\cacheMatrix.R")
# Remember to use double backslash 
# Here is an example to run the cacheMatrix.R file
# assuming it is in your working directory

source("cacheMatrix.R")


# Create a SQUARE matrix (The solve() function only handles square matrices)
# by calling the makeCacheMatrix() function
# An example matrix you can use is

myMatrix <- makeCacheMatrix(matrix(c(1,2,3,4), nrow = 2, ncol = 2));

# Now You Can Test

myMatrix$get()

# You will see your 2x2 matrix here

#Let's see if cacheSolve() works
#The Inverse should appear

cacheSolve(myMatrix)



# Let's run the code a second time, to see if we get the cached value
# You should see "Getting cached data" and the inverse

cacheSolve(myMatrix)




