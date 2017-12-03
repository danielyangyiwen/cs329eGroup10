library(tidyverse)
rm(list=ls())
df <- (read_csv("C:/Users/Danie/Downloads/f-17-edv-project-5-final.csv", col_types = cols(
  `calcium` = col_number(),
  `calories` = col_number(),
  `Caloriesfrom_Fat` = col_number(),
  `chole-sterol_1` = col_number(),
  `chole-sterol` = col_number(),
  `dietary_fiber_1` = col_number(),
  `dietary_fiber` = col_number(),
  `food_type` = col_character(),
  `food_and_serving` = col_character(),
  `number_of_records` = col_number(),
  `potassium_1` = col_number(),
  `potassium` = col_number(),
  `protein` = col_number(),
  `saturated_fat_1` = col_character(),
  `saturated_fat` = col_character(),
  `serving_size` = col_character(),
  `sodium_1` = col_number(),
  `sodium` = col_number(),
  `sugars` = col_number(),
  `total_carbo_hydrate_1` = col_number(),
  `total_carbo_hydrate` = col_number(),
  `total_fat_1` = col_number(),
  `total_fat` = col_number(),
  `vitamin_a` = col_number(),
  `vitamin_c` = col_number(),
  `add_to_cart_order` = col_number(),
  `aisle` = col_character(),
  `aisle_id_asiles_csv` = col_number(),
  `aisle_id` = col_number(),
  `days_since_prior_order` = col_number(),
  `department` = col_character(),
  `department_id_departments_csv` = col_number(),
  `department_id` = col_number(),
  `eval_set` = col_character(),
  `order_dow` = col_number(),
  `order_hour_of_day` = col_number(),
  `order_id_orders_reduced_csv` = col_number(),
  `order_id` = col_number(),
  `order_number` = col_number(),
  `product_id_order_products_train_reduced_csv` = col_number(),
  `product_id` = col_number(),
  `product_name` = col_character(),
  `reordered` = col_logical(),
  `user_id` = col_number(),
  `iron` = col_number()
)))

names(df)


df[n] <- lapply(df[n], gsub, pattern="[^ -~]",replacement = "")



df
write_csv(df, "C:/Users/Danie/Downloads/newFinalData.csv")
