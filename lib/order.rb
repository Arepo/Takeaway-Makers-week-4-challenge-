require_relative 'invitraunt'
require_relative 'menu'

class Order

	attr_reader :items_in_order, :menu, :invitraunt

	attr_accessor :estimated_price

	def initialize(menu = Menu.new, invitraunt = Invitraunt.new)
		@invitraunt = invitraunt
		@items_in_order = []
		@menu = menu
	end

	def estimate_price
		puts "What should the total price come to?"
		self.estimated_price = gets.chomp.to_f
		confirm_price
	end

	def pass
		invitraunt.add_order(self.items_in_order)
	end

	def corresponding_prices
		items_in_order.map {|dish| menu.dishes[dish] }
	end

	def add_dishes(quantity, dish)
		quantity.times { items_in_order << dish }
	end

	def confirmed_price
		corresponding_prices.inject { |net_price, item| net_price + item }
	end

	def confirm_price
		raise "Total price is incorrect" unless confirmed_price == estimated_price
	end

end
