<<<<<<< HEAD
## Put comments here that give an overall description of what your
## functions do
<<<<<<< Updated upstream

## Write a short comment describing this function
=======
## [Put comments here that describe what your functions do]
>>>>>>> 2798782... Initial commit for Programming Assignment 2
=======
##
## MakeCacheMatrix is a function that has a Matrix passed into it "x"
## 
## x is the matrix that is passed into the function
## invmat <- given value of the matrix 
## 
## the functions within makeCacheMatrix
##
## set will set the passed value as the matrix
## get will show the matrix
## setinverse will set the value to the inverse matrix
## getinverse will show the inversed matrix value
>>>>>>> Stashed changes

makeCacheMatrix <- function(x = matrix()) {
         ## empties cache "invmat"
         invmat <- NULL
         set <- function(y) {
                 x <<- y
                 invmat <<- NULL
         }
         get <- function() x
         setinverse <- function(inverse) invmat <<- inverse
         getinverse <- function() invmat
         list(set = set, get = get,
              setinverse = setinverse,
              getinverse = getinverse)
}
<<<<<<< Updated upstream


<<<<<<< HEAD
## Write a short comment describing this function

=======
>>>>>>> 2798782... Initial commit for Programming Assignment 2
=======
##
## cacheSolve when called will display the inverse of the "set" matrix
## if the value is already in the cache, the function will get the value
## if the value is not in the cache, it will solve for the inverse and
## display the value
## "invmat" is passed between makeCacheMatrix and cacheSolve
##
>>>>>>> Stashed changes
cacheSolve <- function(x, ...) {
         invmat <- x$getinverse()
         ## is "invmat" already in the cache?  If so, display the value
         ## if not, then compute the inverse and then display the value
         if(!is.null(invmat)){
                 message("getting cached data")
                 return(invmat)
         }
         message("Please wait while inverse is computed")
         data <- x$get()
         invmat <- solve(data)
         x$setinverse(invmat)
         invmat
}