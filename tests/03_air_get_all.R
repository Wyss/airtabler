# Testing air_get_all()
# Upon successful completion
# Check result variable for correct content

source('tests/00_setup.R')
source('R/airtabler.R')

result = air_get_all(base = TEST_BASE, table_name = TEST_TABLE)
