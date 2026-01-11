library(caret)

data <- read.csv("final_churn_data.csv")

model <- glm(
  Churn ~ tenure + MonthlyCharges + Contract,
  data = data,
  family = "binomial"
)

summary(model)

pred_prob <- predict(model, type = "response")
pred <- ifelse(pred_prob > 0.5, "Yes", "No")

accuracy <- mean(pred == data$Churn)
accuracy
