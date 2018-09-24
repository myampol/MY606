my_calc_streak <- function(x){
  y <- rep(0,length(x))
  y[x == "H"] <- 1
  y <- c(0, y)                           # pre-pend a "zero" in front of the "y" sequence, in all cases.
  if (x[length(x)]=="H")  y <- c(y, 0)   # append a "zero" at the end ONLY if the final shot was a hit.    
  wz <- which(y == 0)
  streak <- diff(wz) - 1
  return(streak)
}