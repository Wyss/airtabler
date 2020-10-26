## How to use tests?

1) Make sure that you have `.Renviron` in the root directory with the following keys setup
```
AIRTABLE_API_KEY="<Your API Key>"
TEST_BASE="<Base where the test table resides>"
TEST_TABLE="<Test table name>"
```
2) You can run the `tests/01_air_get.R`, `tests/02_bind_df.R`, `tests/03_air_get_all.R` files, make sure that your root work directory is where the repo is cloned.

3) Read the brief instructions in tests, these are not traditional tests, just helpers, to evaluate the functions.
