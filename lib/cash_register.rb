require 'pry'
class CashRegister
    attr_accessor :total, :discount
    attr_writer :add_item, :apply_discount

    def initialize(discount = 0)
        @discount = discount
        @total = 0
    end

    def add_item(item_name, price, quantity = 1)
        @item_name = item_name
        self.total += (price * quantity)
    end

    def apply_discount
        @discount = 0.2
        self.total = total - total * 0.2
        "After the discount, the total comes to $#{self.total.ceil}."

    end
end
