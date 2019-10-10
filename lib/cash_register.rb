require 'pry'
class CashRegister

    attr_accessor :total, :discount, :items

    def initialize(discount = 0)

        @total = 0
        @discount = discount
        @items = []
        
    end

    
    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times do 
        items << title
        @transaction = price * quantity
        # binding.pry
        end
    end

    def apply_discount
        if @discount > 0
            @total = @total - @discount * 10
            return "After the discount, the total comes to $#{@total}."
        else
            return "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @transaction
        #total uses the subtract and operator on the transaction helper method in order to delete the last transaction made
        
        
    end

    


end
