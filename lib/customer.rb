require_relative "menu"
require_relative "order"

class Customer

	def initialize(menu = Menu.new, order = Order.new)
		@menu = menu
		@order = order
	end

	attr_reader :menu, :order

	def request(number_of, item)
		order.add_dishes(number_of, item)
	end

end