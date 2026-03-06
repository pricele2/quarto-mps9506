library(dplyr)
library(stringr)
library(readr)
library(janitor)

enr_1314 = read_csv("C:/Users/Lauren/Downloads/Enrollment Report_District_101912_Grade_2013-2014.csv", skip = 4, n_max = 15) |> as_tibble() |> select(`Year`, `Grade Level Name`, `Enrollment by Grade Level`) |> 
  rename(`YEAR` = Year, `GRADE` = `Grade Level Name`, `ENROLLMENT` = `Enrollment by Grade Level`)

enr_1415 = read_csv("C:/Users/Lauren/Downloads/Enrollment Report_District_101912_Grade_2014-2015.csv", skip = 4, n_max = 15) |> as_tibble() |> select(`Year`, `Grade Level Name`, `Enrollment by Grade Level`) |> 
  rename(`YEAR` = Year, `GRADE` = `Grade Level Name`, `ENROLLMENT` = `Enrollment by Grade Level`)

enr_1516 = read_csv("C:/Users/Lauren/Downloads/Enrollment Report_District_101912_Grade_2015-2016.csv", skip = 4, n_max = 15) |> as_tibble() |> select(`Year`, `Grade Level Name`, `Enrollment by Grade Level`) |> 
  rename(`YEAR` = Year, `GRADE` = `Grade Level Name`, `ENROLLMENT` = `Enrollment by Grade Level`)

enr_1617 = read_csv("C:/Users/Lauren/Downloads/Enrollment Report_District_101912_Grade_2016-2017.csv", skip = 4, n_max = 15) |> as_tibble() |> select(`Year`, `Grade Level Name`, `Enrollment by Grade Level`) |> 
  rename(`YEAR` = Year, `GRADE` = `Grade Level Name`, `ENROLLMENT` = `Enrollment by Grade Level`)
           
enr_1718 = read_csv("C:/Users/Lauren/Downloads/Enrollment Report_District_101912_Grade_2017-2018.csv", skip = 4, n_max = 15) |> as_tibble() |> select(`Year`, `Grade Level Name`, `Enrollment by Grade Level`) |> 
  rename(`YEAR` = Year, `GRADE` = `Grade Level Name`, `ENROLLMENT` = `Enrollment by Grade Level`)
                    
enr_1819 = read_csv("C:/Users/Lauren/Downloads/Enrollment Report_District_101912_Grade_2018-2019.csv", skip = 4, n_max = 15) |> as_tibble() |> select(`YEAR`, `GRADE`, `ENROLLMENT`)
        
enr_1920 = read_csv("C:/Users/Lauren/Downloads/Enrollment Report_District_101912_Grade_2019-2020.csv", skip = 4, n_max = 15) |> as_tibble() |> select(`YEAR`, `GRADE`, `ENROLLMENT`)
           
enr_2021 = read_csv("C:/Users/Lauren/Downloads/Enrollment Report_District_101912_Grade_2020-2021.csv", skip = 4, n_max = 15) |> as_tibble() |> select(`YEAR`, `GRADE`, `ENROLLMENT`)
    
enr_2122 = read_csv("C:/Users/Lauren/Downloads/Enrollment Report_District_101912_Grade_2021-2022.csv", skip = 4, n_max = 15) |> as_tibble() |> select(`YEAR`, `GRADE`, `ENROLLMENT`)
             
enr_2223 = read_csv("C:/Users/Lauren/Downloads/Enrollment Report_District_101912_Grade_2022-2023.csv", skip = 4, n_max = 15) |> as_tibble() |> select(`YEAR`, `GRADE`, `ENROLLMENT`)
             
enr_2324 = read_csv("C:/Users/Lauren/Downloads/Enrollment Report_District_101912_Grade_2023-2024.csv", skip = 3, n_max = 15) |> as_tibble() |> select(`YEAR`, `GRADE`, `ENROLLMENT`) 

all_years = bind_rows(list(enr_1314, enr_1415, enr_1516, enr_1617, enr_1718, enr_1819, enr_1920, enr_2021, enr_2122, enr_2223, enr_2324)) |> clean_names() |> 
  mutate(grade = replace_values(grade, "Kindergarten" ~ "Gr 0", "Pre-kindergarten" ~ "Gr -1", "Early Education" ~ "Gr -2")) |> 
  mutate(grade = parse_number(grade))

secondary = all_years |> filter(grade > 5) |> 
  summarise(stu_grade = sum(enrollment)) 

early_yrs = all_years |> filter(`year` %in% c("2013-2014", "2014-2015")) |> 
  group_by(year) |> 
  summarise(n_stus = sum(enrollment)) |> 
  ungroup()
  