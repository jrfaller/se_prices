# Software Engineering Conferences' Price

This project aims at displaying the trends of prices of major software engineering conferences.

## Methodology

Registration fee are recoreded over the years in a CSV file, and a R script produce charts to exhibit the trends.

We record the price for the full conference, for a non-member, for an early registration, because this is the price a random researcher is most likely to pay for presenting its paper. All prices are in euros (as converted on the June 4, 2014) for conferences before June 2014 and using the exchange rate at the time of the conference after June 2014.

At the moment, we observe the following conferences

* ICSM/ICSME
* ASE
* ICSE
* OOPSLA/SPLASH

We still have some missing values, so if you know the missing prices, please contact us.

If you want to add a major software engineering conference, please do! Just fork our repository, modify the CSV file, and make a pull request.

## The graphs

### Early regular price

![Price of software engineering conferences](https://raw.githubusercontent.com/jrfaller/se_prices/master/se_prices_reg.png)

### Early student price

![Price of software engineering conferences](https://raw.githubusercontent.com/jrfaller/se_prices/master/se_prices_stu.png)
