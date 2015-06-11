runScript <- function(path)
{
  path<- "/home/qubit93/aman/wd_r/getting_cleaning_data/digits";
  setwd(trainPath);
  
  #loading the dataset on memory in the form of a table
  featureTrainData <- read.csv("train.csv",header = TRUE)
  cols <- ncol(featureTrainData)
  ##testing - featureTrainData[1:12,1:2]
  XTrain <- featureTrainData[,2:cols]
  yTrain <- featureTrainData[,1]
  
  dimensionsX <- dim(XTrain)
  m <- dimensionsX[1]
  n <- dimensionsX[2]
  
  bias <- rep(1,m)
  
  XTrain$new.col <- bias
  
  ##initial parameters
  initialTheta <- rep(0,n+1)
  
  
}