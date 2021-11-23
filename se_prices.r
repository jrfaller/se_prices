library(reshape2)
library(ggplot2)

fees <- read.csv("se_prices.csv",
    colClasses = c("character", "integer", "integer", "integer"))
years <- seq(min(fees$year), max(fees$year))

plot_fees <- function(fees, title, y_axis, filename) {
    y_axis <- enquo(y_axis)
    p <- ggplot(data = fees, aes(x = year, y = !! y_axis,
            colour = conference, shape = conference)) +
        geom_point() +
        geom_line() +
        ggtitle(title) +
        xlab("Year") +
        ylab("Price (EUR)") +
        ylim(0, 1000) +
        theme_bw() +
        scale_x_discrete(limits = years) +
        scale_colour_discrete(name = "Conference") +
        scale_shape_discrete(name = "Conference") +
        guides(color = guide_legend(override.aes = list(fill = NA)))

    ggsave(filename, p, width = 6, height = 3)
}

plot_fees(fees, "Full conferences' fees for a regular early registration.",
    early_regular, "se_prices_reg.png")

plot_fees(fees, "Full conferences' fees for a student early registration.",
    early_student, "se_prices_stu.png")
