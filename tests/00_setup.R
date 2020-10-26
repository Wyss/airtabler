readRenviron(paste(getwd(), '.Renviron', sep='/'))

TEST_BASE = Sys.getenv('TEST_BASE')
TEST_TABLE = Sys.getenv('TEST_TABLE')

if ( TEST_BASE == "" ) {
    stop('Setup: No base setup for testing, check TEST_BASE variable in .Renviron.')
}

if ( TEST_TABLE == "" ) {
    stop('Setup: No table setup for testing, check TEST_TABLE variable in .Renviron.')
}
