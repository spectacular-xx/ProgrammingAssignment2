## The following two functions will cache the inverse of a matrix so that it will not be calculated each time since
## getting the inverse is a time consuming operation 
## The function will check whether the inverse exists before calculating it. If it exists, it is not calculated

## This function creates a matrix that can cache its inverse

makeCacheMatrix <- function(x = matrix()) {

     matrix <- solve(x) ## the inverse of x
     matrix
}


## This function will check if x has an inverse. If so, no need to calculate the inverse
## else, we 

cacheSolve <- function(x, ...) {
     ## Return a matrix that is the inverse of 'x'
     
     ## if x is not null, just return it
     if (!is.null(x))
     {
          message("getting cached matrix inverse")
          return (x)
     }
     ## else, get the inverse using function solve() and return it
     else
     {
          inverseX <<- makeCacheMatrix(x)
          return (inverseX)
     }
          
}
