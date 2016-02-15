# require dependencies
require(data.table)

name <- as.character("tim", 'symoens', 'maesie')
age <- as.integer('23', '23', '23')

#combine these 2 into a data frame/data table/matrix 
table <- data.table(name, age)
print(table)

# read in the subscription data 
## fread figures this stuff out for you 
subs <- fread("Introduction_to_R/subscriptions.txt")

# tell r in what format the dates will be 
f <- '%d/%m/%Y'

start_ind <- as.Date('02/01/2006', f)
end_ind <- as.Date('01/06/2009', f)
start_dep <- as.Date('02/06/2009', f)
end_dep <- as.Date('02/06/2010', f) #dump date

