## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  inverse <- NULL
  
  #Let's set the matrix
  set <- function(y) {
    x <<- y
    inverse <<- NULL
  }
  
  # let's get the matrix
  get <- function(){
    x #just returns the matrix
  }
  
  #to set the inverse of a matrix
  setInverse <- function(I){
    inverse <<-I
  }

    #to get the inverse of a matrix
  getInverse <- function(){
    inverse
  }
  list(set = set, get = get, setInverse = setInverse,getInverse = getInverse)
  
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  inverse <-x$getInverse()
  if(!is.null(inverse)){ #no need to calculate it again: just get the inverse
    message("getting cached inverse")
    return(inverse)
  }
  mat <- x$get() #store the matrix
  #inverse <- solve(mat) %*% mat #to get the inverse (other possibility)
  inverse <- inverse(mat)
  x$setInverse(inverse)  #now that we have the inverse: set it for future times
  inverse #return de inverse
}
