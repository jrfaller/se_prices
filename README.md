# Software Engineering Conferences' Fees

This project aims at displaying the trends of fees for several major software engineering conferences.

## Methodology

Registration fees are recorded over the years in a CSV file, and a Python script produces charts exhibiting the trends.

We record the fees for the full conference, for a IEEE or ACM non-member, for an early registration. The rationale for this choice is that this is the fee a random researcher is most likely to pay to present its paper. All fees are in euros (as converted on the June 4, 2014) for conferences before June 2014 and using the exchange rate at the time of the introducting commit for conferences after June 2014.

At the moment, we observe the following conferences:

* ICSM/ICSME
* ASE
* ICSE
* ESEC/FSE

We still have some missing values, so if you know the missing fees, please contact us. Additionnally, there might be mistakes so do not hesitate to post an issue if you think this is the case.

If you want to add a major software engineering conference, please do! Just fork our repository, modify the CSV file, and make a pull request.

## The graphs

### Early regular fees

![Price of software engineering conferences](https://raw.githubusercontent.com/jrfaller/se_prices/master/se_prices_reg.png)

### Early student fees

![Price of software engineering conferences](https://raw.githubusercontent.com/jrfaller/se_prices/master/se_prices_stu.png)
