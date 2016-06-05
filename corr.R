corr <-function(directory, threshold = 0){
  data_frame <- complete(directory)
  data_threshold <- which(data_frame$nobs>threshold)
  files <- list.files(directory,full.names=TRUE)
  correlation <- c()
  increment <- 0
  if (length(data_threshold == 0))
  {
    correlation
  }
  for (i in data_threshold)
  {
    increment <- increment + 1
    corr_data <- na.omit(read.csv(files[i]))
    correlation[increment] <-cor(corr_data[,2],corr_data[,3])
  }
  correlation
}