class CashRegister
  attr_accessor :total, :discount, :title, :price, :quantity, :last_transaction 
 
def initialize(discount = 0)
@total = 0
@discount = discount
@items = []
@last_transaction = last_transaction
end

def total 
  @total
end

def add_item(title, price, quantity = 1)
  @title = title 
  @price = price
 @total = @price * quantity + @total
 quantity.times {|title| @items << @title}
end

def apply_discount
 if @discount != 0
  discountpercentage = @discount.to_f / 100 
  newprice = @total * discountpercentage
  @total = @total - newprice
  @total = @total.to_i
  return "After the discount, the total comes to $#{total}."
else
  return "There is no discount to apply."
end
end

def items 
@items
end 

def void_last_transaction
@total = @total - @last_transaction
  
end

end