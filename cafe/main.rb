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
    order.push({item: item.name, price: item.price, cost: item.cost, qty: item.initial_qty})
end
p order

# Making a somewhat pretty header
decorate = "-"
title = "| -- Welcome to Carlie's Cafe -- |"
clear
puts decorate * title.length
puts title
puts decorate * title.length

# The main order loop - user orders the drinks they want
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

    for item in items
        if new_order == item.name
            clear
            puts "How many #{item.name}s would you like to order?"
            order_qty = gets.chomp.to_i
            for item in order.order
                if item[:item] == new_order
                    item[:qty] += order_qty
                    puts "You have ordered #{item[:qty]} #{item[:item]}(s)"
                    break
                end
            end
            clear
            puts ""
            p order
        elsif new_order == "F"
            currently_ordering = false
        else 
            item_not_found +=1
        end
    end
    if item_not_found > items.length - 1
        clear
        puts "Ooops, something went wrong"
        puts "Please type in your selection:"
        puts
    end
end

puts "Total Cost:"
for item in items
    item.total_cost()
end