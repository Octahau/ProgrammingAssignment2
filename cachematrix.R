## Put comments here that give an overall description of what your
## functions do

## Getters and setters for the inverse matrix

makeCacheMatrix <- function(x = matrix()) {

 m_inverse <- NULL

  set <- function(y)
 {
   x <<- y
   m_inverse <<- NULL
 }
 get <- function() x
 setinverse <- function(matrix_inverse)
 {
   m_inverse <<- matrix_inverse
 }
 getinverse <- function() m_inverse
 list(set = set, get = get, setinverse = setinverse, getinverse = getinverse)
}


## Calculate the inverse matrix

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m))
        {
          message("getting cached data")
          return(m)
        }
        data <- x$get()
        m <- solve(data, ...)
        x$setinverse(m)
        m
}
