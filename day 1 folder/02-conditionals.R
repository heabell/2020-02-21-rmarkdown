f_k = function(f_temp){
  converted <-((f_temp -32))*(5/9)+273.15
  return(converted)
}

k_c = function(k_temp) {
  return(k_temp - 273.15)
}

f_c = function(f_temp){
  k_temp <- f_k(f_temp)
  c_temp <- k_c (k_temp)
  return(c_temp)
}

k_c = function(k_temp) {
  if(k_temp <0 ) {
    warning("You passed in a negative kelvin number")
    return(NA)
  }
  return(k_temp - 273.15)
}

k_c(-100)

k_c = function(k_temp) {
  if(k_temp <0 ) {
    warning("You passed in a negative kelvin number")
    return(NA)
  } else {
  return(k_temp - 273.15)
  }
}

k_c = function(k_temp) {
  if(is.na(k_temp) ) {
    return(NA)
  }else if(k_temp <0){
    warning("You passed in a negative kelvin number")
    return(NA)
  } else {
    return(k_temp - 273.15)
  }
}

if(all(c(TRUE,TRUE,TRUE))){
  print("hello")
}

c(TRUE,FALSE) == c(TRUE,FALSE)

identical(c(TRUE,FALSE),c(TRUE,FALSE))

#0 is 0.00000 
#0L is 0

#&|
#&&||
#guarente a single value back
# & both need to be true
# | one or another


#Write a function fizzbuzz
#takes a single value
#divisible 3 "fizz"
#divisible 5 "buzz"
#divisible 3 AND 5 "fizzbuzz"
# %% returns the remainder
fizzbuzz = function(x){
  if((x %% 3)==0) {
    return("fizz")
  } else if ((x %% 5)==0) {
    return("buzz")
  } else if ((x %% 3)==0 & (x%%5)==0){
    return("fizzbuzz")
  } else {
    return(NA)
  }
}


fizzbuzz = function(x){
  if ((x %% 3)==0 & (x%%5)==0){
    return("fizzbuzz")
  } else if((x %% 3)==0) {
    return("fizz")
  } else if ((x %% 5)==0) {
    return("buzz")
  } else {
    return(as.character(x))
  }
}

fizzbuzz(7)

fizzbuzz_vec = function(x){
  dplyr::case_when(
    (x %% 3)==0 & (x %% 5)==0 ~ "fizzbuzz",
    (x %% 3)==0 ~ "fizz",
    (x %% 5)==0 ~ "buzz",
    TRUE ~ as.character(x))
}

fizzbuzz_vec(15)
fizzbuzz_vec(5:12)

#[(x)] Give me x value of that expresion

my_expr = ~ 3+3

my_expr[(1)]
my_expr[(2)]

describe_temp <- function(temp) {
  if (temp <= 0){
    "freezing"
  }else if(temp <= 10){
    "cold"
  } else if(temp <= 20){
    "cool"
  } else if (temp <=30){
    "warm"
  }else {
    "hot"
  }
}

describe_temp(16)

values <- 24

cut(values,
    c(-Inf,0,10,20,30,Inf),
    labels = c("freezing","cold","cool","warm","hot"),
    right = TRUE)