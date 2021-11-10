read.csv(file = "data/inflammation-01.csv", header = FALSE)
read.csv(file = "data/inflammation-01.csv")
read.csv(file = "data/commadec.txt", sep = ";", dec = ",")
read.csv2(file = "data/commadec.txt")
weight_kg <- 55
weight_kg
# weight in pounds:
2.2 * weight_kg
weight_kg <- 57.5
# weight in kilograms is now
weight_kg
weight_lb <- 2.2 * weight_kg
# weight in kg...
weight_kg
# ...and in pounds
weight_lb
weight_kg <- 100.0
# weight in kg now...
weight_kg
# ...and weight in pounds still
weight_lb
dat <- read.csv(file = "data/inflammation-01.csv", header = FALSE)
head(dat)
mass <- 47.5
age <- 122
mass <- mass * 2.0
age <- age - 20
class(dat)
dim(dat) #60 rows 40 columns
# first value in dat, row 1, column 1
dat[1, 1]
# middle value in dat, row 30, column 20
dat[30, 20]
dat[c(1, 3, 5), c(10, 20)] #columns 10 and 20 from rows 1, 3, and 5
1:5
3:12
dat[1:4, 1:10] # row 1to4, columns 1to10
dat[5:10, 1:10]
dat[5, ] # All columns from row 5
dat[, 16:18] # All rows from column 16-18
patient_1 <- dat[1, ] # first row, all of the columns
max(patient_1) # max inflammation for patient 1
max(dat[2, ]) # max inflammation for patient 2
min(dat[, 7]) # minimum inflammation on day 7
mean(dat[, 7])
median(dat[, 7])
sd(dat[, 7])
summary(dat[, 1:4])

#to obtain the average inflammation of each patient we will need to calculate the mean of all of the rows (MARGIN = 1) of the data frame.
avg_patient_inflammation <- apply(dat, 1, mean) 
#to obtain the average inflammation of each day we will need to calculate the mean of all of the columns (MARGIN = 2) of the data frame.
avg_day_inflammation <- apply(dat, 2, mean)
avg_patient_inflammation
avg_day_inflammation

animal <- c("m", "o", "n", "k", "e", "y")
# first three characters
animal[1:3]
animal[4:6]

#Subsetting More Data
max(dat[5, 3:7])


#Subsetting and Re-Assignment
?seq
dim(dat)
parentwrong <- seq(2,60,2)
parentwrong
datwrong <- dat[parentwrong,1:5]/2
datwrong
dim(datwrong)

#Using the Apply Function on Patient Data
apply(dat[1:5, ], 1, mean)
apply(dat[, 1:10], 2, mean)
apply(dat[, seq(1, 40, by = 2)], 2, mean)

plot(avg_day_inflammation)
max_day_inflammation <- apply(dat, 2, max)
plot(max_day_inflammation)
min_day_inflammation <- apply(dat, 2, min)
plot(min_day_inflammation)

#Plotting Data
plot(apply(dat,2,sd))
