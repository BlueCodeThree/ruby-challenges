# Holds the items available to order, calculates total cost and profit for the items
class Item
    attr_accessor :qty
    attr_reader :item_name, :price, :cost

    def initialize(item_name, price, cost, qty=0)
        @item_name = item_name
        @price = price
        @cost = cost
        @qty = qty
    end

    # gets the amount of items a customer would like to order
    def new_order
        clear
        puts "How many #{item_name}s would you like to order?"
        order_qty = gets.chomp.to_i
        add_drink(order_qty)
        clear
        puts "You ordered #{@qty} #{@item_name}(s)!"
        puts
    end

    # adds an item to the order
    def add_drink(order_qty)
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

# gets the order receipt
def order_receipt(items)
    for item in items
        item.receipt
    end
end

# gets the order total
def order_total(items)
    order_total = 0
    for item in items
        order_total += item.total_cost
    end
    puts "Order Total: $#{'%.2f' % order_total}"
end

# gets the profit for the item
def order_profit(items)
    order_profit = 0
    for item in items
        order_profit += item.profit
    end
    puts "Order Profit: $#{'%.2f' % order_profit}"
end

# handy clear function
def clear
    puts "\e[2J\e[f"
end