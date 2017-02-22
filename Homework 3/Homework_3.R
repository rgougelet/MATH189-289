setwd("C:\\Users\\Rob\\Documents\\MATH189-289\\Homework 3")
data <- read.table("hcmv.txt", header = TRUE)
Location <- data$location
hist(Location, main="Palindromes on DNA sequence", breaks = 50)
hist(Location, main="Palindromes on DNA sequence", breaks = 100)
hist(Location, main="Palindromes on DNA sequence", breaks = 200)


library(lattice)
stripplot(Location, main="Occurrence of Palindromes on DNA sequence", pch=16, cex=0.25)


# Distances ---------------------------------------------------------------
Distance <- diff(data$location)
hist(Distance, main="Distance Between Palindromes on DNA Sequence", prob=TRUE, breaks = 50)
lines(density(Distance), col="blue", lwd=2)

# Simulate ------------------------------------
N <- 200000
n <- 300
IntLocations <- seq(1, N)
UniformSimulated <- sample.int(N, size=n) #Uniform
stripplot(UniformSimulated,main="Occurrence of Palindromes on DNA sequence", pch=16, cex=0.25)

library(lattice)
ZLocations <- seq(-3, 3, length.out=N)
NormalSimulated <- sample.int(N, size=n, prob=dnorm(ZLocations))
stripplot(NormalSimulated,main="Occurrence of Palindromes on DNA sequence", pch=16, cex=0.25)

DoubleLocations <- sample.int(N, size=30)
Weights <- rep(0.5, N)
Weights[DoubleLocations] <- Weights[DoubleLocations] + 0.5
DoubleSimulated <- sample.int(N, size=n, prob=Weights)


regionsplit <- function(data,nBreaks,nSamples,){ #number of regions, reference sequence, simulated sequence
	IntBreaks <- seq(1, length(IntLocations), length.out=nBreaks)
	as.vector(table(cut(DoubleSimulated,breaks=IntBreaks, include.lowest = TRUE)))
	return()
}

regionsplit(n, IntLocations, UniformSimulated)
regionsplit(10, IntLocations, NormalSimulated)
regionsplit(11, IntLocations, DoubleSimulated)
nBreaks = 50
nSamples = N
IntBreaks <- seq(1, length(IntLocations), length.out=nBreaks)
as.vector(table(cut(DoubleSimulated,breaks=IntBreaks, include.lowest = TRUE)))
