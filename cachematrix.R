## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function
#get the inverse and save it 

makeCacheMatrix <- function(x =matrix()) {
  #NULL bc I dont have the value yet
  inv <- NULL
  set <- function(y){
      x <<-y
      inv <<- NULL
  }
  #when i call this function i get the value of the matrix
  get <- function()x
  setinverse <- function(inverse) inv<<- inverse
  getinverse <- function() inv
  list (set=set, get=get,
        setinverse=setinverse, getinverse=getinverse)
}


## Write a short comment describing this function: 
#show the inverse that is saved or calculate it

cacheSolve <- function(x, ...) {
  inv <- x$getinverse()
  if(!is.null(inv)){
    return(inv)
  }
  mymatrix <- x$get()
  inv <- solve(mymatrix,...)
  x$setinverse(inv)
  inv
  
}

