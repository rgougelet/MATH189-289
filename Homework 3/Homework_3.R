setwd("C:\\Users\\Rob\\Documents\\MATH189-289\\Homework 3")
data <- read.table("hcmv.txt", header = TRUE)
Location <- data$location

# Scenario 2 - Location -------------------------------------------------
hist(Location, main="Location of Palindromes on CMV DNA", prob=TRUE, breaks = 50)
lines(density(Location), col="blue", lwd=2)
hist(Location, main="Location of Palindromes on CMV DNA", prob=TRUE, breaks = 100)
lines(density(Location), col="blue", lwd=2)
hist(Location, main="Location of Palindromes on CMV DNA", prob=TRUE, breaks = 200)
lines(density(Location), col="blue", lwd=2)

hist(Location, main="Location of Palindromes on CMV DNA", ylab = "Count", breaks = 50)
hist(Location, main="Location of Palindromes on CMV DNA", ylab = "Count", breaks = 100)
hist(Location, main="Location of Palindromes on CMV DNA", ylab = "Count", breaks = 200)
library(lattice)
stripplot(Location, main="Location of Palindromes on CMV DNA", pch=16, cex=0.25)

# Scenario 2 - Spacing --------------------------------------------------
Spacing <- diff(data$location)
hist(Spacing, main="Spacing Between Palindromes on CMV DNA", prob=TRUE, breaks = 50)
lines(density(Spacing), col="blue", lwd=2)
hist(Spacing, main="Spacing Between Palindromes on CMV DNA", prob=TRUE, breaks = 100)
lines(density(Spacing), col="blue", lwd=2)
hist(Spacing, main="Spacing Between Palindromes on CMV DNA", prob=TRUE, breaks = 200)
lines(density(Spacing), col="blue", lwd=2)

hist(Spacing, main="Spacing Between Palindromes on CMV DNA", ylab = "Count", breaks = 50)
hist(Spacing, main="Spacing Between Palindromes on CMV DNA", ylab = "Count", breaks = 100)
hist(Spacing, main="Spacing Between Palindromes on CMV DNA", ylab = "Count", breaks = 200)

# Scenario 2 - Sum of consecutive pairs spacing --------------------------------------------------
PairSpacing <- convolve(Spacing, c(1, 1), conj = FALSE, type = "filter")
hist(PairSpacing, main="Spacing Between Palindrome Pairs on CMV DNA", prob=TRUE, breaks = 50)
lines(density(PairSpacing), col="blue", lwd=2)
hist(PairSpacing, main="Spacing Between Palindrome Pairs on CMV DNA", prob=TRUE, breaks = 100)
lines(density(PairSpacing), col="blue", lwd=2)
hist(PairSpacing, main="Spacing Between Palindrome Pairs on CMV DNA", prob=TRUE, breaks = 200)
lines(density(PairSpacing), col="blue", lwd=2)

hist(PairSpacing, main="Spacing Between Palindrome Pairs on CMV DNA", ylab = "Count", breaks = 50)
hist(PairSpacing, main="Spacing Between Palindrome Pairs on CMV DNA", ylab = "Count", breaks = 100)
hist(PairSpacing, main="Spacing Between Palindrome Pairs on CMV DNA", ylab = "Count", breaks = 200)

# Scenario 2 - Sum of consecutive triplets spacing--------------------------------------------------
TripSpacing <- convolve(Spacing, c(1, 1,1), conj = FALSE, type = "filter")
hist(TripSpacing, main="Spacing Between Palindrome Triplets on CMV DNA", prob=TRUE, breaks = 50)
lines(density(TripSpacing), col="blue", lwd=2)
hist(TripSpacing, main="Spacing Between Palindrome Triplets on CMV DNA", prob=TRUE, breaks = 100)
lines(density(TripSpacing), col="blue", lwd=2)
hist(TripSpacing, main="Spacing Between Palindrome Triplets on CMV DNA", prob=TRUE, breaks = 200)
lines(density(TripSpacing), col="blue", lwd=2)

save_resolved_hists(TripSpacing,"Spacing Between Palindrome Triplets on CMV DNA","Spacing","Count")

# Simulate ------------------------------------
N <- 200000
n <- 300
IntLocations <- seq(1, N)
UniformSimulated <- sample.int(N, size=n) # Uniform
stripplot(UniformSimulated,main="Uniformly Distributed Location of Palindromes", pch=16, cex=0.25)

library(lattice)
ZLocations <- seq(-3, 3, length.out=N) # Normal
NormalSimulated <- sample.int(N, size=n, prob=dnorm(ZLocations))
stripplot(NormalSimulated,main="Normally Distributed Location of Palindromes", pch=16, cex=0.25)

DoubleLocations <- sample.int(N, size=30) # Double
Weights <- rep(0.5, N)
Weights[DoubleLocations] <- Weights[DoubleLocations] + 0.5
DoubleSimulated <- sample.int(N, size=n, prob=Weights)
stripplot(DoubleSimulated,main="Perturbed Uniformly Distributed Location of Palindromes", pch=16, cex=0.25)

save_resolved_hists <- function(data, title, xlabel, ylabel) {
	filename = paste(title, ".pdf", sep = "")
	pdf(filename, height = 10, width = 15)
	hist(data, main=paste(title, "25 Bins", sep = " "), xlab = xlabel, ylab = ylabel, breaks = 25)
	hist(data, main=paste(title, "50 Bins", sep = " "), xlab = xlabel, ylab = ylabel, breaks = 50)
	hist(data, main=paste(title, "100 Bins", sep = " "), xlab = xlabel, ylab = ylabel, breaks = 100)
	hist(data, main=paste(title, "200 Bins", sep = " "), xlab = xlabel, ylab = ylabel, breaks = 200)
	hist(data, main=paste(title, "400 Bins", sep = " "), xlab = xlabel, ylab = ylabel, breaks = 400)
	dev.off()
}

save_resolved_hists_prob <- function(data, title, xlabel, ylabel) {
	filename = paste(title, "_density.pdf", sep = "")
	pdf(filename, height = 10, width = 15)
	hist(data, main=paste(title, "25 Bins", sep = " "), xlab = xlabel, ylab = ylabel, prob = TRUE, breaks = 25)
	lines(density(data), col="blue", lwd=2)
	hist(data, main=paste(title, "50 Bins", sep = " "), xlab = xlabel, ylab = ylabel, prob = TRUE, breaks = 50)
	lines(density(data), col="blue", lwd=2)
	hist(data, main=paste(title, "100 Bins", sep = " "), xlab = xlabel, ylab = ylabel, prob = TRUE, breaks = 100)
	lines(density(data), col="blue", lwd=2)
	hist(data, main=paste(title, "200 Bins", sep = " "), xlab = xlabel, ylab = ylabel, prob = TRUE, breaks = 200)
	lines(density(data), col="blue", lwd=2)
	hist(data, main=paste(title, "400 Bins", sep = " "), xlab = xlabel, ylab = ylabel, prob = TRUE, breaks = 400)
	lines(density(data), col="blue", lwd=2)
	dev.off()
}
save_resolved_hists(DoubleSimulated,"Perturbed Uniformly Distributed Location of Palindromes","Location","Count")
save_resolved_hists_prob(DoubleSimulated,"Perturbed Uniformly Distributed Location of Palindromes","Location","Density")

save_resolved_hists(DoubleSimulated,"Perturbed Uniformly Distributed Location of Palindromes","Location","Count")


regionsplit <- function(data,nBreaks,nSamples){ #number of regions, reference sequence, simulated sequence
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
