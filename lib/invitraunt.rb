require_relative 'my_inject'

class Invitraunt

	def initialize
		@full_order = []
	end

	attr_reader :full_order

	def total_price	
		corresponding_prices.my_inject {|net_price, item| net_price + item }
	end

	def corresponding_prices
		full_order.map {|dish| dishes[dish] }
	end

	def dishes
		{"vat burger" => 300_000, "rabbit eggs" => 500_000, "raptor nugget x6" => 2}
	end

	def order_dishes(quantity, dish)
		quantity.times { @full_order << dish }
	end

end
