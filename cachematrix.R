## cachematrix.R allows the caller to compute and cache the inverse
## of a passed matrix for global use

## $makeCacheMatrix is called check for a cached version of the
## inverse of a matrix
        
        makeCacheMatrix <- function(x = matrix()) {

        m <- x$getsolve()
        
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        
        return(m)
}
        
## $cachesolve computes the inverse of a passed matrix if the inverse isn't 
## already cached.

cachesolve <- function(x, ...) {
        
        m <- x$getsolve()
        
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
        }
        
        data <- x$get()
        m <- solve(data, ...)
        x$setsolve(m)
        
        return(m)
}
