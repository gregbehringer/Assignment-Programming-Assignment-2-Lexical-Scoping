## makeCacheMatrix is a function which creates an object (a matrix object in this case) that
## can be retrieved.  This is of use for computationally "expensive" processes.  It works in 
## conjuction with its companion function cacheSolve (below).  makeCacheMatrix makes the object
## location and cacheSolve calculates the inverse of the stored matrix object.  These tandem functions, 
## however, can only calculate the inverses of matrices with inverses (non-singular).


## Start of code for function "makeCacheMatrix"

## First test the cache/calc function with a very simple 2 x2 matrix

A<-matrix(c(1,2,3,4),nrow = 2,ncol = 2)

## This is for testing purposes, something more complex will likely be needed
## For example:  generate a 3 x 3 square matrix with randomized data
## B <- matrix(data = rnorm(300,10,2), nrow = 3, ncol = 3)

## NOTE:  This function will only return an inverse for non-singular matrices
## NOTE:  I am unsure is all square matrices are non-singular, therefore,
## the function "is.singular.matrix" is a good pre-check
## NOTE:  requires "matrixcalc" package


## Actual function was built from the meanCache skeleton - essentially copied


makeCacheMatrix <- function(A = matrix()) {
    
#remove the element
inv <- NULL
    
holder <- function(y) {

            A <<- creator
            inv <<- NULL

    }

#opting for alternative syntax in case debugging is necessary

    get <- function() {

A

}
    
setInverse <- function(inverse) inv <<- inverse
    
getInverse <- function() {inv}

    list(holder = holder,
         get = get,
         setInverse = setInverse,
         getInverse = getInverse)

}


## As mentioned prior, cacheSolve is a function which calculates the inverse of
## a non-singular matrix from the stored matrix object created by makeCacheMatrix


cacheSolve <- function(A, ...) {
        
	#perform the inverse calculation
        inv <- A$getInverse()
        if (!is.null(inv)) {
                message("getting cached data")
                return(inv)
        }
        mat <- A$get()
        inv <- solve(mat, ...)
        A$setInverse(inv)
        inv
}




## RUN EXAMPLE in the R Console:

## > A
##      [,1] [,2]
## [1,]    1    3
## [2,]    2    4
## > holder<-makeCacheMatrix(A)
## > cacheSolve(holder)
##      [,1] [,2]
## [1,]   -2  1.5
## [2,]    1 -0.5




