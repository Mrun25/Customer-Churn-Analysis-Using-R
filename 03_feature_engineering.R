data$tenure_group <- cut(
  data$tenure,
  breaks = c(0,12,24,48,72),
  labels = c("0-1yr","1-2yr","2-4yr","4-6yr")
)

write.csv(data, "final_churn_data.csv", row.names = FALSE)
