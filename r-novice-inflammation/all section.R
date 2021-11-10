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


#Creating Functions
fahrenheit_to_celsius <- function(temp_F) {
  temp_C <- (temp_F - 32) * 5 / 9
  return(temp_C)
}
fahrenheit_to_celsius(32)
fahrenheit_to_celsius(212)
celsius_to_kelvin <- function(temp_C) {
  temp_K <- temp_C + 273.15
  return(temp_K)
}
celsius_to_kelvin(0)
fahrenheit_to_kelvin <- function(temp_F) {
  temp_C <- fahrenheit_to_celsius(temp_F)
  temp_K <- celsius_to_kelvin(temp_C)
  return(temp_K)
}

# freezing point of water in Kelvin
fahrenheit_to_kelvin(32.0)
# freezing point of water in Fahrenheit
celsius_to_kelvin(fahrenheit_to_celsius(32.0))

#Create a Function
best_practice <- c("Write", "programs", "for", "people", "not", "computers")
asterisk <- "***" 
highlight <- function(best_practice, asterisk){
  return(c(asterisk, best_practice, asterisk))
}
highlight(best_practice, asterisk)

dry_principle <- c("Don't", "repeat", "yourself", "or", "others")
edges <- function(word){
  return(c(word[1], word[length(word)]))
}
edges(dry_principle)

#Named Variables and the Scope of Variables
input_1 <- 20
mySum <- function(input_1, input_2 = 10) {
  output <- input_1 + input_2
  return(output)
}
mySum(input_1 = 1, 3) #4
mySum(3) #input_2 default=10 + input=3

center <- function(data, midpoint) {
  new_data <- (data - mean(data)) + midpoint
  return(new_data)
}
z <- c(0, 0, 0, 0)
z
center(z, 3)
dat <- read.csv(file = "data/inflammation-01.csv", header = FALSE)
centered <- center(dat[, 4], 0)
head(centered)
mean(dat[, 4]) # original mean
mean(centered)
sd(dat[, 4]) # original standard deviation
sd(centered)

all.equal(sd(dat[, 4]), sd(centered))

# new data object and set one value in column 4 to NA
datNA <- dat
datNA[10,4] <- NA

# returns all NA values
center(datNA[,4], 0)

center <- function(data, midpoint) {
  new_data <- (data - mean(data, na.rm=TRUE)) + midpoint
  return(new_data)
}

center(datNA[,4], 0)

datNA[,1] <- as.factor(datNA[,1])
datNA[,2] <- as.character(datNA[,2])
center(datNA[,1], 0)
center(datNA[,2], 0)

center <- function(data, midpoint) {
  # return a new vector containing the original data centered around the
  # midpoint.
  # Example: center(c(1, 2, 3), 0) => c(-1, 0, 1)
  new_data <- (data - mean(data)) + midpoint
  return(new_data)
}

analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}

rescale <- function(v) {
  #L=min, H=max
  #rescale value should be (v-L) / (H-L)
  L <- min(v)
  H <- max(v)
  result <- (v - L) / (H - L)
  return(result)
}

dat <- read.csv("data/inflammation-01.csv", FALSE)
dat <- read.csv(header = FALSE, file = "data/inflammation-01.csv")
dat <- read.csv(FALSE, "data/inflammation-01.csv")

center <- function(data, midpoint = 0) {
  # return a new vector containing the original data centered around the
  # midpoint (0 by default).
  # Example: center(c(1, 2, 3), 0) => c(-1, 0, 1)
  new_data <- (data - mean(data)) + midpoint
  return(new_data)
}
test_data <- c(0, 0, 0, 0)
center(test_data, 3)
more_data <- 5 + test_data
more_data
center(more_data)

display <- function(a = 1, b = 2, c = 3) {
  result <- c(a, b, c)
  names(result) <- c("a", "b", "c")  # This names each element of the vector
  return(result)
}

display()
display(55)
display(55, 66)
display(55, 66, 77)
display(c = 77) # only setting the value of c

?read.csv

#A Function with Default Argument Values
rescale <- function(v, min=0, max=1) {
  #L=min, H=max
  #rescale value should be (v-L) / (H-L)
  L <- min(v)
  H <- max(v)
  result <- (v - L) / (H - L)*(max-min)+min
  return(result)
}


###Analyzing Multiple Data Sets
analyze <- function(filename) {
  # Plots the average, min, and max inflammation over time.
  # Input is character string of a csv file.
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}

analyze("data/inflammation-01.csv")

best_practice <- c("Let", "the", "computer", "do", "the", "work")
print_words <- function(sentence) {
  print(sentence[1])
  print(sentence[2])
  print(sentence[3])
  print(sentence[4])
  print(sentence[5])
  print(sentence[6])
}
print_words(best_practice)

