require_relative "menu"
require_relative "order"

class Customer

	def initialize(order = Order.new)
		@order = order
	end

	attr_reader :menu, :order

	def request(number_of, item)
		order.add_dishes(number_of, item)
	end

	def finalise_order
		order.estimate_price
		order.pass
	end

end