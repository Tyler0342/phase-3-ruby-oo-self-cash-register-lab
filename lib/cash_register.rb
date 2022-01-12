class CashRegister 

    attr_accessor :total, :discount, :items, :previous_transaction

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
end

def add_item(title, amount, quantity = 1)
    self.previous_transaction = amount * quantity
    self.total += self.previous_transaction
    quantity.times do 
        self.items << title
        #@total += (price * quantitty)
    end
end

def apply_discount
if self.discount != 0
    discount_1 = (100.0 - self.discount.to_f) / 100
    self.total = (self.total * discount_1).to_i
    "After the discount, the total comes to $#{self.total.to_i}."
else
    "There is no discount to apply."
end
end

def void_last_transaction 
    self.total -= self.previous_transaction
end

end

