require 'rubygems'
require 'twilio-ruby'


class Invitraunt

	def initialize
		account_sid = 'AC2d5717e98f19a84d6f60955167758ee9'
		auth_token = '81dbf680c0d83cec9dfa9a8d52426808'
		@client = Twilio::REST::Client.new account_sid, auth_token
	end

	def orders
		@orders ||= []
	end

	def add_order(order)
		orders << order
	end

	def process_orders
		message = @client.account.messages.create(:body => "Thank you! Your order was placed and will be delivered by #{Time.new + 3600}",
    	:to => "+447852357317",     # Replace with your phone number
    	:from => "++441291606033")   # Replace with your Twilio number
		puts message.sid
	end

end
