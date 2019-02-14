# Load the package required to read JSON files.
library("rjson")

# Give the input file name to the function.
result <- fromJSON(file = "input.json")

cb <-data.frame(matrix(0,nrow = 43, ncol = 4))
for (i in seq (1, length(result$features))){
  cb[i,1] <- result$features[[i]]$properties$state
  cb[i,2] <-result$features[[i]]$geometry$coordinates[1]
  cb[i,3] <- result$features[[i]]$geometry$coordinates[2]
  cb[i,4] <-result$features[[i]]$properties$siteid
}

colnames(cb) <- c( 'State', 'dec_long', 'dec_lat','GageID')
#State	dec_long	dec_lat	GageID

write.csv (cb , 'sitesToCheck.csv', row.names = F )
