# EX 1 (10 fold cross)

# require data table 
require(data.table)

# load advertising data 
advertising <- load('Assignment/Advertising.Rdata')
advertising <- as.data.table(advertising)
# randomize order before splitting
advertising <- advertising[sample(1:nrow(advertising)), ]

# 10 fold brah
