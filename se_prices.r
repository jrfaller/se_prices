pdf()

years <- 2010:2014

data <- read.csv("se_price.csv",colClasses=c("character","integer","integer","integer"))
conferences <- unique(data$conference)
prices = c()
for(conference in conferences) {
	late_full_regular <- data$late_full_regular[data$conference==conference]
	prices <- cbind(prices, late_full_regular)
}

years
prices[,1]

plot(years,prices[,1],ylim=c(0,2000),type="l")

for (i in 2:length(conferences)) {
	lines(years,prices[,i])
}
