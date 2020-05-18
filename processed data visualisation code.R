setwd('C:/Users/Nikhil Kamath/Documents/NCI/Semester 2/Electives/Programming for Data Analytics/Project')
data1 <- read.csv("Pig_query_1.csv", header=TRUE, stringsAsFactors = F, na.strings = "")
data2 <- read.csv("Pig_query_2.csv", header=TRUE, stringsAsFactors = F, na.strings = "")
data3 <- read.csv("Pig_query_3.csv", header=TRUE, stringsAsFactors = F, na.strings = "")
data4 <- read.csv("Hive_query_1.csv", header=TRUE, stringsAsFactors = F, na.strings = "")
data5 <- read.csv("Hive_query_2.csv", header=TRUE, stringsAsFactors = F, na.strings = "")
data6 <- read.csv("Hive_query_3.csv", header=TRUE, stringsAsFactors = F, na.strings = "")
library(ggplot2)
library(plotly)
library(dplyr)

#Pig Query 1 visualisation
df_order <- data1 %>% 
  arrange(desc(data1$overall_rating)) #arranging in descending order
df_order

top_n(df_order, n=10, df_order$overall_rating) %>%
  ggplot(., aes(x=airline_name, y=overall_rating))+
  geom_bar(stat='identity') #bar plot

#pig Query 2 visualisation
df_order <- data2 %>% 
  arrange(desc(data2$value_money_rating)) #arranging in descending order
df_order

top_n(df_order, n=10, df_order$value_money_rating) %>%
  ggplot(., aes(x=airline_name, y=value_money_rating))+
  geom_bar(stat='identity') #bar plot

#pig Query 3 visualisation
df_order2 <- data3 %>% 
  arrange(desc(data3$overall_rating)) #arranging in descending order
df_order

top_n(df_order2, n=10, df_order2$overall_rating) %>%
  ggplot(., aes(x=airline_name, y=overall_rating))+
  geom_bar(stat='identity') #bar plot

#Hive Query 1 visualisation
df_order3 <- data4 %>% 
  arrange(desc(data4$food_beverages_rating,data4$inflight_entertainment_rating,data4$wifi_connectivity_rating,data4$seat_comfort_rating)) #arranging in descending order
df_order3

top_n(df_order3, n=10, df_order3$inflight_entertainment_rating) %>%
  ggplot(., aes(x=airline_name, y=inflight_entertainment_rating))+
  geom_bar(stat='identity') #bar plot

top_n(df_order3, n=10, df_order3$wifi_connectivity_rating) %>%
  ggplot(., aes(x=airline_name, y=wifi_connectivity_rating))+
  geom_bar(stat='identity') #bar plot

#Hive Query 3 visualisation
df_order5 <- data6 %>% 
  arrange(desc(data6$frequency.of.recommendation)) #arranging in descending order

top_n(df_order5, n=10, df_order5$frequency.of.recommendation) %>%
  ggplot(., aes(x=airline_name, y=frequency.of.recommendation))+
  geom_bar(stat='identity') #bar plot

#Hive Query 2 Visualisation
df_order6 <- data5 %>% 
  arrange(desc(data5$food_beverages_rating, data5$Seat_comfort_rating)) #arranging in descending order

top_n(df_order6, n=10, df_order6$Seat_comfort_rating) %>%
  ggplot(., aes(x=airline_name, y=Seat_comfort_rating))+
  geom_bar(stat='identity') #bar plot

top_n(df_order6, n=10, df_order6$food_beverages_rating) %>%
  ggplot(., aes(x=airline_name, y=food_beverages_rating))+
  geom_bar(stat='identity') #bar plot
