# ---------------------------------------------------------
# Load the dataset
# ---------------------------------------------------------
data <- read.csv("Mobius.csv", stringsAsFactors = FALSE)

# ---------------------------------------------------------
# Data Cleaning
# Convert Date to proper format and convert numeric columns
# ---------------------------------------------------------
data$Date <- as.Date(data$Date, format = "%b %d, %Y")

data$Price <- as.numeric(data$Price)
data$Open  <- as.numeric(data$Open)
data$High  <- as.numeric(data$High)
data$Low   <- as.numeric(data$Low)

# ---------------------------------------------------------
# Visualisation 1: Histogram of Closing Prices
# ---------------------------------------------------------
hist(data$Price,
     main = "Histogram of Daily Closing Prices (Mobius)",
     xlab = "Closing Price (USD)",
     ylab = "Frequency",
     col = "grey85",
     border = "grey40")

# ---------------------------------------------------------
# Visualisation 2: Scatter Plot (Opening vs Closing Price)
# ---------------------------------------------------------
plot(data$Open, data$Price,
     main = "Scatter Plot: Opening vs Closing Price (Mobius)",
     xlab = "Opening Price (USD)",
     ylab = "Closing Price (USD)",
     pch = 19)

# ---------------------------------------------------------
# Statistical Test: Pearson Correlation
# ---------------------------------------------------------
cor_test <- cor.test(data$Open, data$Price, method = "pearson")

# Print correlation test output
cor_test