best_practice[-4:-6]
print_words <- function(sentence) {
  for (word in sentence) {
    print(word)
  }
}
print_words(best_practice)

len <- 0
vowels <- c("a", "e", "i", "o", "u")
for (v in vowels) {
  len <- len + 1
}
len # Number of vowels

letter <- "z"
for (letter in c("a", "b", "c")) {
  print(letter)
}
letter
seq(3)

#Printing Numbers
print_N <- function(N) {
  nseq <- seq(N)
  for (num in nseq) {
    print(num)
  }
}
print_N(3)

#Summing Values
ex_vec <- c(4, 8, 15, 16, 23, 42)
total <- function(n){
  sum <- 0
  for (i in n){
    sum <- sum+i
  }
  return(sum)
}
total(ex_vec)

2^4

#Exponentiation
expo <- function(n,m){
  e <- 1
  for (i in seq(m)){
    e <- e*n
  }
  return(e)
}
expo(2, 4)

list.files(path = "data", pattern = "csv")
list.files(path = "data", pattern = "inflammation")
list.files(path = "data", pattern = "csv", full.names = TRUE)
filenames <- list.files(path = "data",  
                        # Now follows a regular expression that matches:
                        pattern = "inflammation-[0-9]{2}.csv",
                        #          |            |        the standard file extension of comma-separated values
                        #          |            the variable parts (two digits, each between 0 and 9)
                        #          the static part of the filenames
                        full.names = TRUE)
filenames <- filenames[1:3]
for (f in filenames) {
  print(f)
  analyze(f)
}

#Using Loops to Analyze Multiple Files
analyze_all <- function(fpath = "data", fpattern){
  filenames <- list.files(path = fpath, pattern = fpattern, full.names = TRUE)
  for (i in filenames){
    analyze(i)
  }
}
 
### Making Choices
#Choosing Plots Based on Data
dat <- read.csv("data/inflammation-01.csv", header = FALSE)
plot_dist <- function(dat, threshold){
    if (length(dat)> threshold) {
      boxplot(dat)
    } else {
      stripchart(dat)
    }
}
plot_dist(dat[, 10], threshold = 10)
plot_dist(dat[1:5, 10], threshold = 10)

#Histograms Instead
plot_dist <- function(dat, threshold, use_boxplot = TRUE) {
  if (length(dat)> threshold && use_boxplot) {
    boxplot(dat)
  } else if (length(dat)> threshold && !use_boxplot) {
    hist(dat)
  } else {
    stripchart(dat)
  }
}
plot_dist(dat[1:5, 10], threshold = 10)  
plot_dist(dat[, 10], threshold = 10, use_boxplot = FALSE)
plot_dist(dat[, 10], threshold = 10, use_boxplot = TRUE)

#Find the Maximum Inflammation Score
filenames <- list.files(path = "data", pattern = "inflammation-[0-9]{2}.csv", full.names = TRUE)
filename_max <- "" # filename where the maximum average inflammation patient is found
patient_max <- 0 # index (row number) for this patient in this file
average_inf_max <- 0 # value of the average inflammation score for this patient
for (f in filenames) {
  dat <- read.csv(file = f, header = FALSE)
  dat.means <- apply(dat, 1, mean)
  for (patient_index in 1:length(dat.means)){
    patient_average_inf <- dat.means[patient_index]
    if (patient_average_inf > average_inf_max) {
      average_inf_max <- patient_average_inf
      filename_max <- f
      patient_max <- patient_index
    }
  }
}
print(filename_max)
print(patient_max)
print(average_inf_max)


analyze <- function(filename, output = NULL) {
  # Plots the average, min, and max inflammation over time.
  # Input:
  #    filename: character string of a csv file
  #    output: character string of pdf file for saving
  if (!is.null(output)) {
    pdf(output)
  }
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
  if (!is.null(output)) {
    dev.off()
  }
}
dir.create("results")
analyze("data/inflammation-01.csv", output = "results/inflammation-01.pdf")

#Changing the Behavior of the Plot Command
?plot
analyze <- function(filename, output = NULL) {
  # Plots the average, min, and max inflammation over time.
  # Input:
  #    filename: character string of a csv file
  #    output: character string of pdf file for saving
  if (!is.null(output)) {
    pdf(output)
  }
  dat <- read.csv(file = filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation, type = "l")
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation, type = "l")
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation, type = "l")
  if (!is.null(output)) {
    dev.off()
  }
}


###Dynamic Reports with knitr
install.packages("knitr")

###Making Packages in R
install.packages(c("devtools", "roxygen2"))  # installations can be `combined
library("devtools")
library("roxygen2")
getwd()
setwd("C:/Users/p5423/Desktop/code/school/data-cleaning/r-novice-inflammation")
create_package("tempConvert")

