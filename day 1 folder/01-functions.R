# k = ((f -32))*(5/9)+273.15

((212 -32))*(5/9)+273.15

f_k = function(f_temp){
  converted <-((f_temp -32))*(5/9)+273.15
  return(converted)
}

f_k(32)

f_k(212)

library(testthat)

expect_equal(f_k(32),273.15)

expect_equal(nrow(cars),50)

k_c = function(k_temp) {
  return(k_temp - 273.15)
}

k_c(0)

f_c = function(f_temp){
  k_temp <- f_k(f_temp)
  c_temp <- k_c (k_temp)
  return(c_temp)
}

f_c(32)
f_c(212)



# function 2 vectors
#vector, x, values
# vector, w, weghts
# sum (x*w)/ sum(w)
#f(1:6,1:6)
#

wt_av = function(x,w){
  return(sum(x*w)/sum(w))
}

wt_av(1:6,1:6)

wt_av = function(x,w){
  if (length(x)!= length(w)) {
    stop("x and w should be the same length")
  }
  return(sum(x*w)/sum(w))
}

wt_av(1:6,1:6)
wt_av(1:6,1:3)

sum_3 = function(x,y,...,z) {
  return(x+y+z)
}
sum_3(1,2,3)
sum_3(1,2,z=3)