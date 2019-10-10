class CashRegister
    attr_accessor :total, :discount
    attr_writer :add_item

    def initialize(discount = 0)
        @discount = discount
        @total = 0
    end

    def add_item(item_name, price, quantity = 1)
        @item_name = item_name
        self.total += (price * quantity
    end
end
