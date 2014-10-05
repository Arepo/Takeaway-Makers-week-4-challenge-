require 'customer'
require 'menu'

describe Customer do 

	let(:order) { Order.new }
	let(:customer) { Customer.new(order) }

	it 'can request items from the menu' do
		customer.request(2, "vat burger")
		expect(order.items_in_order).to eq ["vat burger", "vat burger"]
	end

	it "can finalise the order, prompting a request to estimate the price" do
		expect(order).to receive(:estimate_price)
		customer.finalise_order
	end

	it "on finalising, passes the order to the invitraunt if no error is raised" do
		allow(order).to receive(:estimate_price)
		expect(order).to receive(:pass)
		customer.finalise_order
	end
end