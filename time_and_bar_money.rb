
# Part Three:
# Cocktails sell for $22, and cost $8 to make
# Beer sell for $12, and cost $3 to pour
# Water sell for $6, and cost $0.15 to make

# Print out the total profit for the orders you have

class Order
    attr_accessor :drink, :price, :cost, :qty

    def initialize(drink, price, cost, qty = 0)
        @drink = drink
        @price = price
        @cost = cost
        @qty = qty
    end

    # adding a drink to the order
    def add_drink(order_qty)
        @qty += order_qty    
    end

    # calculating the total cost
    def total_cost
        self.qty * self.price
    end

    # calculating the profit
    def profit
        @qty * (@price - @cost)
    end

    # print out for the receipt
    def receipt
        puts "#{self.drink} x#{self.qty} @ $#{'%.2f' % self.price} each: $#{self.total_cost}"
    end

end

def clear
    puts "\e[2J\e[f"
end

# adding the data for the drinks into the Order class
cocktails = Order.new("cocktail", 22, 8)
beers = Order.new("beer", 12, 3)
water = Order.new("water", 6, 0.15)

# putting the orders in
currently_ordering = true

while currently_ordering
    puts "What would you like to order?"
    puts "Press (1) for #{cocktails.drink}s"
    puts "Press (2) for #{beers.drink}s"
    puts "Press (3) for #{water.drink}"
    puts "Press (4) to finish ordering"
    new_order = gets.chomp.to_i 
    if new_order == 1
        clear
        puts "How many #{cocktails.drink}s would you like to order?"
        order_qty = gets.chomp.to_i
        cocktails.add_drink(order_qty)
        clear
        puts "You ordered #{cocktails.qty} #{cocktails.drink}(s)!"
        puts
    elsif new_order == 2
        clear
        puts "How many #{beers.drink}s would you like to order?"
        order_qty = gets.chomp.to_i
        beers.add_drink(order_qty)
        clear
        puts "You ordered #{beers.qty} #{beers.drink}(s)!"
        puts
    elsif new_order == 3
        clear
        puts "How many #{water.drink}s would you like to order?"
        order_qty = gets.chomp.to_i
        water.add_drink(order_qty)
        clear
        puts "You ordered #{water.qty} #{water.drink}(s)!"
        puts
    elsif new_order == 4
        clear
        currently_ordering = false
    else
        clear
        puts "Oops, you pressed the wrong button!"
        puts
    end
end

# printing out the total orders, how much it will cost
puts "Your Order:"
if cocktails.qty >= 1
    cocktails.receipt
end
if beers.qty >= 1
    beers.receipt
end
if water.qty >= 1
    water.receipt
end

# Is there a way to change this into a function where it is ok with adding more drinks? ::thinking::
puts "Order Total: $#{'%.2f' % (cocktails.total_cost.to_f + beers.total_cost.to_f + water.total_cost.to_f)}"

puts
puts
puts "Order Profit:$#{'%.2f' % (cocktails.profit.to_f + beers.profit.to_f + water.profit.to_f)} "