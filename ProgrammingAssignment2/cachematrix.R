## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# Defines a matrix class called "x"
# Gets the matrix in variable "get"
# Sets the inverse matrix in variable "setinverse"
# Gets the inverse matrix in variable "getinverse"
 
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setinverse <- function(inverse) inv <<- inverse
  getinverse <- function() inv
  list(set=set, get=get, setinverse=setinverse, getinverse=getinverse)
}



## Write a short comment describing this function
# Below function solves the inverse of the above matrix. If, however, inverse 
# has already been resolved, displays the message "getting cache data", and 
# the inverse value from cache


cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)) {
    message("getting cached data.")
    return(inv)
  }
  data <- x$get()
  inv <- solve(data)
  x$setinverse(inv)
  inv
}
