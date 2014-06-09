require_relative 'my_inject'
require 'rubygems'
require 'twilio-ruby'


class Invitraunt

	def initialize
		@full_order = []
	end

	attr_reader :full_order

	def total_price	
		corresponding_prices.my_inject { |net_price, item| net_price + item }
	end

	def corresponding_prices
		full_order.map {|dish| dishes[dish] }
	end

	def dishes
		{"vat burger" => 300_000, "rabbit eggs" => 500_000, "raptor nuggets x6" => 2}
	end

	def order_dishes(quantity, dish)
		quantity.times { @full_order << dish }
	end

	def print_menu
		puts "\nWelcome to InVitraunt! We have all your favourite animal templates gestated to taste!\n\n"
		dish_num = 0
		dishes.each do | dish, price | dish_num += 1
			print "#{dish_num}. #{dish.capitalize} #{align_price(price, dish)}\n"
		end
		puts ""
	end

	def string_price(price)
		'£' + price.to_s + ".00"
	end

	def align_price(price, former_string)
		string_price(price).rjust(50 - former_string.length)
	end

	def translate(dish)
		case dish.to_i
		when 1
			"vat burger"
		when 2
			"rabbit eggs"
		when 3
			"raptor nuggets x6"
		end
	end

	# def take_order
	# 	dish = nil
	# 	until dish == 'end'
	# 		puts "Please enter the menu number of your item, or 'end', if you've finished your order"
	# 		dish = gets.chomp.downcase
	# 		unless dish == 'end'
	# 			dish = translate(dish)
	# 			puts "How many #{dish}s would you like to order?"
	# 			quantity = gets.chomp.to_i
	# 			order_dishes(quantity, dish)
	# 		end
	# 	end
	# end

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