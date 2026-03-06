library(readr)
actget2024 <- read_csv("C:\\Users\\Lauren\\Downloads\\actget2024\\actget2024.csv")
View(actget2024)

library(dplyr)
library(stringr)

hisd = actget2024 |> filter(DISTRICT == "101912") |> as_tibble() |> 
  mutate(OBJECT = as.character(OBJECT))

payroll = hisd |> filter(str_detect(OBJECT, "^61")) |> 
  filter_out(str_detect(OBJECT, "^614")) 

proll2 = payroll |> 
  group_by(OBJECT, FUNCTION) |> 
  summarise(obj_sum = sum(ACTAMT)) |> 
  ungroup() |> 
  arrange(FUNCTION, OBJECT) 

proll3 = proll2 |>  filter(FUNCTION %in% c("34","35","51","52","53")) |> 
  filter(! OBJECT %in% c("6119"))

proll4 = proll3 |> 
  summarise(total = sum(obj_sum))

controller = hisd |> filter(!str_detect(OBJECT, "^61")) |> 
  mutate(unit = as.numeric(FIN_UNIT)) 

central = controller |> 
  filter(unit > 500)

shop = central |> filter(OBJECT %in% c("6399", "6329")) 

shopsum = shop |> summarise(total = sum(ACTAMT))
# $32694673


