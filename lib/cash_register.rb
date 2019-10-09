require 'pry'

class CashRegister

    attr_accessor :total, :items, :last_transaction
    attr_reader :discount

    def initialize(discount=0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item(title, price, quantity=1)
        @total += (price * quantity)
        @last_transaction = (price * quantity)
        while quantity > 0 
            @items << title
            quantity -= 1
        end
        
    end

    def apply_discount
        if @discount > 0
            @total = @total - @discount * 10
            "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @items
    end

    def void_last_transaction()
        @total -= @last_transaction
    end

end

#total = price * number_of_items