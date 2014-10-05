require 'rubygems'
require 'twilio-ruby'

message_body = gets.chomp

# Get your Account Sid and Auth Token from twilio.com/user/account
account_sid = 'AC2d5717e98f19a84d6f60955167758ee9'
auth_token = '81dbf680c0d83cec9dfa9a8d52426808'
@client = Twilio::REST::Client.new account_sid, auth_token
 
message = @client.account.messages.create(:body => message_body,
    :to => "+447852357317",     # Replace with your phone number
    :from => "++441291606033")   # Replace with your Twilio number
puts message.sid