setwd("./tempConvert")
document()

setwd("..")
getwd()
install("tempConvert")

?fahrenheit_to_kelvin
search()
fahrenheit_to_celsius(32)
celsius_to_kelvin(-273.15)
fahrenheit_to_kelvin(-459.67)

#Creating a Package for Distribution
getwd()
setwd("C:/Users/p5423/Desktop/code/school/data-cleaning/r-novice-inflammation")
create_package("analyze")
setwd("./analyze")
document()
setwd("..")
install("analyze")
?analyze


### addressing data
dat <- read.csv(file = 'data/sample.csv', header = TRUE, stringsAsFactors = FALSE)
class(dat)
str(dat)
head(dat)
dat[1, 1]
dat[, 2]
6:9
dat[, 6:9]
dat[1:5, c(5, 2)]
colnames(dat)
dat$Gender
class(dat$Gender)
class(dat$BloodPressure)
head(dat[, c('Age', 'Gender')])
rownames(dat)
dat2 <- read.csv(file = 'data/sample.csv', header = TRUE, stringsAsFactors = FALSE, row.names=1)
dat
dat2
rownames(dat2)
dat2["Sub072", ]
dat2[c("Sub009", "Sub072"), ]
c(TRUE, TRUE, FALSE, FALSE, TRUE)
x <- c(1, 2, 3, 11, 12, 13)
x < 10
x %in% 1:10
index <- dat$Group == 'Control'
index
dat[index,]
dat[index,]$BloodPressure
plot(dat[dat$Group == 'Control', ]$BloodPressure)

#Using Logical Indexes
plot(dat[dat$Group != 'Control', ]$BloodPressure)

x <- c(1, 2, 3, 11, 12, 13)
x[x < 10] <- 0
x

#Updating a Subset of Values
dat$Gender
dat
dat[dat$Gender == 'M',] <- "m"
dat[dat$Gender == 'F',] <- "f"


###Reading and Writing CSV Files
# Import the data and look at the first six rows
carSpeeds <- read.csv(file = 'data/car-speeds.csv')
head(carSpeeds)
carSpeeds[1, ]
# Here we will use R's `ifelse` function, in which we provide the test phrase,
# the outcome if the result of the test is 'TRUE', and the outcome if the
# result is 'FALSE'. We will also assign the results to the Color column,
# using '<-'
carSpeeds <- read.csv(file = 'data/car-speeds.csv', stringsAsFactors = TRUE)
carSpeeds
carSpeeds$Color <- ifelse(carSpeeds$Color == 'Blue', 'Green', carSpeeds$Color)
#if car is blue, then turn it to green; if not, keep it original
carSpeeds$Color

carSpeeds <- read.csv(file = 'data/car-speeds.csv', stringsAsFactors = TRUE)
carSpeeds
str(carSpeeds)
carSpeeds$Color <- ifelse(carSpeeds$Color == 'Blue', 'Green', carSpeeds$Color)
carSpeeds$Color

carSpeeds <- read.csv(file = 'data/car-speeds.csv', as.is = 1)
carSpeeds
str(carSpeeds)
carSpeeds$Color <- ifelse(carSpeeds$Color == 'Blue', 'Green', carSpeeds$Color)
carSpeeds$Color
carSpeeds$State <- ifelse(carSpeeds$State == 'Arizona', 'Ohio', carSpeeds$State)
carSpeeds$State

#Updating Values in a Factor
carSpeeds <- read.csv(file = 'data/car-speeds.csv')
str(carSpeeds)
carSpeeds$Color <- ifelse(as.character(carSpeeds$Color) == 'Blue',
                          'Green',
                          as.character(carSpeeds$Color))
str(carSpeeds)
# Convert colors back to factors
carSpeeds$Color <- as.factor(carSpeeds$Color)
str(carSpeeds)

unique(carSpeeds$Color)
carSpeeds <- read.csv(
  file = 'data/car-speeds.csv',
  stringsAsFactors = FALSE, 
  strip.white = TRUE,
  sep = ','
)
unique(carSpeeds$Color)

#Specify Missing Data When Loading
?read.csv
read.csv(
  file = 'data/car-speeds.csv',
  na.strings = c("Black", "Blue")
)

write.csv(carSpeeds, file = 'data/car-speeds-cleaned.csv')
write.csv(carSpeeds, file = 'data/car-speeds-cleaned2.csv', row.names = FALSE)
carSpeeds$Speed[3] <- NA
head(carSpeeds)
write.csv(carSpeeds, file = 'data/car-speeds-cleaned3.csv', row.names = FALSE)
write.csv(carSpeeds,
          file = 'data/car-speeds-cleaned4.csv',
          row.names = FALSE,
          na = '-9999')
