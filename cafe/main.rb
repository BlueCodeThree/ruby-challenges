# ---------------------------------------------------------------------
#                              Cafe Project
#                          by Carlie Hamilton
#  Challenge to get a order for a cafe and print out a receipt          
# ---------------------------------------------------------------------
require_relative 'item'

# initializing some items
items = [
    lattes = Item.new("Latte", 4, 2, 6),
    scones = Item.new("Scone", 5, 3, 2),
    tea = Item.new("Tea", 3, 0.50, 3),
    cake = Item.new("Cake", 5, 2)
]

# Making a somewhat pretty header
title = "| --  ~*  Welcome to Carlie's Cafe  *~  -- |"
clear
decorate("-", title)
puts title
decorate("-", title)
puts

# Main ordering loop - customer chooses what items they want
currently_ordering = true

while currently_ordering
    puts "~* MENU *~".center(title.length, " ")
    for item in items
        puts item.menu.center(title.length, " ")
    end
    puts
    puts "What would you like to order?"
    puts "** Type in your selection **"
    puts "Press (f) to finish ordering"

    selection = gets.chomp.capitalize
    item_not_found = 0

    # searching to see if the user input == the name of the item. 
    # if so, add it to the order. 
    # My idea for putting them in an array and using a loop like this is so that
    # if you add more items you don't have to modify the rest of the code. 
    for item in items
        if selection == item.item_name
            item.new_order
            break
        
        # finish ordering
        elsif selection == "F"
            clear
            currently_ordering = false

        # if it doesn't find the item... this is a count so that it knows to tell the user te try again.
        else
            item_not_found += 1
        end
    end

    # after it goes through all the items, if it doesn't find an item, it tells the user to try again. 
    if item_not_found > items.length - 1
        clear
        puts "Ooops, something went wrong"
        puts "Please type in your selection:"
        puts
    end
end

# prints out the total of each item
puts "Your order:"
order_receipt(items)
puts

# gets the order total
order_total(items)

# gets the order's profit, for admin use only! We have great security here at Carlie's Cafe!
puts
puts
puts "Are you admin? (y/n)"
admin = gets.chomp.downcase
case admin
when "y", "yes"
    puts order_profit(items)
else
    return
end
