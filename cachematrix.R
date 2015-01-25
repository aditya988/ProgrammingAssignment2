## The purpose of this program is to cache the inverse of a matrix. It is assumed
## that the matrix that is passed is a square invertible matrix.

## The following function is responsible setting the value of the inverse matrix
## and storing it for retrieval.

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setinv <- function(inverse) inv <<- inverse
        getinv <- function() inv
        list(set = set, get = get,
             setinv = setinv,
             getinv = getinv)

}


## This function is responsible for checking if the inverse has been cached or 
## needs to be calculated anew. Based on that, the value of the inverse is 
## either retrieved or calculated.

cacheSolve <- function(x, ...) {
        inv <- x$getinv()
        if(!is.null(inv)) {
                message("Getting cached data...")
                return(inv)
        }
        data <- x$get()
## In the statement below "a" is nothing but the matrix whose inverse must be 
## calculated
        inv <- solve(a)
        x$setinv(inv)
        inv
}
}
