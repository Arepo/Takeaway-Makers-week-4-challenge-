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

"Write a Takeaway program. 
Implement the following functionality:
list of dishes with prices
placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. 'Thank you! Your order was placed and will be delivered before 18:52'.
The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
Use twilio-ruby gem to access the API
Use a Gemfile to manage your gems
Make sure that your Takeaway is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent
A free account on Twilio will only allow you to send texts to 'verified' numbers. Use your mobile phone number, don't worry about the customer's mobile phone.
"