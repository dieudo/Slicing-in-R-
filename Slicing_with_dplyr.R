library(nycflights13)
library(tidyverse)
flights
#####Filter is used for rows 
day1<-filter(flights, month == 1, day == 1)
day1
(day25<-filter(flights, month == 1, day == 25))
filter(flights, month == 11 | month == 12)
nov_dec <- filter(flights, month %in% c(11, 12))
nov_dec

filter(flights, !(arr_delay > 120 | dep_delay > 120))
filter(flights, arr_delay <= 120, dep_delay <= 120)

#########################   Dealing with NA   ##################
df <- tibble(x = c(1, NA, 3)) 
filter(df, x > 1)
filter(df, is.na(x) | x > 1)

#######arrange for rows and select columns ####################

arrange(flights, year, month, day)
####In descending order
arrange(flights, desc(arr_delay))

####NA will be at the end 
df <- tibble(x = c(5, 2, NA)) 
arrange(df, x)
arrange(df, desc(x))
