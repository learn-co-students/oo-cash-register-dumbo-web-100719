class CashRegister
    attr_accessor :total, :item, :price , :quantity, :items, :all_items
    attr_reader :discount

   
  def initialize(discount = 0)
    @total = 0 
    @discount = discount
    @items = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    @quantity = quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else
      @items << item
    end
  end

  def apply_discount
    if (@discount > 0)
      @amount_off = (@total * @discount)/ 100
      @total -= @amount_off
      return  "After the discount, the total comes to $#{@total}." 
    else
      return "There is no discount to apply."
    end
  end

   def void_last_transaction
     if(@quantity > 1 )
      @total -= @price*@quantity
     else
      @total -= @price 
     end
   end
end
