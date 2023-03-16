#!/usr/bin/env python3

import plotnine as pn
import pandas as pd

def main():
    fees = pd.read_csv('se_prices.csv')
    years = list(range(min(fees['year']), max(fees['year']) + 1))
    plot_fees(fees, 'Full conferences\' fees for a regular early registration.', 'early_regular', years, 'se_prices_reg.png')
    plot_fees(fees, 'Full conferences\' fees for a student early registration.', 'early_student', years, 'se_prices_stu.png')

def plot_fees(fees, title, y_axis, years, filename):
    p = pn.ggplot(fees, pn.aes('year', y_axis, color = 'conference', shape = 'conference')) + \
        pn.geom_point() + \
        pn.geom_line() + \
        pn.labs(title = title, x = 'Year', y = 'Fee (€)') + \
        pn.ylim(0, 1000) + \
        pn.theme_light() + \
        pn.theme(axis_text_x = pn.element_text(rotation = 90)) + \
        pn.scale_x_continuous(breaks = years) + \
        pn.scale_colour_discrete(name = 'Conference') + \
        pn.scale_shape_discrete(name = 'Conference')

    p.save(filename, width = 6, height = 3, dpi=300)

if __name__ == "__main__":
    main()

    