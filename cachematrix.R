## R Programming Assignment 2: Lexical Scoping--caching the inverse of a matrix

# You may run testFile.R to do a test run of this code


## The makeCacheMatrix (Parent) function can be regarded as a function
## that returns a list of functions (Children).
## These child functions are:
## 1. set() to set the value of the matrix
## 2. get() to fetch/return the value of the matrix
## 3. setInverse() to set the value of the inverse of the matrix
## 4. getInverse() to fetch/return the value of the inverse of the matrix



makeCacheMatrix <- function(x = matrix()) {

	## We begin by setting the inverse to NULL as a placeholder 
      ## for future values

	i <- NULL

	## We define a set() function to set the matrix named x to a 
	## new matrix named newMatrix.
	## We also reset the value of the inverse, i, to NULL
	## The <<- operator is used to assign the NULL value to the 'i' object
	## because the 'i' object and 'x' matrix is in the parent environment


	set <- function(newMatrix) {

		x <<- newMatrix
		i <<- NULL
	}
	
	## This is to return the matrix x

	get <- function() {

		x 
	}

	## We now set the inverse, i, to the computed inverse
	## Again, the objects 'i' and 'inverse' are in different environments
	## Hence <<- is used
 	
 

	setInverse <- function(inverse) {
	
                i <<- inverse
	}
	
	## We can now obtain/return the value of the inverse through this function

	getInverse <- function() {
		i
	}

	## We can now return a special list containing all our functions needed
	## Each named element is a function (the child function)

list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
	
}


## Using the matrix created from the makeCacheMatrix function, we can now
## compute an inverse of a particular matrix
## The ellipse in the argument list exist to denote other parameters that will be passed
## into any function that will be called within cacheSolve()
## This will be helpful when you create your matrix and need to include paramters such as the elements
## number of rows and columns


cacheSolve <- function(x, ...) {
       
	## Return the matrix that is the inverse of 'x'	

	i <- x$getInverse()

	## If a cached value of the inverse matrix already exists, we fetch the value and 
	## return it

	if(!is.null(i)){
      	message("getting cached data")
      	return(i)
    }
	
	## If a cached value of the inverse isn't found, then we compute the inverse
	## We first use the get() function to return our matrix and store it to the object named 'data'
	## Next, we use the solve() function to compute our inverse.
	## With our inverse value stored to the object 'i', we set the value of the new inverse by returning 'i'
	

	data <- x$get()
	i <- solve(data, ...)
	x$setInverse(i)
	i	


}

