require 'pry'
class CashRegister

    def initialize(discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def discount
        @discount
    end
    attr_accessor :total
    def add_item(title, price, quantity = 1)
        @price = price * quantity
        @total += (price * quantity)
        quantity.times {@items << title}
        
    end
    attr_accessor :price
    def apply_discount
        if @discount != 0
            @total = @total * (1 - (@discount / 100.0))
            @total = @total.to_i
            "After the discount, the total comes to $#{@total}."
        else
             "There is no discount to apply."
        end
    end
    def items
        @items
    end
    def void_last_transaction
        # binding.pry
        @total -= @price
        

    end




end
