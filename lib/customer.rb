class Customer

	def initialize(menu = Menu.new, order = Order.new)
		@menu = menu
		@order = order
	end

	attr_reader :menu, :order

	def request(number_of, item)
		number_of.times do
			order.add_dishes(menu.dishes("vat burger"))
		end
	end

end