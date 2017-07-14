# Load data into R

library(readr)
library(tidyr)
library(dplyr)

default_of_credit_card_clients <- read_csv("~/Documents/Eitan/R/Capstone/default of credit card clients.csv")

# Change column names from X1, X2 etc to the value in row 2

colnames(default_of_credit_card_clients) <- default_of_credit_card_clients[1,]

# Delete row 2

default_of_credit_card_clients = default_of_credit_card_clients[-1,]

# Clean up column names

colnames(default_of_credit_card_clients)[2] <- "TotalCredit"

colnames(default_of_credit_card_clients)[3] <- "Sex"
colnames(default_of_credit_card_clients)[4] <- "Education"
colnames(default_of_credit_card_clients)[5] <- "Marriage"
colnames(default_of_credit_card_clients)[6] <- "Age"

colnames(default_of_credit_card_clients)[7] <- "StatusSep05"
colnames(default_of_credit_card_clients)[8] <- "StatusAug05"
colnames(default_of_credit_card_clients)[9] <- "StatusJul05"
colnames(default_of_credit_card_clients)[10] <- "StatusJun05"
colnames(default_of_credit_card_clients)[11] <- "StatusMay05"
colnames(default_of_credit_card_clients)[12] <- "StatusApr05"

colnames(default_of_credit_card_clients)[13] <- "BillAmtSep05"
colnames(default_of_credit_card_clients)[14] <- "BillAmtAug05"
colnames(default_of_credit_card_clients)[15] <- "BillAmtJul05"
colnames(default_of_credit_card_clients)[16] <- "BillAmtJun05"
colnames(default_of_credit_card_clients)[17] <- "BillAmtMay05"
colnames(default_of_credit_card_clients)[18] <- "BillAmtApr05"

colnames(default_of_credit_card_clients)[19] <- "PayAmtSep05"
colnames(default_of_credit_card_clients)[20] <- "PayAmtAug05"
colnames(default_of_credit_card_clients)[21] <- "PayAmtJul05"
colnames(default_of_credit_card_clients)[22] <- "PayAmtJun05"
colnames(default_of_credit_card_clients)[23] <- "PayAmtMay05"
colnames(default_of_credit_card_clients)[24] <- "PayAmtApr05"

# Remove ID column (column #1)

default_of_credit_card_clients <- default_of_credit_card_clients[-1]

# Change values from integer to categorical for Sex, Education, Marriage columns

default_of_credit_card_clients$Sex <- factor(default_of_credit_card_clients$Sex)
levels(default_of_credit_card_clients$Sex) <- c("Male", "Female")

default_of_credit_card_clients$Education <- factor(default_of_credit_card_clients$Education)
levels(default_of_credit_card_clients$Education) <- c("Other", "Graduate", "Bachelors", "HS", "Other4", "Other5", "Other6")

default_of_credit_card_clients$Marriage <- factor(default_of_credit_card_clients$Marriage)
levels(default_of_credit_card_clients$Marriage) <- c("Other", "Married", "Single", "Divorced")

# Change values from integer to categorical for payment status columns from Apr05 to Sep05, and default column

default_of_credit_card_clients$StatusSep05 <- factor(default_of_credit_card_clients$StatusSep05)
default_of_credit_card_clients$StatusAug05 <- factor(default_of_credit_card_clients$StatusAug05)
default_of_credit_card_clients$StatusJul05 <- factor(default_of_credit_card_clients$StatusJul05)
default_of_credit_card_clients$StatusJun05 <- factor(default_of_credit_card_clients$StatusJun05)
default_of_credit_card_clients$StatusMay05 <- factor(default_of_credit_card_clients$StatusMay05)
default_of_credit_card_clients$StatusApr05 <- factor(default_of_credit_card_clients$StatusApr05)

levels(default_of_credit_card_clients$StatusSep05) <- c("Paid", "No Consumption", "Revolving", "1MoDelay", "2MoDelay", "3MoDelay", "4MoDelay", "5MoDelay", "6MoDelay", "7MoDelay", "8MoDelay")
levels(default_of_credit_card_clients$StatusAug05) <- c("Paid", "No Consumption", "Revolving", "1MoDelay", "2MoDelay", "3MoDelay", "4MoDelay", "5MoDelay", "6MoDelay", "7MoDelay", "8MoDelay")
levels(default_of_credit_card_clients$StatusJul05) <- c("Paid", "No Consumption", "Revolving", "1MoDelay", "2MoDelay", "3MoDelay", "4MoDelay", "5MoDelay", "6MoDelay", "7MoDelay", "8MoDelay")
levels(default_of_credit_card_clients$StatusJun05) <- c("Paid", "No Consumption", "Revolving", "1MoDelay", "2MoDelay", "3MoDelay", "4MoDelay", "5MoDelay", "6MoDelay", "7MoDelay", "8MoDelay")
levels(default_of_credit_card_clients$StatusMay05) <- c("Paid", "No Consumption", "Revolving", "2MoDelay", "3MoDelay", "4MoDelay", "5MoDelay", "6MoDelay", "7MoDelay", "8MoDelay")
levels(default_of_credit_card_clients$StatusApr05) <- c("Paid", "No Consumption", "Revolving", "2MoDelay", "3MoDelay", "4MoDelay", "5MoDelay", "6MoDelay", "7MoDelay", "8MoDelay")

default_of_credit_card_clients$`default payment next month` <- factor(default_of_credit_card_clients$`default payment next month`)
levels(default_of_credit_card_clients$`default payment next month`) <- c("No Default", "Default")

# Create clean file

write.csv(default_of_credit_card_clients, "default_of_credit_card_clients_clean.csv")

