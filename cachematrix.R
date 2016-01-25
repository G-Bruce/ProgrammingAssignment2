## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

MakeCacheMatrix <- function(x = matrix()) {
# AS WAS STATED IN THE ASSIGNMENT, THE 
# MAKECACHEMAXRIX OBJECT IS REQUIRED TO CONTAIN 
# THE FOLLOWING FUNCTIONS
#     1) SET THE MATRIX
#     2) GET THE MATRIX 
#     3) SET THE INVERSE OF THE MATRIX 
#     4) GET THE INVERSE OF THE MATRIX
        
# THE PRELIMINARY VALUE IS INITIALIZED TO NULL
# AND AS DATA IS PASSED, THE VALUE CYCLES 
        
INVs <- NULL
        
# SET FUNCTION
# SETS THE MATRIX, BUT DOES NOT 
# EVALUATE THE INVERSE OF THE MATRIX

set <- function(y) {
        x <<- y
        INVs <<- NULL
}
        
# GET FUNCTION 
# THE GET FUNCTION RETURNS THE VECTOR WITHOUT ANY MANIPULATION

get <- function() x
        
# SETINVERS FUNCTION
# THIS FUNCTION SETs THE INVERSE

setinverse <- function(inverse) INVs <<- inverse
        
# GET INVERSE FUNCTION
# GET FUNCTION GETs THE INVERSE

getinverse <- function()INVs
        
# FUNCTION list
# Assignment to MakeCacheMatrix contains the four functions

list(set = set, get = get,
     setinverse = setinverse,
     getinverse = getinverse)	
        
}


## Write a short comment describing this function

CacheSolve <- function(x, ...) {
        
# THE GOAL IS TO RETURN A INVERSE OF THE MATRIX 'X'
        
# THE FOLLOWING WILL GET THE INVERSE AND DETERMINE IF 
# HAS BEEN CALCULATED
        
inv <- x$getinverse()
        
# STATE OF THE THE INVERSE  
# INV IS NOT NULL: MATRIX HAS BEEN CALCULATED - RETURING THE CALCULATED MATRIX

if(!is.null(inv)) {
message("MATRIX HAS BEEN CALCULATED - RETURING THE CACHED MATRIX")
return(inv)
}
        
# FALSE: MATRIX HAS NOT BEEN CALCULATED - RETURING THE CALCULATED MATRIX

data <- x$get()
        
# CALCULATE THE MATRIX
inv <- solve(data, ...)
        
# CACHE THE NEWLY CALCULATED INV MATRIX
x$setinverse(inv)
        
# RETURN THE NEWLY CALCULATED INV MATRIX
inv    
}
