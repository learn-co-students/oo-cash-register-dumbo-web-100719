require 'pry'
class CashRegister

    attr_accessor :discount, :total, :price, :title, :quantity, :items 

    def initialize(discount=0)
        @discount = discount 
        @total = 0
        @items = []
    end

    def total
        @total
    end

    def add_item(title, price, quantity=1)
        @title = title
        @quantity = quantity 
        @price = price 
        @total += (@price * @quantity)  
        @quantity.times do 
            @items << @title 
        end 
        @last = @price * @quantity
    end 

    def apply_discount 
        if @discount != 0
            @discount = (@discount * (0.01))
            @total -= (@total * @discount)
            @total = @total.to_i
            return "After the discount, the total comes to $#{@total}."
        else 
            return "There is no discount to apply."
        end 
    end 

    def items 
        @items 
    end 

    def void_last_transaction
        @total = @total - @last 
    end 

end 


   



