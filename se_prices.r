library(reshape2)
library(ggplot2)

prices <- read.csv("se_prices.csv",colClasses=c("character","integer","integer","integer"))

png(file="se_prices_reg.png")

ggplot(data = prices, aes(x=year, y=early_regular, colour=conference, shape=conference)) +
		geom_point() +
		geom_line() +
		ggtitle("Full conference price for a regular early registration.") +
		xlab("Year") +
		ylab("Price (EUR)") +
		theme_bw() +
		scale_colour_discrete(name="Conference") +
		scale_shape_discrete(name="Conference") +
		guides(color=guide_legend(override.aes=list(fill=NA)))

dev.off()

png(file="se_prices_stu.png")

ggplot(data = prices, aes(x=year, y=early_student, colour=conference, shape=conference)) +
		geom_point() +
		geom_line() +
		ggtitle("Full conference price for a student early registration.") +
		xlab("Year") +
		ylab("Price (EUR)") +
		theme_bw() +
		scale_colour_discrete(name="Conference") +
		scale_shape_discrete(name="Conference") +
		guides(color=guide_legend(override.aes=list(fill=NA)))

dev.off()
