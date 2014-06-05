pdf(file="se_prices.pdf")

years <- 2010:2014

data <- read.csv("se_prices.csv",colClasses=c("character","integer","integer","integer"))
conferences <- unique(data$conference)
colors = rainbow(length(conferences))

early_regulars = c()
early_students = c()
for(conference in conferences) {
	early_regular <- data$early_regular[data$conference==conference]
	early_student <- data$early_student[data$conference==conference]
	early_regulars <- cbind(early_regulars, early_regular)
	early_students <- cbind(early_students, early_student)
}

plot(years, early_regulars[,1], main="Evolution of Prices of Major SE Conferences: Early Regular", xlab="Year", ylab="Price (EUR)", ylim=c(0,2000), type="o", col=colors[1], pch=1)

for (i in 2:length(conferences)) {
	points(years, early_regulars[,i], type="o", col=colors[i], pch=i)
}

legend(2013, 2000, conferences, lty=1, col=colors, pch=1:length(conferences))

plot(years, early_students[,1], main="Evolution of Prices of Major SE Conferences: Early Student", xlab="Year", ylab="Price (EUR)", ylim=c(0,1500), type="o", col=colors[1], pch=1)

for (i in 2:length(conferences)) {
	points(years, early_students[,i], type="o", col=colors[i], pch=i)
}

legend(2013, 1500, conferences, lty=1, col=colors, pch=1:length(conferences))
