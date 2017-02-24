### Math 189 hw 3 palindromes in DNA --------------------------------
setwd("/Users/sidneybrowne/desktop/math 189/data/hw 3")
data <- read.table("hcmv.txt", header = TRUE)

library(lattice)

## hw 3: palindromes in dna -----------------------------------------
# use graphical display and more formal stats methods to investigate 
# the counts of palindromes in various regions of the dna.
# split the dna into non-overlapping intervals of equal lengthto compare 
# the number of observed palindromes to the number of expected palindromes.
# consider classifying regions according to thir count number.

set.seed(1994)
N <- 229354
n <- 296
n.breaks = 50
gene <- seq(1,N)

## Visually checking the data and a simulation of the model

# simulated dna strand, uniform dist palindromes.
palindrome.sim <- sample.int(N, size = n)
palindrome.sim <- sort(palindrome.sim, decreasing = FALSE)
stripplot(palindrome.sim, pch = 15, cex = .25, xlab = "base pair index",
          main = "simulated uniformly distributed palindromes")
hist(palindrome.sim, breaks = n.breaks, probability = TRUE, xlab = "base pair index",
     main = "Histogram of simulated uniformly distributed palindromes" )

# the actual dna strand
dna <- as.numeric(data$location)
stripplot(dna, pch = 15, cex = .25, xlab = "base pair index",
          main = "palindrome locations in CMV dna")
hist(dna, breaks = n.breaks, probability = TRUE, xlab = "base pair index",
     main = "Histogram of palindrome locations in CMV dna")

## testing the model assumption: homogenous poisson process
# how many intervals havbe a specific count

## cuts dna strand into non overlapping intervals 
# and returns a table which is chi^2 test friendly
chisqtable <- function(n.region, site, N){
  n <- length(site)
  # lambda estimate
  lambda.est <- n/n.region
  # cut into n.region number of non-overlapping intervals
  count.int <- table(cut(site, breaks = seq(1, length(gene), length.out=n.region+1), include.lowest=TRUE))
  # get the count levels range
  count.vector <- as.vector(count.int)
  count.range <- max(count.vector) - min(count.vector) + 1
  
  # create contingency table
  table <- matrix(rep(NA, count.range*3), count.range, 3)
  for (i in 1:count.range){
    offset <- min(count.vector) - 1
    # first column = count level
    table[i, 1] <- i + offset
    # second column = observed count
    table[i, 2] <- sum(count.vector == i + offset)
    # third column = expected count
    if ((i + offset == min(count.vector)) && (min(count.vector) != 0))
      table[i, 3] <- ppois(i+offset, lambda.est)*n.region
    else if (i + offset == max(count.vector))
      table[i, 3] <- 1 - ppois(i + offset - 1, lambda.est)
    else
      table[i, 3] <- (ppois(i+offset, lambda.est) - ppois(i + offset - 1, lambda.est))*n.region
  }
  
  return (table)
}

dna.chisq.table.temp <- chisqtable(n.breaks, dna, N)
# need to combine some bins
dna.chisq.table <- matrix(rep(NA, 7*2), 7, 2)
dna.chisq.table[1,]<- colSums(dna.chisq.table.temp[1:4, 2:3])
dna.chisq.table[2:6,] <- dna.chisq.table.temp[5:9, 2:3]
dna.chisq.table[7,] <- colSums(dna.chisq.table.temp[10:16, 2:3])

# compute the chi^2 stat, and its p-value
cutoff <- qchisq(.95, df = 5)
dna.chisq.statistic <- sum((dna.chisq.table[,1] - dna.chisq.table[,2])^2/dna.chisq.table[,2])
p.value <- pchisq(dna.chisq.statistic, df = 7-2, lower.tail = FALSE)
# the homogenous poisson process is a good model for the data

## interval by interval approach:
# cut dna strand into non overlapping intervals and record the number of palindromes in each interval
# do a chi^2 test comparing the observed number of palindromes in each interval to the expected number of palindromes in each interval
# do a residual plot to see where the lack of fit is between dna and expected
# do a hypothesis test to see if the count for bad fit intervals really is different from the expected

## cut the dna strands into non-overlapping intervals
# n.breaks is the number of breaks
# gene is the sequence of base pair indicies
# strand is the dna strand to be cut 
regionsplit <- function(n.breaks, gene, strand){
  int.breaks <- seq(1, length(gene), length.out=n.breaks+1)
  count.int <- table(cut(strand, breaks = int.breaks, include.lowest = TRUE))
  count.vector <- as.vector(count.int)
  return(count.vector)
}

dna.split <- regionsplit(50, gene, dna)

# checking model assumption using the empirical estimate for lamda
infinimatesimal.lamda <- n/N
n.breaks = 50
interval.length <- N/n.breaks
interval.lamda <- infinimatesimal.lamda*interval.length

test.stat <- sum((dna.split - interval.lamda)^2/interval.lamda)
df = n.breaks-1 # only estimated lamda
chisq.cutoff <- qchisq(.95, df)
# true: fail to reject H_0: the data follow the model
# false: reject H_0 in favor of H_1
p.value <- pchisq(test.stat, df, lower.tail = FALSE)
# we fail to reject our model assumption, but just barely. 
# Now we look where our model fails to fit well with the residuals

# check residuals for lack of fit
residuals <- (dna.split - interval.lamda)/sqrt(interval.lamda)
plot(residuals, type = 'h', ylab = "standardized residuals",  xlab = "interval index",
     main = "standardized residuals for each interval")

# the biggest residual is at interval number 21, and has 15 palindromes
# the starting and ending base pairs for this interval are 96329, 100916
index <- which.max(residuals)
max.residual <- max(residuals)
max.count <- dna.split[21]

# do some kind of hoypthesis test
# H_0: interval 21's count = 5.92
# H_1: interval 21's count > 5.92
std.dev <- sd(dna.split)
# may not be the best choice of sd 
test.stat <- (max.count - interval.lamda)/(std.dev/sqrt(n.breaks))
alpha <- .05
# df = n.breaks - 1(est lamda) - 1(est sd)
critical.value <- qt(1-alpha, n.breaks - 2)
p.value <- pt(test.stat, df = n.breaks - 2, lower.tail = FALSE)
# clearly we reject the null in favor of the alt that the number of palindromes is unusually large in interval 21  

# other large (>3 only 21, >2 21 & 43) residuals
# the starting and ending base pairs for this interval are 197244, 201832
large.residual.index <- which(residuals > 2.5)
second.max.residual <- residuals[43]
second.largest.count <- dna.split[43]

# do some kind of hoypthesis test
# H_0: interval 43's count = 5.92
# H_1: interval 43's count > 5.92
test.stat <- (second.largest.count - interval.lamda)/(std.dev/sqrt(n.breaks))
alpha <- .05
# df = n.breaks - 1(est lamda) - 1(est sd)
critical.value <- qt(1-alpha, df = n.breaks-2)
p.value <- pt(test.stat, df = n.breaks - 2, lower.tail = FALSE)
# again, we reject the null in favor of the alt, the number of palindromes in interval 43 is unusually large
