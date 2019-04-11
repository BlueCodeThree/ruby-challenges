# ---------------------------------------------------------------------
#               Cafe Project
#       by Carlie Hamilton
#  Challenge to get a order for a cafe and print out a receipt          
# ---------------------------------------------------------------------
require_relative 'order'

# initializing some items
items = [
    lattes = Order.new("Latte", 4, 2, 6),
    scones = Order.new("Scone", 5, 3, 2),
    tea = Order.new("Tea", 3, 0.50, 3),
    cake = Order.new("Cake", 5, 2)
]

# Making a somewhat pretty header
decorate = "-"
title = "| -- Welcome to Carlie's Cafe -- |"
clear
puts decorate * title.length
puts title
puts decorate * title.length

# Main ordering loop - customer chooses what items they want
currently_ordering = true

while currently_ordering
    puts "What would you like to order?"
    puts "Press (1) for #{lattes.item_name}s"
    puts "Press (2) for #{scones.item_name}s"
    puts "Press (3) for #{tea.item_name}s"
    puts "Press (4) for #{cake.item_name}s"
    puts "Press (5) to finish ordering"

    selection = gets.chomp.to_i

    # adds the item and amount to the order
    if selection == 1
        lattes.new_order
    elsif selection == 2
        scones.new_order
    elsif selection == 3
        tea.new_order
    elsif selection == 4
        cake.new_order
    elsif selection == 5
        clear
        currently_ordering = false
    else
        clear
        puts "Oops, you pressed the wrong button!"
        puts
    end
end

# prints out the total of each item
puts "Your order:"
lattes.receipt
scones.receipt
tea.receipt
cake.receipt
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
