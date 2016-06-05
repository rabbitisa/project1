complete <- function(directory, id = 1:332){
    if(directory!="specdata")
      {
    break
    }
  #read files
  files <- list.files(directory,full.names=TRUE) 
  #count completed case in each file listed in id
  n <-length(id)
  complete_file <-c(n)
  count <- 0
  for (i in id){
    count <- count+1
    data_i <- read.csv(files[i])
       complete_file[count] <- nrow(data_i)-max(sum(is.na(data_i[,2])),sum(is.na(data_i[,3])))
  }
  complete_data <- data.frame(id = c(id), nobs = complete_file)
  }