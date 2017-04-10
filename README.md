# Assignment-Programming-Assignment-2-Lexical-Scoping

## The purpose of this assignment is to write a function that caches and object in order to expedite future calculations

makeCacheMatrix is a function which creates an object (a matrix object in this case) that
can be retrieved.  This is of use for computationally "expensive" processes.  It works in 
conjuction with its companion function cacheSolve (below).  makeCacheMatrix makes the object
location and cacheSolve calculates the inverse of the stored matrix object.  These tandem functions, 
however, can only calculate the inverses of matrices with inverses (non-singular).

### Some preliminary consideration 

Testing of the the cache/calc function is being performed on a very simple 2 x2 matrix
EXAMPLE:  A<-matrix(c(1,2,3,4),nrow = 2,ncol = 2)

This is for testing purposes, and something more complex will likely be needed for real world applications.
EXAMPLE:  To generate a 3 x 3 square matrix with randomized data the following code could be used...
B <- matrix(data = rnorm(300,10,2), nrow = 3, ncol = 3)

NOTE:  This function will only return an inverse for non-singular matrices.
NOTE:  I am unsure is all square matrices are non-singular, therefore,
the function "is.singular.matrix" is a good pre-check.  It returns "TRUE" if singularity
is present (non-invertible), or "FALSE" if an inverse exists.
NOTE:  requires "matrixcalc" package
