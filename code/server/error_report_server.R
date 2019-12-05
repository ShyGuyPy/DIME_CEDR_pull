#error report
data_tweak.df <- data.table::fread(paste0(data_path, "cedr_wq_tweak.csv"),
                                   data.table = FALSE) %>%

data_na_count <- as.numeric(sum(is.na(data_tweak.df)))

data_num <- nrow(plot_data.df)


data_na_percent <- (data_na_count / data_num)
