require 'pry'
class CashRegister
    attr_accessor :total, :discount, :last_price, :items

    def initialize(discount=0)
        @total = 0
        @discount= discount
    end

    def add_item(title,price,quantity=1)
        # adding a value to parameter allows us to make it OPTIONAL
        self.total += price * quantity
        @last_price = price * quantity
        @items ||= []
        quantity.times do
            @items << title
        end
        # another way to fill an array
        # @items.fill(title,@items.size,quantity)
    end 
    
    def apply_discount
        if @discount == 0
            p "There is no discount to apply." 
        else
        self.total -= ((self.discount.to_f/100) * self.total).to_i
        p "After the discount, the total comes to $#{self.total}."
        end
    end

    def void_last_transaction
        self.total -= self.last_price
    end


   
end

cash = CashRegister.new
cash.add_item("mac",1000)
cash.add_item("pc",1000)
cash.add_item("book",50)
cash.add_item("apples",2,5)
cash_dis = CashRegister.new(20)
cash_dis.add_item("mac",1000)
cash_dis.apply_discount

# binding.pry

