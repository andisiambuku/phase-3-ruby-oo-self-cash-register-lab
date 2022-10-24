class CashRegister 
    attr_accessor :discount, :total, :last_trans,:item
    def initialize(discount = 0)
        @discount= discount
        @total=0
        @item= []
    end

    def add_item(title,price,quantity=1)
        self.last_trans= price * quantity
        self.total += self.last_trans
        quantity.times do
            self.item << title
        end
    end

    def apply_discount
        if self.discount != 0
            employee_discount = (100 - self.discount)/100
            self.total = (self.total * employee_discount)
            "After the discount, the total comes to $#{self.total}"
        else
            "There is no discount to apply."
        end
    end 
    def void_last_transaction
        self.total -= self.last_trans
    end
end
