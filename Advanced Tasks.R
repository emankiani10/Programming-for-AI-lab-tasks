# 1. Install and load lubridate to parse and format dates.
install.packages("lubridate")  # Install lubridate (only once)
library(lubridate)  # Load lubridate
date_str <- "2025-03-18 14:30:00"
parsed_date <- ymd_hms(date_str)  # Parse date-time string
formatted_date <- format(parsed_date, "%B %d, %Y - %H:%M")
cat("Formatted Date:", formatted_date, "\n")
#-------------------------

# 2. Install and use rvest to scrape webpage data.
install.packages("rvest")  # Install rvest 
library(rvest)  # Load rvest
# Correct URL 
url <- "https://nutech.edu.pk/"  
# Read the webpage
webpage <- tryCatch({
  read_html(url)
}, error = function(e) {
  cat("Error:", e$message, "\n")
  return(NULL)
})
# Extract page titles (only if webpage is successfully loaded)
if (!is.null(webpage)) {
  titles <- webpage %>% html_nodes("title") %>% html_text()
  cat("Page Titles:\n", titles, "\n")
} else {
  cat("Failed to load the webpage.\n")
}
#-------------------------

# 3. Install and use caret to create a simple classification model.
install.packages("caret")  # Install caret (only once)
library(caret)  # Load caret
data(iris)  # Load the iris dataset
set.seed(123)  # Set seed for reproducibility

# Split data into training (70%) and testing (30%) sets
trainIndex <- createDataPartition(iris$Species, p = 0.7, list = FALSE)
trainData <- iris[trainIndex, ]
testData <- iris[-trainIndex, ]

# Train a classification model (Decision Tree)
model <- train(Species ~ ., data = trainData, method = "rpart")

# Make predictions
predictions <- predict(model, testData)

# Compute confusion matrix
conf_mat <- confusionMatrix(predictions, testData$Species)

# Print results
print(conf_mat)

#---------------------------

# 4. Install and use xts/zoo to visualize time-series data.
install.packages(c("xts", "zoo"))  # Install xts and zoo (only once)
library(xts)  # Load xts
library(zoo)  # Load zoo
dates <- as.Date("2025-01-01") + 0:9  # Generate 10 dates
values <- rnorm(10, mean = 50, sd = 5)  # Generate random values
time_series <- xts(values, order.by = dates)  # Create xts object
plot(time_series, main = "Time-Series Data", col = "blue", type = "o")
