
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

    def add_drink(order_qty)
        @qty += order_qty    
    end

    def total_cost
        '%.2f' % (@qty * (@price - @cost))
    end

    def receipt
        puts
    end

end

def clear
    puts "\e[2J\e[f"
end

cocktails = Order.new("cocktail", 22, 8)
beers = Order.new("beer", 12, 3)
water = Order.new("water", 6, 0.15)

currently_ordering = true

while currently_ordering
    puts "What would you like to order?"
    puts "Press (1) for cocktail"
    puts "Press (2) for beer"
    puts "Press (3) for water"
    puts "Press (4) to finish ordering"
    new_order = gets.chomp.to_i 
    if new_order == 1
        clear
        puts "How many cocktails would you like to order?"
        order_qty = gets.chomp.to_f
        cocktails.add_drink(order_qty)
        clear
        puts "You ordered #{cocktails.qty} cocktail(s)!"
        puts
    # elsif new_order == 2
    #     order[:beer] += 1
    #     clear
    #     puts "You ordered a beer"
    #     puts
    # elsif new_order == 3
    #     order[:water] += 1
    #     clear
    #     puts "You ordered a water"
    elsif new_order == 4
        clear
        currently_ordering = false
    else
        clear
        puts "Oops, you pressed the wrong button!"
        puts
    end
end

# puts "You have ordered #{order[:cocktail]} cocktails, #{order[:beer]} beers, and #{order[:water]} waters"

puts "Your Order:"
puts "#{cocktails.drink} x#{cocktails.qty}: $#{cocktails.total_cost}"
puts "Order Total: $#{cocktails.total_cost}"