setwd("C:\\Users\\Rob\\Documents\\MATH189-289\\Homework 3")
data <- read.table("hcmv.txt", header = TRUE)
options(scipen=999)

save_resolved_hists <- function(data, title, xlabel, ylabel, xlimit) {
	filename = paste(title, ".pdf", sep = "")
	pdf(filename, height = 10, width = 15)
	data[data>xlimit] <- NA
	hist(data, main=paste(title, "25 Bins", sep = " "), xlab = xlabel, ylab = ylabel, breaks = 25, cex=1.5, xlim = c(0, xlimit))
	hist(data, main=paste(title, "50 Bins", sep = " "), xlab = xlabel, ylab = ylabel, breaks = 50, cex=1.5, xlim = c(0, xlimit))
	hist(data, main=paste(title, "100 Bins", sep = " "), xlab = xlabel, ylab = ylabel, breaks = 100, cex=1.5, xlim = c(0, xlimit))
	hist(data, main=paste(title, "200 Bins", sep = " "), xlab = xlabel, ylab = ylabel, breaks = 200, cex=1.5, xlim = c(0, xlimit))
	hist(data, main=paste(title, "400 Bins", sep = " "), xlab = xlabel, ylab = ylabel, breaks = 400, cex=1.5, xlim = c(0, xlimit))
	dev.off()
}

# save_resolved_hists_prob <- function(data, title, xlabel, ylabel) {
# 	filename = paste(title, ".pdf", sep = "")
# 	pdf(filename, height = 10, width = 15)
# 	hist(data, main=paste(title, "25 Bins", sep = " "), xlab = xlabel, ylab = ylabel, prob = TRUE, breaks = 25, cex=1.5)
# 	lines(density(data), col="blue", lwd=2)
# 	hist(data, main=paste(title, "50 Bins", sep = " "), xlab = xlabel, ylab = ylabel, prob = TRUE, breaks = 50, cex=1.5)
# 	lines(density(data), col="blue", lwd=2)
# 	hist(data, main=paste(title, "100 Bins", sep = " "), xlab = xlabel, ylab = ylabel, prob = TRUE, breaks = 100, cex=1.5)
# 	lines(density(data), col="blue", lwd=2)
# 	hist(data, main=paste(title, "200 Bins", sep = " "), xlab = xlabel, ylab = ylabel, prob = TRUE, breaks = 200, cex=1.5)
# 	lines(density(data), col="blue", lwd=2)
# 	hist(data, main=paste(title, "400 Bins", sep = " "), xlab = xlabel, ylab = ylabel, prob = TRUE, breaks = 400, cex=1.5)
# 	lines(density(data), col="blue", lwd=2)
# 	dev.off()
# }

save_overlay <- function(data,title,xlabel,ylabel,xmax){
	filename = paste(title, " Overlay.png", sep = "")
	png(filename, units="in", height = 10, width = 15, res=300)
		library(ggplot2)
		#Sample data
		dat <- data.frame(dens = data,
											lines = rep(c("CMV DNA", "Uniform", "Perturbed Uniform", "Normal")))
		#Plot
		#print(ggplot(dat, aes(x = dens,..count.., fill = lines)) + geom_density(alpha=0.5) + #overlay
		print(ggplot(dat, aes(x = dens,..count.., colour = lines)) + geom_density() + #overlay
		#print(ggplot(dat, aes(x = dens,..count.., fill = lines)) + geom_density(alpha=0.5,position="fill") + #conditionals
			labs(title = title) +
			labs(x = xlabel) +
			labs(y = ylabel) +
			guides(fill=guide_legend(title="Data")) +
			theme(text = element_text(size=18))+
			xlim(0,xmax)
			)
	dev.off()
}

# Simulate ------------------------------------
N <- 229345
n <- 296

IntLocations <- seq(1, N) # Uniform
UniformSimulated <- sample.int(N, size=n) 

library(lattice) # Normal
ZLocations <- seq(-3, 3, length.out=N) 
NormalSimulated <- sample.int(N, size=n, prob=dnorm(ZLocations))

DoubleLocations <- sample.int(N, size=30) # Double 30 locations' probabilities randomly
Weights <- rep(0.5, N)
Weights[DoubleLocations] <- Weights[DoubleLocations] + 0.5
DoubleSimulated <- sample.int(N, size=n, prob=Weights)

# Scenario 2 - Location -------------------------------------------------
Location <- data$location

