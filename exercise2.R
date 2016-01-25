### Exercise 2 ###

# Load R's "USPersonalExpenditure" dataest using the "data()" function
data("USPersonalExpenditure")
View(USPersonalExpenditure)

# The variable USPersonalExpenditure is now accessible to you.  Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme


# Create a new variable by passing the USPersonalExpenditure to the data.frame function
personal_expenditure <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(personal_expenditure)

# Why are they so strange?
print('Column names cannot start with a number')

# What are the row names of your dataframe?
rownames(personal_expenditure)

# Create a column "category" that is equal to your rownames
personal_expenditure$category <- rownames(personal_expenditure)

# Store all "Medical and Health" expenditures in a variable
m_h <- personal_expenditure['Medical and Health', ]

# Store only your 1955 data in a varialbe -- what type of variable does it become?
X1955 <- personal_expenditure[, 'X1955']

# Oh no!  It's a vector!  repeat the same selection above, but:
# include "drop=FALSE" in your square brackets to keep the rownames
#X1955 <- personal_expenditure['X1955']
X1955 <- personal_expenditure[, 'X1955', drop = FALSE]

# How much money was spent on personal care in 1940?
personal_care <- personal_expenditure['Personal Care', 'X1940', drop = FALSE]

# How much money was spent on Food and Tobacco in 1960
food_tobacco <- personal_expenditure['Food and Tobacco', 'X1960', drop = FALSE]

# What was the highest expenditure category in 1960?
highest_expenditure <- personal_expenditure$category[personal_expenditure$X1960 == max(personal_expenditure$X1960)]

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
highest_spending_of_year <- function(year) {
  return(personal_expenditure$category[personal_expenditure[year] == max(personal_expenditure[year])])
}

# Using your function, determine the highest spending category of each year
highest_speding_1940 <- highest_spending_of_year('X1940')
highest_speding_1945 <- highest_spending_of_year('X1945')
highest_speding_1950 <- highest_spending_of_year('X1950')
highest_speding_1955 <- highest_spending_of_year('X1955')
highest_speding_1960 <- highest_spending_of_year('X1960')

### Bonus ###
# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
highest_spending_per_year_list <- list()
for(year in seq(1940, 1960, 5)) {
  year_index <- paste0('X', year)
  highest_spending_per_year_list[year_index] <- highest_spending_of_year(year_index)
}





