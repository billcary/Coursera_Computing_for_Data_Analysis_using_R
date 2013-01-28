# Computing for Data Analysis Using R (Coursera) - Week 4 Programming Assignment
# ==============================================================================

# Read Baltimore Homicides Data File
# -----------------------------------

homicides <- readLines("./data/homicides.txt")

# Part 1: How many of each cause of homicide?
# -------------------------------------------

count <- function(cause = NULL) {
  ## Check that "cause" is non-NULL; else throw error
  if (cause == NULL){
    stop("The argument 'cause' must be non-NULL.")
  }
  
  ## Check that specific "cause" is allowed; else throw error
  allowable.causes <- c("asphyxiation", "blunt force", "other", "shooting", "stabbing", "unknown")
  if (tolower(cause) %!in% allowable.causes){
    stop("The value specified for 'cause' is not valid.")
  }

  ## Read "homicides.txt" data file
  homicides <- readLines("./data/homicides.txt")
  
  ## Extract causes of death
  ## In homicides.txt, we want to extract the cause of death. The cause is listed in the file
  ## in the following format: <dd>Cause: shooting</dd>
  
  cause.of.death.pre1 <- regexpr("<dd>[C|c]ause:(.*?)</dd>", homicides)
  
  cause.of.death.pre2 <- regmatches(homicides, cause.of.death.pre1)
  
  cause.of.death <- gsub("<dd>[C|c]ause: |</dd>", "", cause.of.death.pre2)
  
  ## Convert all cause.of.death entries to lower case to facilitate case insensitive matching
  cause.of.death <- tolower(cause.of.death)
  
  ## Return integer containing count of homicides for that cause
  sum(cause.of.death == tolower(cause))
  
}
  