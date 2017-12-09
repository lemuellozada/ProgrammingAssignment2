## Put comments here that give an overall description of what your
## functions do

## Assignment number 3. will invert a matrix using cached data using lexical scoping 

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


## retrieves the inverse matrix from the cache

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
