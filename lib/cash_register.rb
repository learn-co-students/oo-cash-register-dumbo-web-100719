require 'pry'
class CashRegister
    attr_accessor :total, :discount, :items, :last_trans
    attr_writer :add_item, :apply_discount

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items = []
    end

    def add_item(item_name, price, quantity = 1)
        @item_name = item_name
        @last_trans = [item_name,price,quantity]
        @items << item_name
        if quantity > 1
            (quantity-1).times do 
                @items << item_name
            end
        end

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

    def void_last_transaction
        @total = @total - (@last_trans[1] * @last_trans[2])
    end
end
