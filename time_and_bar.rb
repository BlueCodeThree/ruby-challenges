def clear
    puts "\e[2J\e[f"
end

# There are three parts to this challenge and remember to push your solution.

# PART 1:
# - Create a well named variable that contains the amount of time it took you to get to class
# - Create a complete sentence  that lets us know how you got to class and how long it took
# - Print this complete sentence

drive_to_daycare = 2
daycare_dropoff = 10
drive_to_train = 2
wait_for_train = 5
train_to_central = 30
walk_to_class = 12

time_to_class = drive_to_daycare + daycare_dropoff + drive_to_train + wait_for_train + train_to_central + walk_to_class

puts "To get to class, I drive to daycare, drop off the kids at daycare, drive to the train station, "
puts "wait for the train, take the train to central station, and walk to class. It takes about #{time_to_class}mins"
clear

# PART 2:
# You are working at a bar where you have a current backlog of drinks to make:
# 3 cocktails
# 2 waters
# and
# 6 beers

# Write a program that asks the customer for their order.
#   if they order a cocktail, add one to the number of cocktails you need to make,
#   if they order a water, add one to the number of waters you need to make,
#   if they order a beer, add one to the number of beers you need to pour

# Print the final drinks order so you know what to make


# initial orders
order = {cocktail: 3, beer: 6, water: 2}
currently_ordering = true

# adding new orders
while currently_ordering
    puts "What would you like to order?"
    puts "Press (1) for cocktail"
    puts "Press (2) for beer"
    puts "Press (3) for water"
    puts "Press (4) to finish ordering"
    new_order = gets.chomp.to_i 
    if new_order == 1
        order[:cocktail] += 1
        clear
        puts "You ordered a cocktail!"
        puts
    elsif new_order == 2
        order[:beer] += 1
        clear
        puts "You ordered a beer"
        puts
    elsif new_order == 3
        order[:water] += 1
        clear
        puts "You ordered a water"
    elsif new_order == 4
        clear
        currently_ordering = false
    else
        clear
        puts "Oops, you pressed the wrong button!"
        puts
    end
end

# total orders
puts "You have ordered #{order[:cocktail]} cocktails, #{order[:beer]} beers, and #{order[:water]} waters"

# Part Three:

# for part three, see time_and_bar_money.rb