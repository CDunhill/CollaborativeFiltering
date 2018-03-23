
require (tidyr)
require (dplyr)

table <- read.csv("C:/Users/chris.dunhill/Documents/R and TERR/GitHub Repos/CollaborativeFiltering/flatfile.csv")

# Transpose rows to columns - easy with tidyr!
table <- spread (table,Product,Sale)

# Rename pesky column name (although we're going to drop it in a minute anyway)
colnames(table)[colnames(table)=="ï..CustId"] <- "CustId"

# Convert NAs to zeroes

table[is.na(table)]<-0

table <- (table[,!(names(table) %in% c("CustId"))])


