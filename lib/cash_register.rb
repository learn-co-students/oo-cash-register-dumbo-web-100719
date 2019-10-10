class CashRegister
    attr_accessor :total, :discount

    def initialize(discount = 0)
        @discount = discount
        @total = 0
    end

    def add_item(item_name, price, quantity = 1)
        self.total += (price * quantity
    end
end
