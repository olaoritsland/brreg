# source functions
  purrr::map(.x = list.files("R/"), .f = ~source(paste0("R/", .)))

# get data
  brreg_raw <- get_insolvent_data()
  
# prep data
  df_brreg <- prep_data(list = brreg_raw)

# plot nace1
  df_brreg$naeringskode1 %>% 
    filter(!beskrivelse %in% "NA") %>% 
    mutate(beskrivelse = forcats::fct_lump(beskrivelse, n = 20)) %>% 
    ggplot(aes(x = beskrivelse)) + 
    geom_bar() + 
    coord_flip()
  