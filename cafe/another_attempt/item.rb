# Class for the items in the cafe. 
class Item
    attr_accessor :qty
    attr_reader :item_name, :price, :cost

    def initialize(item_name, price, cost, qty=0)
        @item_name = item_name
        @price = price
        @cost = cost
        @qty = qty
    end

    # get the item inforamtion for the menu
    def menu
        return "#{@item_name}: $#{'%.2f' % @price}"
    end

    # gets the amount of items a customer would like to order
    def new_order
        clear
        puts "How many #{item_name}s would you like to order?"
        order_qty = gets.chomp.to_i
        add_item(order_qty)
        clear
        puts "You ordered #{@qty} #{@item_name}(s)!"
        puts
    end

    # adds an item to the order
    def add_item(order_qty)
        return  @qty += order_qty
    end

    # prints a reciept
    def receipt
        if @qty >= 1
            puts "#{@item_name} x#{@qty} @ $#{'%.2f' % @price} each: $#{'%.2f' % total_cost}"
        end
    end

    # calculates the total cost of the item for the customer
    def total_cost
        return @qty * @price
    end

    # calculates the profit
    def profit
        return @qty * (@price - @cost)
    end
end

# handy clear function
def clear
    puts "\e[2J\e[f"
end

# make me beautiful - decorating the header - potential to make other things pretty too
def decorate(pretty, thingy)
    puts pretty * thingy.length
end