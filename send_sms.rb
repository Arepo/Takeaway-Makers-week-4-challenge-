require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC3c9df15a58c4d45dbb8cfa185448e5c3'
auth_token = '2f07288b836c254647097d3b7aefe53f'
@client = Twilio::REST::Client.new account_sid, auth_token

message = @client.account.messages.create(:body => "testing (this is Sasha)", :to => "+447852357317", :from => "+441275595066")

puts message.sid