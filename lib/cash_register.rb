class CashRegister

    attr_accessor :discount, :total, :new_total, :items


    def initialize (discount = 0)
        @total = 0
        @discount = discount
        @items = []
    end

    def add_item (title, price, quantity = 1)
        self.new_total = price * quantity
        self.total += self.new_total
        quantity.times do
            self.items << title
        end
    end

    def apply_discount
        if self.discount != 0
            percent_off = (100.0 - self.discount.to_f) / 100
            self.total = (self.total * percent_off).to_i
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total -= self.new_total
    end


end
