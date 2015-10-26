


**To test the R script**

Save the file as is in your R working directory.

Open it by typing **source("cacheMatrix.R")**

Alternatively, you can type **source("Your\\Saved\\Path\\cacheMatrix.R")**

Remember to use double backslash.


Create a SQUARE matrix (The solve() function **only** handles square matrices)
by calling the **makeCacheMatrix()** function.

An example matrix you can use is:


```R
myMatrix <- makeCacheMatrix(matrix(c(1,2,3,4), nrow = 2, ncol = 2));
```

Now You Can Test

```R
myMatrix$get()
```

You will see here your 2x2 matrix here

Let's see if **cacheSolve()** works

The Inverse should appear

```R
cacheSolve(myMatrix)
```

Let's run the code a second time, to see if we get the cached value.

You should see "Getting cached data" and the inverse
```R
cacheSolve(myMatrix)
```




