# This challenge has three parts. Use all you have learned to
# implement the solution. Use methods to keep your code DRY and
# clean. Use data structures that are appropriate.

# Part 1
# You are working at a cafe where you have a current backlog of orders:
# 6 lattes
# 2 scones
# and
# 3 teas

# Part 2
# Lattes sell for $4, and cost $2 to make
# Scones sell for $5, and cost $3 to make
# Tea sells for $3, and cost $0.50 to make

# Print out the total profit for the orders you have.

class Order
    attr_accessor :qty
    attr_reader :item, :price, :cost

    def initialize(item, price, cost, qty=0)
        @item = item
        @price = price
        @cost = cost
        @qty = qty
    end

    # to get how many of each drink
    def new_order
        clear
        puts "How many #{item}s would you like to order?"
        order_qty = gets.chomp.to_i
        add_drink(order_qty)
        clear
        puts "You ordered #{@qty} #{@drink}(s)!"
        puts
    end

    # adding a drink to the order
    def add_drink(order_qty)
        @qty += order_qty    
    end

    def profit
        return @qty * (@price - @cost)
    end
end


lattes = Order.new("lattes", 4, 2)
scones = Order.new("scones", 5, 3)
tea = Order.new("tea", 3, 0.50)

lattes.qty = 6
scones.qty = 2
tea.qty = 3

puts "#{lattes.name} ordered: #{lattes.qty}. Profit: #{lattes.profit}"
puts "#{scones.name} ordered: #{scones.qty}. Profit: #{scones.profit}"
puts "#{tea.name} ordered: #{tea.qty}. Profit: #{tea.profit}"
puts "total profit: #{(tea.profit + scones.profit + tea.profit).round(2)}"  
# Write a program that asks the customer for their order. The customer
# will only order one item.
#   if they order a latte, add one to the number of lattes you need to make,
#   if they order a scone, add one to the number of scones you need to serve,
#   if they order a tea, add one to the number of teas you need to make
currently_ordering = true

while currently_ordering
    puts "What would you like to order?"
    puts "Press (1) for lattes"
    puts "Press (2) for scones"
    puts "Press (3) for tea"
    puts "Press (4) to finish ordering"

    new_order = gets.chomp.to_i

    case new_order
    when 1
        orders[:lattes] += 1
    when 2
        orders[:scones] += 1
    when 3
        orders[:teas] +=1
    when 4
        currently_ordering = false
    else
        clear
        puts "Oops, you pressed the wrong button!"
        puts
    end
end

# Print the final order so you know what to make.
puts "To make: #{orders}"



# Part 3
# Write a program that asks the user for their order.
# Allow the user to input mutiple items and to specify quantities.
# When the order is complete:
#   Print the order
#   Print the total price

# Example:
# What would you like to order (latte, scone, tea)? Type (q)uit to quit.
# latte
# How many?
# 2
# Anything else? Type (q)uit to quit.
# tea
# How many?
# 1
# Anything else? Type (q)uit to quit.
# coffee
# I'm sorry, we don't serve that. Would you like latte, scone, or tea? Type (q)uit to quit.
# q
# Thank you! Your order:
# 2 latte
# 1 tea
# Order total: $11.00

