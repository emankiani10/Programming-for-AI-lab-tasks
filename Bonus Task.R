install.packages("rmarkdown")  # Install only once
library(rmarkdown)

#error code
install.packages("plotly")  # Install plotly (if not installed)
library(plotly)

# Sample data
x <- c(1, 2, 3, 4, 5)
y <- c(10, 20, 25, 30, 40)

# Create an interactive scatter plot
plot_ly(x = x, y = y, type = "scatter", mode = "lines+markers", 
        marker = list(color = 'red'))  

#correct code
x <- c(1, 2, 3, 4)
y <- c(2, 4, 6, 8)

sum_x <- sum(x)
sum_y <- sum(y)

result <- sum_x + sum_y
print(result)
