require 'pry'

class CashRegister

  attr_accessor :discount, :total, :items, :item_price, :item_quantity

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end  

  def add_item(title, price, quantity = 1)
    @total += price * quantity
    quantity.times {@items << title}
    @item_price = price
    @item_quantity = quantity
  end

  def apply_discount
    @total = @total - (@total * (discount.to_f / 100)).to_i
    if discount > 0
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= (@item_price * @item_quantity)
    
  end

end