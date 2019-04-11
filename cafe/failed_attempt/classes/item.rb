require_relative 'order.rb'

class Item
    attr_reader :name, :initial_qty, :price, :cost
    def initialize(name, price, cost, initial_qty=0)
        @name = name
        @price = price
        @cost = cost
        @initial_qty = initial_qty
    end

    def menu
        return "#{name}: $#{price}"
    end

    def profit
        return @price - @cost
    end

    def total_cost(qty)
        return qty * @price
    end

    def receipt(qty)
        puts "#{@name} x#{qty} @ $#{'%.2f' % @price} each: $#{'%.2f' % total_cost(qty)}"
    end

end

# clear the screen
def clear
    puts "\e[2J\e[f"
end