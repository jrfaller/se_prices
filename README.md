# Software Engineering Conferences' Fees

This project aims at displaying the trends of fees for several major software engineering conferences.

## Methodology

Registration fees are recorded over the years in a CSV file, and a Python script produces charts exhibiting the trends.

We record the fees for the full conference, for an IEEE or ACM non-member with early registration. If it is possible for an author to present virtually, we retain the virtual registration fees. The rationale for these choices is that this is the minimum fee arbitrary researchers must pay to present their papers. All fees are converted in euros, as converted on June 4, 2014, for conferences before June 2014 and using the exchange rate at the time of the introducing commit for conferences after June 2014.

At the moment, we observe the following conferences:

* ICSM/ICSME
* ASE
* ICSE
* ESEC/FSE

We still have some missing values, so if you know the missing fees, please contact us. Additionally, there might be mistakes so do not hesitate to post an issue or make a pull request if you think this is the case.

## The analysis

The complete analysis of the data can be found on our [notebook](https://raw.githubusercontent.com/jrfaller/se_prices/master/se_prices.ipynb).

### Early regular fees

![Price of software engineering conferences](https://raw.githubusercontent.com/jrfaller/se_prices/master/se_prices_reg.png)

### Early student fees

![Price of software engineering conferences](https://raw.githubusercontent.com/jrfaller/se_prices/master/se_prices_stu.png)
