# ---------------------------------------------------------------------
#               Cafe Project
#       by Carlie Hamilton
#  Challenge to get a order for a cafe and print out a receipt          
# ---------------------------------------------------------------------
require_relative 'classes/order'
require_relative 'classes/item'


# add items to my cafe! - In an array so that more items can easily be added without needing to modify other code in the program
items = [ 
    lattes =Item.new("Latte", 4, 2, 6),
    scones =Item.new("Scone", 5, 3, 2),
    tea =Item.new("Tea", 3, 0.50, 3),
    cake =Item.new("Cake", 5, 2)
]

# Adding the orders that have already occured to the current order 
order = Order.new
for item in items
    order.push({item: item.name, qty: item.initial_qty})
end

# Making a somewhat pretty header
decorate = "-"
title = "| -- Welcome to Carlie's Cafe -- |"
clear
puts decorate * title.length
puts title
puts decorate * title.length

# The main order loop - user orders the items they want
currently_ordering = true

while currently_ordering
    puts "~* MENU *~".center(title.length, " ")
    for item in items
        puts item.menu.rjust(title.length*0.63, " ")
    end
    puts
    puts "What would you like to order?"
    puts "** Type in your selection **"
    puts "Press (f) to finish ordering"

    new_order = gets.chomp.capitalize

    item_not_found = 0

    # searching to see if user input == item name, if so, add to order
    for item in items
        if new_order == item.name
            clear
            puts "How many #{item.name}s would you like to order?"
            order_qty = gets.chomp.to_i
            for item in order.order
                if item[:item] == new_order
                    item[:qty] += order_qty
                    clear
                    puts "You have ordered #{item[:qty]} #{item[:item]}(s)"
                    puts
                    break
                end
            end
        
        # finish ordering
        elsif new_order == "F"
            currently_ordering = false
        
        # if it doesn't find the item... count to tell the user to try again
        else 
            item_not_found +=1
        end
    end

    # it goes through the loop, and if it doesn't find an item, it tells the user to try again
    if item_not_found > items.length - 1
        clear
        puts "Ooops, something went wrong"
        puts "Please type in your selection:"
        puts
    end
end

p order
# get the order receipt
for item in order.order
    if item[:qty] > 1
        puts "#{item[:item]} x#{item[:qty]} @ $#{item[:price]}each #{instance_variable_get(item[:item].downcase).total_cost(item[:qty])}"
    end
end
