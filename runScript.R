
cost <- function(theta)
{
  source("sigmoid.R")
  m <- nrow(X)
  g <- sigmoid(X%*%theta)
  J <- (1/m)*sum((-y*log(g)) - ((1-y)*log(1-g)))
  return(J)
}

runScript <- function(path)
{
  path<- "/home/qubit93/aman/wd_r/getting_cleaning_data/github_digits/zimmerclancyqubit";
  setwd(path);
  
  #loading the dataset on memory in the form of a table
  trainPath <- paste(path,"/digits",sep="")
  setwd(trainPath)
  dataDF <- read.csv("train.csv",header = TRUE)
  setwd(path)
  cols <- ncol(dataDF)
  ##testing - dataDF[1:12,1:2]
  XTrain <- dataDF[,2:cols]
  yTrain <- dataDF$label
  
  dimensionsX <- dim(XTrain)
  m <- dimensionsX[1]
  n <- dimensionsX[2]
  
  bias <- rep(1,m)
  XTrain <- cbind(bias,XTrain)
  
  #converting to matrices
  X <- as.matrix(XTrain)
  y <- as.matrix(yTrain)
  
  #source("cost.R")
  #source("sigmoid.R")
  ##initial parameters
  initialTheta <- rep(0,n+1)
  cost(initialTheta)
  
  # running optimization algo
  thetaOptim <- optim(par=initialTheta,fn=cost)
  #setting theta
  theta <- thetaOptim$par
  #cost at optimal value of the theta
  thetaOptim$value
}

runScript("")
