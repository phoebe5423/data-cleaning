?function_name
help(function_name)
?"<-"
?`<-`
?dput
sessionInfo()
?c
c(1, 2, 3)
c('d', 'e', 'f')
c(1, 2, 'f')
help("paste")
?paste
paste(c("a","b"), "c")
paste(c("a","b"), "c", collapse = "|")
paste(c("a","b"), "c", sep = ",", collapse = "|")
??"read table"
cats <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_string = c(1, 0, 1))
write.csv(x = cats, file = "data/feline-data.csv", row.names = FALSE)
cats <- read.csv(file = "data/feline-data.csv", stringsAsFactors = TRUE)
cats
cats$weight
cats$coat
## Say we discovered that the scale weighs two Kg light:
cats$weight + 2
paste("My cat is", cats$coat)
cats$weight + cats$coat
typeof(cats$weight)
typeof('banana')
file.show("data/feline-data_v2.csv")
my_vector <- vector(length = 3)
my_vector
cats <- data.frame(coat = c("calico", "black", "tabby", "tabby"),
                   weight = c(2.1, 5.0, 3.2, 2.3),
                   likes_string = c(1, 0, 1, 1))
write.csv(x = cats, file = "data/feline-data_v2.csv", row.names = FALSE)
cats <- read.csv(file="data/feline-data_v2.csv", stringsAsFactors = TRUE)
typeof(cats$weight)
class(cats)
cats <- read.csv(file="data/feline-data.csv", stringsAsFactors = TRUE)
my_vector <- vector(length = 3)
my_vector
another_vector <- vector(mode='character', length=3)
another_vector
str(another_vector)
combine_vector <- c(2,6,3)
combine_vector
quiz_vector <- c(2,6,'3')
quiz_vector
coercion_vector <- c('a', TRUE)
coercion_vector
another_coercion_vector <- c(0, TRUE)
another_coercion_vector
cats$likes_string
cats
cats$likes_string <- as.logical(cats$likes_string)
cats$likes_string
ab_vector <- c('a', 'b')
ab_vector
combine_example <- c(ab_vector, 'SWC')
combine_example
mySeries <- 1:10
mySeries
seq(10)
seq(1,10, by=0.1)
sequence_example <- seq(10)
head(sequence_example, n=2)
tail(sequence_example, n=4)
length(sequence_example)
class(sequence_example)
typeof(sequence_example)
my_example <- 5:8
names(my_example) <- c("a", "b", "c", "d")
my_example
x <- (1:26)*2
#x <- x * 2
names(x) <- LETTERS
x
str(cats$weight)
str(cats$likes_string)
str(cats$coat)
names(cats)
names(cats)[2] <- "weight_kg"
cats
coats <- c('tabby', 'tortoiseshell', 'tortoiseshell', 'black', 'tabby')
coats
?read.csv
cats <- read.csv(file="data/feline-data.csv", stringsAsFactors=FALSE)
str(cats$coat)
cats[1]
cats[[1]]
cats$coat
cats["coat"]
cats[1, 1]
cats[, 1]
cats[1, ]
matrix_example <- matrix(0, ncol=6, nrow=3)
matrix_example
class(matrix_example)
x <- matrix(1:50, ncol=5, nrow=10)
x
x <- matrix(1:50, ncol=5, nrow=10, byrow = TRUE) # to fill by row
x
dataTypes <- c('double', 'complex', 'integer', 'character', 'logical')
dataStructures <- c('data.frame', 'vector', 'factor', 'list', 'matrix')
answer <- list(dataTypes, dataStructures)
dataTypes
dataStructures
answer
matrix(c(4, 1, 9, 5, 10, 7), ncol = 2, byrow = TRUE)
matrix(c(4, 1, 9, 5, 10, 7), ncol = 2, byrow = TRUE)
