## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
## This fuction is used to create an object that is used to cashe its inverse

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
## The fuction below is used for returning of the inverse of the matrix

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        inv <- x$getinverse()
        if(!is.null(inv)) {
                message("getting data cashed.")
                return(inv)
                }
        data <- x$get()
        inv <- solve(data)
        x$setinverse(inv)
        inv
}
