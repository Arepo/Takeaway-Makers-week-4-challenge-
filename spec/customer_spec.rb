require 'customer'
require 'menu'

describe Customer do 

	let(:order) { Order.new }
	let(:menu) { Menu.new }
	let(:customer) { Customer.new(menu, order) }

	it 'can request items from the menu' do
		allow(menu).to receive(:dishes).with("vat burger")
		expect(order).to receive(:add_dishes).twice
		customer.request(2, "vat burger")
	end

	
end