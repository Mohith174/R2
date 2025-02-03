library(rpart)
help(stagec)

#part A
## loads data of stagec into data
data("stagec") 
str(stagec)

tb = table(stagec$pgstat) #pulls in pgstat function from stagec and makes a 1-way table
print(tb)

tb2 = table(stagec$pgstat, stagec$gleason) #pulls pgstat and gleason systems to make a 2-way table
print(tb2) 

#part B
subSet = subset(stagec, gleason > 6)

#part C (subset of the pgstat and gleason)
##One way table on the subset
subTB1 = table(subSet$pgstat)
print(subTB1)


subTB2 = table(subSet$pgstat, subSet$gleason)
print(subTB2)


