### Exercise 1 ###

# Create a vector of everything you ate for breakfast
breakfast <- c('omlet', 'milk', 'ornage juice', 'cereal')

# Create a vector of everything you ate for lunch
lunch <- c('baegal', 'cream cheese', 'subway')

# Create a list "meals" that has contains your breakfast and lunch
meals <- list(breakfast = breakfast, lunch = lunch)

# Add a "dinner" index to your "meals" list that has what you plan to eat for dinner
meals$dinner <- c('coke', 'lasagna', 'cookies')

# Extract your 'dinner' element from your list and save it in a vector called 'dinner'
dinner <- meals$dinner

### Bonus ### 
# Create a list that has the number of items you ate for each meal
lapply(meals, length)

# Write a function that adds pizza to every meal
add_pizza <- function(food) {
  return(c(food, 'pizza'))
}

# Add pizza to every meal!
better_meals <- lapply(meals, add_pizza)
