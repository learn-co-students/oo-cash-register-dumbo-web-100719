require 'pry'
class CashRegister

    attr_accessor :total, :discount , :title , :price, :quantity, :last_item
    
    def initialize (discount = 0 )
        @discount = discount
        @total = 0
        @items = []
    
    end

    def add_item (title , price, quantity =1)
        @quantity = quantity
        @price = price
        self.total += price * @quantity 
        
        @quantity.times do 
        @items << title
        end

        @last_item = price * quantity 

        #binding.pry
    end

    def apply_discount
        if @discount !=0 
            @total = @total - (@discount *10)
            return "After the discount, the total comes to $#{total}."
        else
            return "There is no discount to apply."
        end

    end

    def items
        @items 
        #binding.pry
    end
    
    def void_last_transaction
        @total -= @last_item 
    

    end


end
