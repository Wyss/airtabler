# Testing air_get() for exposing offset
# Upon succsessful completion 
source('tests/00_setup.R')
source('R/airtabler.R')

offset = NULL
i = 0
returns = list()
while ( T ) {
    i = i + 1
    
    x = air_get(base = TEST_BASE, table_name = TEST_TABLE, offset = offset)

    returns[[i]] = x
    offset = get_offset(x)    

    if ( i == 1 ) { 
        if ( dim(x)[1] < 100 ) {
            stop('Test air_get(): This test requires a table with at least 100 records, check .Renviron.')
        }

        next;
    }

    if ( dim(x)[1] < 100 ) { break; }

    if ( is.null(offset) ) {
        stop('Test air_get(): Offset is not exposed, check code.')
    }
}
