library(tidyverse)

df <- (read_csv("C:/Users/Danie/Downloads/dirtyFFdata.csv", col_types = list(
  Restaurant = col_character(),
  Meal_Type = col_character(),
  Food_Type = col_character(),
  Food_Item = col_character(),
  Serving = col_number(),
  Weight_(g) = col_number(),
  Calories = col_number(),
  Carbs_(g) = col_number(),
  Fiber_(g) = col_number(),
  Protein_(g) = col_number(),
  Fat_(g) = col_number(),
  Perc_Cals_from_Fat = col_number(),
  Saturated_Fat_(g) = col_number(),
  Trans_Fat_(g) = col_number(),
  Cholesterol_(mg) = col_number(),
  Sodium(mg) = col_number()
)))

names(df)
for(n in names(df)){
  df[n] <- data.frame(lapply(df[n], gsub, pattern="[^ -~]",replacement = ""))
}
names(df)
write_csv(df, "C:/Users/Danie/Downloads/Fastfood_data_clean.csv")