Takeaway - Abandon Hope, all Ye who Enter Here
========

Most of the custom code is in place for what should be a very basic takeaway model (you can see the specs below - most of the custom code is in place above), but I've been unable to get through Twilio (initially its Captcha was impenetrable; now they've revised it a few weeks on, but every time I try to send a message to a verified number using their own code, it claims the number is unverified). 

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
