# Test should rarely depend on eachother's output
# but .bind is an unexposed function, designed to facilitate
# the building of dataframes

source('tests/01_air_get.R')
returns_bound = .bind_df(returns)
