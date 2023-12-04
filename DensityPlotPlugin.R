library(AppliedPredictiveModeling)
transparentTheme(trans = .4)
library(caret)

input <- function(inputfile) {
   myData <<- read.csv(inputfile)
}

run <- function() {}

output <- function(outputfile) {
transparentTheme(trans = .9)
featurePlot(x = myData[, 1:4], 
            y = myData$Species,
            plot = "density", 
            ## Pass in options to xyplot() to 
            ## make it prettier
            scales = list(x = list(relation="free"), 
                          y = list(relation="free")), 
            adjust = 1.5, 
            pch = "|", 
            layout = c(4, 1), 
            auto.key = list(columns = 3))

ggsave(
  outputfile
)

}
