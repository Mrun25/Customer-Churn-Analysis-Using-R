library(dplyr)

data <- read.csv("telco_churn.csv", stringsAsFactors = FALSE)

str(data)
summary(data)

data$TotalCharges <- as.numeric(data$TotalCharges)
data <- na.omit(data)

data$Churn <- as.factor(data$Churn)

write.csv(data, "cleaned_churn_data.csv", row.names = FALSE)
