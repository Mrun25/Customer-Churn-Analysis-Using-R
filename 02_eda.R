library(ggplot2)

data <- read.csv("cleaned_churn_data.csv")

ggplot(data, aes(x = Churn, fill = Churn)) +
  geom_bar() +
  scale_fill_manual(values = c("steelblue", "tomato")) +
  labs(title = "Customer Churn Distribution")

ggsave("visuals/churn_distribution.png")

ggplot(data, aes(x = Contract, fill = Churn)) +
  geom_bar(position = "fill")

ggsave("visuals/contract_vs_churn.png")