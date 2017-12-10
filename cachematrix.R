## makeCacheMatrix() will take a atrix and store its inverse
## cacheSolve retrieves the inversed matrix from the cached value that is stored in makeCacheMatrix()'s environment

## Assignment number 3.
## i understand a little how the code works, but i cant grasp the idea fully
## would really appreciate if you have any recommended articles, readings, or videos
## i want to understand R more as it is interesting 
## but my current level of understanding does not make it more fun

makeCacheMatrix <- function(x = matrix()) {

        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
                }
        get <- function() x
        setinverse <- function(inverse) m <<- inverse
        getinverse <- function() m
        list(set = set, 
             get = get,
             setinverse = setinverse,
             getinverse = getinverse)
             
}


## retrieves the inversed matrix from the cache

cacheSolve <- function(x, ...) {
        m <- x$getinverse()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
                }
        data <-x$get()
        m <- solve(data,...)
        x$setinverse(m)
        m                             
        
}
