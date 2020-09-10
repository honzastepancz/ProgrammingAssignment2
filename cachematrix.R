## The first function is computing the inverse matrix
## The second function is checking the cache and using it when possible

## This function is computing the inverse matrix

makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
                x <<- y
                m <<- NULL
        }
        get <- function() x
        setsolve <- function(solve) m <<- solve
        getsolve <- function() m
        list(set = set, get = get,
             setsolve = setsolve,
             getsolve = getsolve)

}


## This function is checking the cache and using it when possible

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x
                m <- x$getsolve()
                if(!is.null(m)) {
                        message("getting cached data")
                        return(m)
                }
                data <- x$get()
                m <- solve(data, ...)
                x$setsolve(m)
                m
        }
        
        
