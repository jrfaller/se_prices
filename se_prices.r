pdf(file="se_prices.pdf")

years <- 2010:2014

data <- read.csv("se_prices.csv",colClasses=c("character","integer","integer","integer"))
conferences <- unique(data$conference)
colors = rainbow(length(conferences))
prices = c()
for(conference in conferences) {
	early_regular <- data$early_regular[data$conference==conference]
	prices <- cbind(prices, early_regular)
}

plot(years, prices[,1], main="Evolution of Prices of Major Software Engineering Conferences", xlab="Year", ylab="Price (EUR)", ylim=c(0,2000), type="o", col=colors[1], pch=1)

for (i in 2:length(conferences)) {
	points(years,prices[,i], type="o", col=colors[i], pch=i)
}

legend(2013, 2000, conferences, lty=1, col=colors, pch=1:length(conferences))
