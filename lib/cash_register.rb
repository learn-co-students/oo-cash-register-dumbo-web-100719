require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items
    attr_writer :add_item, :apply_discount

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(item_name, price, quantity = 1)
        @item_name = item_name
        @items << item_name
        self.total += (price * quantity)
    end

    def apply_discount
        
        if @discount <= 0.0
            "There is no discount to apply."
        else
        self.total = @total - (@total * (@discount.to_f/100.to_f))
        "After the discount, the total comes to $#{self.total.ceil}."
        end

    end
end
