class Order

	def initialize(menu = Menu.new, invitraunt = Invitraunt.new)
		@full_order = []
		@menu = menu
	end

	attr_reader :full_order, :menu

	def pass
	end

	def corresponding_prices
		full_order.map {|dish| menu.dishes[dish] }
	end

	def add_dishes(quantity, dish)
		quantity.times { @full_order << dish }
	end

	def total_price	
		corresponding_prices.inject { |net_price, item| net_price + item }
	end

end
