# 1. Install and load ggplot2, then create a basic scatterplot.
install.packages("ggplot2")  # Install ggplot2 (only once)
library(ggplot2)  # Load ggplot2
ggplot(iris, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) + geom_point()
#------------------------------

# 2. Use dplyr to filter rows for a specific species and arrange by sepal length.
install.packages("dplyr")  # Install dplyr (only once)
library(dplyr)  # Load dplyr
filtered_iris <- iris %>% filter(Species == "setosa") %>% arrange(Sepal.Length)
print(filtered_iris)
#------------------------------

# 3. Install tidyr and pivot a dataset between wide and long formats.
install.packages("tidyr")  # Install tidyr (only once)
library(tidyr)  # Load tidyr
wide_data <- data.frame(ID = c(1, 2), Math = c(90, 85), Science = c(80, 88))
long_data <- pivot_longer(wide_data, cols = c(Math, Science), names_to = "Subject", values_to = "Score")
print(long_data)  # Wide to long format
wide_again <- pivot_wider(long_data, names_from = "Subject", values_from = "Score")
print(wide_again)  # Long to wide format
#-----------------------------

# 4. Install data.table, create a data table, and perform simple aggregation.
install.packages("data.table")  # Install data.table (only once)
library(data.table)  # Load data.table
dt <- data.table(ID = c(1, 2, 1, 2), Score = c(90, 85, 80, 88))
aggregated_dt <- dt[, .(Average_Score = mean(Score)), by = ID]
print(aggregated_dt)
