install.packages(visdat)
install.packages(naniar)
install.packages(dlookr)
library(visdat)
library(naniar)
library(dlookr)

iris_dirty <- read.csv("C:/Users/HP/Desktop/repo-test/repo-test/iris_dirty.csv")

any_na(iris_dirty$Sepal.Length)
n_miss(iris_dirty$Sepal.Length)
prop_miss(iris_dirty$Sepal.Length)
vis_miss(iris_dirty)

miss_var_summary(iris_dirty)
miss_var_table(iris_dirty)

library(tidyverse)
iris_dirty%>%
  group_by()
miss_var_table

gg_miss_var(iris_dirty)
gg_miss_case(iris_dirty)

iris_dirty %>%
  ggplot(aes(x=Sepal.Length)) +
  geom_density()

iris_dirty %>%
  bind_shadow() %>%
  ggplot(aes(x=Sepal.Length,
             colour=Sepal.Width_NA)) +
  geom_density()

iris_dirty %>%
  ggplot(aes(x=Sepal.Length, y=Sepal.Width)) +
  geom_miss_point()

install.packages("simputation")
library(simputation)

iris_dirty%>%