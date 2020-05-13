# Get raw data

get_insolvent_data <- function() {
  
  LastPageIndex <- jsonlite::fromJSON("https://data.brreg.no/enhetsregisteret/api/enheter?konkurs=true")$page$totalPages
  brreg_raw <- map(paste0("https://data.brreg.no/enhetsregisteret/api/enheter?page=", 1:LastPageIndex), jsonlite::fromJSON)

  return(brreg_raw)
  
}
