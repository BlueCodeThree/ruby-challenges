class Order
    attr_accessor :order

    def initialize
        @order = []
    end

    def push(item)
        @order.push(item)
    end

end