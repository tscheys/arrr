# require dependencies
require(data.table)

name <- as.character(c("tim", 'symoens', 'maesie'))
age <- as.integer(c('23', '23', '23'))

#combine these 2 into a data frame/data table/matrix 
table <- data.table(name, age)
print(table)

# read in the subscription data 
## fread figures this stuff out for you 
subs <- fread("Introduction_to_R/subscriptions.txt")

# tell r in what format the dates will be 
f <- '%d/%m/%Y'
setClass('fDate')
setAs(from="character",to="fDate", def=function(from) as.Date(from, format=f))

start_ind <- as.Date('02/01/2006', f)
end_ind <- as.Date('01/06/2009', f)
start_dep <- as.Date('02/06/2009', f)
end_dep <- as.Date('02/06/2010', f) #dump date

ActiveCustomerID <- unique(subscriptions[subscriptions$StartDate <= end_ind & 
                                           subscriptions$EndDate  > start_dep & 
                                           subscriptions$EndDate  <= end_dep ,"CustomerID"])

ActiveCustomerID <- unique(ActiveCustomerID)