save_resolved_hists(Location,"Location of CMV DNA Palindromes","Location","Count",229345)
save_resolved_hists(UniformSimulated,"Location of Uniformly Distributed Palindromes","Location","Count",229345)
save_resolved_hists(DoubleSimulated,"Location of Perturbed Uniformly Distributed Palindromes","Location","Count",229345)
save_resolved_hists(NormalSimulated,"Location of Normally Distributed Palindromes","Location","Count",229345)

save_overlay(c(Location, UniformSimulated, DoubleSimulated, NormalSimulated),
						 "Location Densities of CMV DNA vs. Simulated Palindromes",
						 "Location",
						 "Density",
						 229345)

png("QQ Plot CMV DNA Location vs Uniform.png", units="in", height = 10, width = 15, res=300)
	qqplot(Location,UniformSimulated, main="Q-Q Plot Comparing Distributions", xlab="Location of CMV DNA Palindromes",ylab="Location of Uniformly Distributed Palindromes")
	abline(0,1, col=2)
dev.off()


# Scenario 2 - Spacing --------------------------------------------------
Spacing <- diff(Location)
UniformSpacing <- diff(sort(UniformSimulated))
DoubleSpacing <- diff(sort(DoubleSimulated))
NormalSpacing <- diff(sort(NormalSimulated))

save_resolved_hists(Spacing,"Single - Spacing Between CMV DNA Palindromes","Spacing","Count", 5000)
save_resolved_hists(UniformSpacing,"Single - Spacing Between Uniformly Distributed Palindromes","Spacing","Count", 5000)
save_resolved_hists(DoubleSpacing,"Single - Spacing Between Perturbed Uniformly Distributed Palindromes","Spacing","Count", 5000)
save_resolved_hists(NormalSpacing,"Single - Spacing Between Normally Distributed Palindromes","Spacing","Count", 5000)
save_overlay(c(Spacing, UniformSpacing, DoubleSpacing, NormalSpacing),
						 "Single - Spacing Densities of CMV DNA vs. Simulated Palindromes",
						 "Spacing", 
						 "Density",
						 5000)

# Test if normal comes from Poisson process
trimmedUnif <- UniformSpacing
trimmedUnif[trimmedUnif>5000] <- NA
trimmedNorm <- NormalSpacing
trimmedNorm[trimmedNorm>5000] <- NA
r <- mean(trimmedNorm, na.rm = TRUE)/mean(trimmedUnif, na.rm = TRUE)
pf(r,length(trimmedNorm),length(trimmedUnif))
png("QQ Plot Normal Spacing vs Exponential.png", units="in", height = 10, width = 15, res=300)
	qqplot(trimmedNorm,trimmedUnif, main="Q-Q Plot Comparing Distributions", xlab="Spacing Between Normally Distributed Palindromes",ylab="Spacing Between Uniformly Distributed Palindromes")
	abline(0,1, col=2)
dev.off()

# Test if CMV DNA comes from Poisson process
trimmedUnif <- UniformSpacing
trimmedUnif[trimmedUnif>5000] <- NA
trimmedCMV <- Spacing
trimmedCMV[trimmedCMV>5000] <- NA
r <- mean(trimmedCMV, na.rm = TRUE)/mean(trimmedUnif, na.rm = TRUE)
pf(r,length(trimmedCMV),length(trimmedUnif))
png("QQ Plot CMV DNA Spacing vs Exponential.png", units="in", height = 10, width = 15, res=300)
	qqplot(trimmedCMV,trimmedUnif, main="Q-Q Plot Comparing Distributions", xlab="Spacing Between CMV DNA Distributed Palindromes",ylab="Spacing Between Uniformly Distributed Palindromes")
	abline(0,1, col=2)
dev.off()

# Scenario 2 - Sum of consecutive pairs spacing --------------------------------------------------
PairSpacing <- convolve(Spacing, c(1, 1), conj = FALSE, type = "filter")
UniformPair <- convolve(UniformSpacing, c(1, 1), conj = FALSE, type = "filter")
DoublePair <- convolve(DoubleSpacing, c(1, 1), conj = FALSE, type = "filter")
NormalPair <- convolve(NormalSpacing, c(1, 1), conj = FALSE, type = "filter")
save_resolved_hists(PairSpacing,"Pair - Spacing Between CMV DNA Palindrome Pairs","Pair Spacing","Count",7500)
save_resolved_hists(UniformPair,"Pair - Spacing Between Uniformly Distributed Palindrome Pairs","Pair Spacing","Count",7500)
save_resolved_hists(DoublePair,"Pair - Spacing Between Perturbed Uniformly Distributed Palindrome Pairs","Pair Spacing","Count",7500)
save_resolved_hists(NormalPair,"Pair - Spacing Between Normally Distributed Palindrome Pairs","Pair Spacing","Count",7500)
save_overlay(c(PairSpacing, UniformPair, DoublePair, NormalPair),
						 "Pair - Spacing Densities of CMV DNA vs. Simulated Palindrome Pairs",
						 "Pair Spacing",
						 "Density",
						 7500)

