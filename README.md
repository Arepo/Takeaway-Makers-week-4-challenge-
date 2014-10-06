Takeaway program
========

This was our first interaction with an external API. The original specs of the challenge are given below. Since we didn't want to buy Twilio accounts, the program can only send texts to me.

To use it, require 'lib/customer' in irb. I think in retrospect I did this backwards, but creating a customer instance will also create associated customer.order, customer.menu, and (ick) customer.order.invitraunt instances.

Customer's request items with the #request(integer, string-corresponding-to-menu-items) method one type of dish at a time, then #finalise_order.

The latter will prompt them for the price they expect to pay, and raise an error if it doesn't add up. If it does add up, the only phone number verified for the Twilio account (ie mine) will be sent a text telling them their order will arrive before (an hour from when they order).

### Specs

Write a Takeaway program. 
Implement the following functionality:

* list of dishes with prices
* placing the order by giving the list of dishes, their quantities and a number that should be the exact total. If the sum is not correct the method should raise an error, otherwise the customer is sent a text saying that the order was placed successfully and that it will be delivered 1 hour from now, e.g. "Thank you! Your order was placed and will be delivered before 18:52".
* The text sending functionality should be implemented using Twilio API. You'll need to register for it. It’s free.
* Use twilio-ruby gem to access the API
* Use a Gemfile to manage your gems
* Make sure that your Takeaway is thoroughly tested and that you use mocks and/or stubs, as necessary to not to send texts when your tests are run
* However, if your Takeaway class is loaded into IRB and the order is placed, the text should actually be sent

A free account on Twilio will only allow you to send texts to "verified" numbers. Use your mobile phone number, don't worry about the customer's mobile phone.
