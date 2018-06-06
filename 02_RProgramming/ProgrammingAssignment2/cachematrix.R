## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

# This function creates a special "matrix" object that can cache its inverse
# *** assume that the matrix supplied is always invertible. ***
# 
# 1. set the value of the matrix
# 2. get the value of the matrix
# 3. set the inverse of the matrix
# 4. get the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        mat_inverse <- NULL                    # empty placeholder for the inverse of matrix
        set <- function(y) {                   # set the value of the matrix
                x <<- y                        # update with new matrix value
                mat_inverse <<- NULL           # reset placeholder value
        }
        get <- function() x                    # get the matrix value
        setinv <- function(solve) mat_inverse <<- solve           # set the inverse of the matrix
        getinv <- function() mat_inverse                          # get the inverse of the matrix
        list(set = set, get = get,                                # list of available functions
             setinv = setinv,
             getinv = getinv)
        
}


## Write a short comment describing this function

# This function computes the inverse of the special "matrix" returned by makeCacheMatrix above. 
# If the inverse has already been calculated (and the matrix has not changed), 
# then the cachesolve should retrieve the inverse from the cache.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        mat_inverse <- x$getinv()                  # get the inverse of the data
        if(!is.null(mat_inverse)) {                # if the inverse is cached
                message("getting cached data")
                return(mat_inverse)                # return the cached inverse of the matrix
        }
        data <- x$get()                            # get the value of matrix if inverse does not exist
        mat_inverse <- solve(data, ...)            # calculate the inverse of matrix
        x$setinv(mat_inverse)                      # update the inverse to variable mat_inverse
        mat_inverse
}
