# Computing for Data Analysis Using R (Coursera) - Week 4 Programming Assignment
# ==============================================================================

# Read Baltimore Homicides Data File
# -----------------------------------

homicides <- readLines("./data/homicides.txt")

# Part 1: How many of each cause of homicide?
# -------------------------------------------

count <- function(cause = NULL) {
  ## Check that "cause" is non-NULL; else throw error
  
  ## Check that specific "cause" is allowed; else throw error
  
  ## Read "homicides.txt" data file
  homicides <- readLines("./data/homicides.txt")
  
  ## Extract causes of death
  
  ## Return integer containing count of homicides for that cause
  
}
  