# Test if CMV DNA comes from Poisson process
trimmedUnif <- UniformPair
trimmedUnif[trimmedUnif>5000] <- NA
trimmedCMV <- PairSpacing
trimmedCMV[trimmedCMV>5000] <- NA
r <- mean(trimmedCMV, na.rm = TRUE)/mean(trimmedUnif, na.rm = TRUE)
pf(r,length(trimmedCMV),length(trimmedUnif))
png("QQ Plot CMV DNA Pair Spacing vs Gamma.png", units="in", height = 10, width = 15, res=300)
	qqplot(trimmedCMV,trimmedUnif, main="Q-Q Plot Comparing Distributions", xlab="Spacing Between CMV DNA Distributed Palindromes Pairs",ylab="Spacing Between Uniformly Distributed Palindrome Pairs")
	abline(0,1, col=2)
dev.off()

# Scenario 2 - Sum of consecutive triplets spacing--------------------------------------------------
TripSpacing <- convolve(Spacing, c(1, 1, 1), conj = FALSE, type = "filter")
UniformTrip <- convolve(UniformSpacing, c(1, 1, 1), conj = FALSE, type = "filter")
DoubleTrip  <- convolve(DoubleSpacing, c(1, 1, 1), conj = FALSE, type = "filter")
NormalTrip  <- convolve(NormalSpacing, c(1, 1, 1), conj = FALSE, type = "filter")
save_resolved_hists(TripSpacing,"Triplet - Spacing Between CMV DNA Palindrome Triplets","Triplet Spacing","Count",10000)
save_resolved_hists(UniformTrip,"Triplet - Spacing Between Uniformly Distributed Palindrome Triplets","Triplet Spacing","Count",10000)
save_resolved_hists(DoubleTrip,"Triplet - Spacing Between Perturbed Uniformly Distributed Palindrome Triplets","Triplet Spacing","Count",10000)
save_resolved_hists(NormalTrip,"Triplet - Spacing Between Normally Distributed Palindromes Triplet","Triplet Spacing","Count",10000)
save_overlay(c(TripSpacing, UniformTrip, DoubleTrip, NormalTrip),
						 "Triplet - Spacing Densities of CMV DNA vs. Simulated Palindrome Triplets",
						 "Triplet Spacing",
						 "Density",
						 10000)

#p <- (1:n-1)/n
#gam <- dgamma(p, shape = 3, scale = mean(UniformSpacing), log = FALSE)

png("QQ Plot CMV DNA Triplet Spacing vs Uniform Triplet Spacing.png", units="in", height = 10, width = 15, res=300)
	qqplot(TripSpacing,UniformTrip, main="Q-Q Plot Comparing Distributions", xlab="Spacing Between CMV DNA Distributed Palindromes Triplets",ylab="Spacing Between Uniformly Distributed Palindrome Triplets")
	abline(0,1, col=2)
dev.off()

CMVInd = 75:(N-75)
CMVStrand = numeric(N)
CMVStrand[Location] = 1
SlidingSum <- convolve(CMVStrand, rep(1L, 150), conj = FALSE, type = "filter")
png("slidesum.png", units="in", height = 10, width = 15, res=300)
	plot(SlidingSum)
dev.off()

# regionsplit <- function(data,nBreaks,nSamples){ #number of regions, reference sequence, simulated sequence
# 	IntBreaks <- seq(1, length(IntLocations), length.out=nBreaks)
# 	as.vector(table(cut(DoubleSimulated,breaks=IntBreaks, include.lowest = TRUE)))
# 	return()
# }
# 
# regionsplit(n, IntLocations, UniformSimulated)
# regionsplit(10, IntLocations, NormalSimulated)
# regionsplit(11, IntLocations, DoubleSimulated)
# nBreaks = 50
# nSamples = N
# IntBreaks <- seq(1, length(IntLocations), length.out=nBreaks)
# as.vector(table(cut(DoubleSimulated,breaks=IntBreaks, include.lowest = TRUE)))

