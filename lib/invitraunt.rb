require 'rubygems'
require 'twilio-ruby'


class Invitraunt

	def orders
		@orders ||= []
	end

	# def print_menu
	# 	puts "\nWelcome to InVitraunt! We have all your favourite animal templates gestated to taste!\n\n"
	# 	dish_num = 0
	# 	dishes.each do | dish, price | dish_num += 1
	# 		print "#{dish_num}. #{dish.capitalize} #{align_price(price, dish)}\n"
	# 	end
	# 	puts ""
	# end

	def add_order(order)
		orders << order
	end

end

# invitraunt = Invitraunt.new
# invitraunt.print_menu
# invitraunt.take_order