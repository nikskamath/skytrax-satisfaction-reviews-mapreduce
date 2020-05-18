setwd('C:\\Users\\Nikhil Kamath\\Desktop\\skytrax-reviews-dataset-e0ca35cc34e504a366ea2e9a972f93852574d7c4\\data')
data <- read.csv("airline.csv", header=TRUE, stringsAsFactors = F, na.strings = "")
data <- data[,-4] #removing author
data <- data[,-6] #removing content
data <- data[,-4] #removing author_country
data <- data[,-5] #removing aircraft
data <- data[,-2] #removing link
data <- data[,-2] #removing title
data <- data[,-5] #removing route
sapply(data,function(x) sum(is.na(x))) #check for missing values

data$overall_rating <- as.integer(data$overall_rating)
ImputedPointRankMean <- data$overall_rating
ImputedPointRankMean[is.na(ImputedPointRankMean)] <- round(mean(ImputedPointRankMean, na.rm = TRUE))
data$overall_rating[is.na(data$overall_rating)] <- mean(ImputedPointRankMean)

ImputedPointRankMean <- data$seat_comfort_rating
ImputedPointRankMean[is.na(ImputedPointRankMean)] <- round(mean(ImputedPointRankMean, na.rm = TRUE))
data$seat_comfort_rating[is.na(data$seat_comfort_rating)] <- mean(ImputedPointRankMean)
data$seat_comfort_rating <- as.integer(data$seat_comfort_rating)

ImputedPointRankMean <- data$cabin_staff_rating
ImputedPointRankMean[is.na(ImputedPointRankMean)] <- round(mean(ImputedPointRankMean, na.rm = TRUE))
data$cabin_staff_rating[is.na(data$cabin_staff_rating)] <- mean(ImputedPointRankMean)
data$cabin_staff_rating <- as.integer(data$cabin_staff_rating)

ImputedPointRankMean <- data$food_beverages_rating
ImputedPointRankMean[is.na(ImputedPointRankMean)] <- round(mean(ImputedPointRankMean, na.rm = TRUE))
data$food_beverages_rating[is.na(data$food_beverages_rating)] <- mean(ImputedPointRankMean)
data$food_beverages_rating <- as.integer(data$food_beverages_rating)

ImputedPointRankMean <- data$inflight_entertainment_rating
ImputedPointRankMean[is.na(ImputedPointRankMean)] <- round(mean(ImputedPointRankMean, na.rm = TRUE))
data$inflight_entertainment_rating[is.na(data$inflight_entertainment_rating)] <- mean(ImputedPointRankMean)
data$inflight_entertainment_rating <- as.integer(data$inflight_entertainment_rating)

ImputedPointRankMean <- data$ground_service_rating
ImputedPointRankMean[is.na(ImputedPointRankMean)] <- round(mean(ImputedPointRankMean, na.rm = TRUE))
data$ground_service_rating[is.na(data$ground_service_rating)] <- mean(ImputedPointRankMean)
data$ground_service_rating <- as.integer(data$ground_service_rating)

ImputedPointRankMean <- data$wifi_connectivity_rating
ImputedPointRankMean[is.na(ImputedPointRankMean)] <- round(mean(ImputedPointRankMean, na.rm = TRUE))
data$wifi_connectivity_rating[is.na(data$wifi_connectivity_rating)] <- mean(ImputedPointRankMean)
data$wifi_connectivity_rating <- as.integer(data$wifi_connectivity_rating)

ImputedPointRankMean <- data$wifi_connectivity_rating
ImputedPointRankMean[is.na(ImputedPointRankMean)] <- round(mean(ImputedPointRankMean, na.rm = TRUE))
data$wifi_connectivity_rating[is.na(data$wifi_connectivity_rating)] <- mean(ImputedPointRankMean)
data$wifi_connectivity_rating <- as.integer(data$wifi_connectivity_rating)

ImputedPointRankMean <- data$value_money_rating
ImputedPointRankMean[is.na(ImputedPointRankMean)] <- round(mean(ImputedPointRankMean, na.rm = TRUE))
data$value_money_rating[is.na(data$value_money_rating)] <- mean(ImputedPointRankMean)
data$value_money_rating <- as.integer(data$value_money_rating)

str(data)
data$type_traveller <- ifelse(is.na(data$type_traveller), 'Solo Leisure', data$type_traveller) #replacing NA values with 'Solo Leisure'
data$cabin_flown <- ifelse(is.na(data$cabin_flown), 'Economy', data$cabin_flown) #replacing NA values with 'Economy'

write.csv(file="airlinereviewscleaned.csv", data, row.names = F)

