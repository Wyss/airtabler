# Test should rarely depend on eachother's output
# but .bind is an unexposed function, designed to facilitate
# the building of dataframes
# Check returns_bound variable for correct content

source('tests/01_air_get.R')
returns_bound = bind_nested_df(returns)
