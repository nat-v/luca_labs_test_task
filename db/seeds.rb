# With free subscription to fixer API you can only have EUR as a base currency.
# So I used it as a seed to the database.
# In case if there was an opportunity to use multiple base currencies, we could create a seed for multiple entries
# by reading the `country_code` values from a file, for example.

Base.create({ country_code: 'EUR' })