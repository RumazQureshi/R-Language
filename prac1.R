
# installed.packages("tidyverse",type="source")
# library(tidyverse)

num1 <- 70
num1
arr <- c(1,2,3,4,5)
arr


?c()
arr2 <- c(5,7,9,0)
arr2

arr2[5]


newarr <- c(10:30)
newarr

print(arr)
mean(arr)
median(arr)
arr[2]

newarr <- c(1:20)
print(newarr)
sum(newarr)

library(tidyverse)
View(Scooby_Doo_Com)
data()

exists("mpg")

View(mpg, "newest data")
glimpse(mpg)

?View


exists("mpg")

df <- cars
View(df)
glimpse(df)


group_df <- mpg %>% 
    group_by(class) %>% 
  summarise(
    mean_cty  = mean(cty, na.rm=TRUE),
    median_hwy = median(hwy, na.rm=TRUE)
  )

View(group_df)


new <- mpg %>%
  group_by(class) %>%
  mutate(avg_cty = mean(cty, na.rm = TRUE))
 # ungroup()


df <- data.frame(
  Name = c("Romaz","Zayyan","Rohan", "Humair"),
  Age = c(21,17,NA, 20),
  Score = c(99,NA,94,92 )
)

clean_df <- na.omit(df)
print(clean_df)





glimpse(starwars)
clean_da <- starwars %>% drop_na()
glimpse(clean_da)

is.na(starwars)





n1<-starwars %>% drop_na()

glimpse(starwars)

# Compute Avg body mass index of Human characters based on gender
# mass/(height/100)^2

starwars %>% select(gender, species, mass, height) %>% 
  filter(species=="Human") %>% drop_na() %>% 
  mutate(height = height/100) %>% 
  mutate(BMI = mass/height^2) %>%  group_by(gender) %>%  summarise(mean_BMI = mean(BMI))
