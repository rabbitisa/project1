pollutantmean <- function(directory, pollutant, id=1:322){
  if(directory!="specdata"){
    break
  }
  files <- list.files(directory,full.names=TRUE)
  #define pollutant as empty
  pollutant_data <- data.frame()
  #decide which column of data to use
 if(pollutant=="sulfate"){
   x <- 2
 }else
  {
    x <- 3
  }
  #combine files
   for (i in id){
     pollutant_data <- rbind(pollutant_data, read.csv(files[i]))
   }
  #find mean
  mean_pollutant <- mean(pollutant_data[,x],na.rm=TRUE)
}
