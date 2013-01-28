agecount <- function(age = NULL) {
  ## Check that "age" is non-NULL; else throw error
  if (is.null(age)){
    stop("The argument 'age' must be non-NULL.")
  }  
  
  ## Read "homicides.txt" data file
  homicides <- readLines("../data/homicides.txt")
  
  ## Extract ages of victims; ignore records where no age is
  ## given
  age.pre1 <- regexpr("[male,|female,](.*?)years old</dd>", homicides)
  
  age.pre2 <- regmatches(homicides, age.pre1)
  
  ## age <- gsub("[male,|female,] | years old</dd>", "", age.pre2)
  age <- gsub("[0-9][0-9] | years old</dd>", "", age.pre2)
  
  ## Return integer containing count of homicides for that age
  
}