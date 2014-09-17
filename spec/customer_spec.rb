require 'customer'
require 'menu'

describe Customer do 

	let(:order) { Order.new }
	let(:menu) { Menu.new }
	let(:customer) { Customer.new(menu, order) }

	it 'can request items from the menu' do
		customer.request(2, "vat burger")
		expect(order.items_in_order).to eq ["vat burger", "vat burger"]
	end

	
end