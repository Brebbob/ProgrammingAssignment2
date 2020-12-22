## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
        x <<- y
        inv <<- NULL
        }
        get <- function(){x}
        setInverse <- function(inverse){inv <<- inverse}
        getInverse <- function() {inv}
        list(set=set, get=get, setInverse=setInverse, getInverse=getInverse)
}


## This function creates a special "matrix" object that can cache its inverse

cacheSolve <- function(x, ...) {
        inv <- x$getInverse()
        if(!is.null(inv)){
                message("Retrieving cache data")
                return(inv)
                }
        mat <- x$get()
        inv <- solve(mat, ...)
        x$setInverse(inv)
        inv
        
        ## Return a matrix that is the inverse of 'x'
}
