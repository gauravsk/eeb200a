harmonic_series <- function(x) {
  vv <- numeric(x)
  vv[1] <- 1/(2*(2-1))
  for (i in 2:x) {
    vv[i] <- 1/((i+1)*(i))
  }
  return(vv)
}

nn <- 100
sum(harmonic_series(nn))
1-(1/nn)
