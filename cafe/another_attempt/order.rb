# class for the order
class Order 
    
    def initialize
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

end