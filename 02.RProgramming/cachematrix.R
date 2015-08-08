## Coursera R Programming
## This function creates a matrix object that can cache its inverse.

makeCacheMatrix <- function(x = matrix()){
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inv <<- inverse
        getInverse <- function() inv
        list(set = set, get = get, setInverse = setInverse, getInverse = getInverse)
}

## Return a matrix that is the inverse of 'x'

cacheSolve <- function(x, ...){
        inv <- x$getInverse()
        if(!is.null(inv)){
                return(inv)
        }
        mtx <- x$get()
        inv <- solve(mtx, ...)
        x$setInverse(inv)
        inv
}