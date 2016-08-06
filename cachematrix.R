## Put comments here that give an overall description of what your
## functions do

## This function creates a special matrix which is really a list where
##each element of the list contains a function to:
## 1. set the value of the matrix
## 2. get the value of the matrix
## 3. set the inverse of the matrix
## 4. get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  setinverse <- function(solve) m <<- mean
  getinverse <- function() m
  list (set = set, get = get, setinverse = setinverse, getinverse = getinverse)
  
}


## If the inverse of the matrix has already been calculated then return that
## otherwise solve the matrix and store the value.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
    m <- x$getinverse()
    if(!is.null(m)) {
      message ("getting cached data")
      return (m)
      
    }
    data <- x$get()
    m <- solve(data, ...)
    x$setinverse(m)
    m
}
