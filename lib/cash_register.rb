require 'pry'

class CashRegister
    
 attr_accessor :total, :discount, :price, :quantity, :new_total, :items
    
 
    
    def initialize(discount = 0) 
        @total = 0
        @discount = discount
        @items = [] 
        #binding.pry
    end

    def add_item(title, price, quantity = 1)
        @title = title
        @quantity = quantity
        @price = price
        @total = @total + (@price * @quantity)   
        #@new_total = @total 
        @quantity.times do 
            @items << @title
        end
        @last = @price * @quantity
        # @quantity = quantity 
    end

    def apply_discount
        @discount = (@discount * (0.01))
        @total -= (@discount * @total)
        @total = @total.to_i
            if @discount > 0
                return "After the discount, the total comes to $#{@total}." 
            else
                return  "There is no discount to apply."

          end
    end


def items
    @items
end

def void_last_transaction
    @total = @total - @last
    
end

end