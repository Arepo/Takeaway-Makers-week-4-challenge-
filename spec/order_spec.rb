require 'order'

describe Order do

	describe 'accumulation' do

		let(:order) { Order.new }

		it 'can accumulate an order of two rabbit eggs' do
			order.add_dishes(2, "rabbit egg")
			expect(order.full_order).to eq ["rabbit egg", "rabbit egg"]
		end

		it 'can add the prices of a full order together' do
			order.add_dishes(2, "rabbit egg")
			order.add_dishes(1, "vat burger")
			expect(order.total_price).to eq 1_300_000
		end
	end


	describe 'passing order' do

		it 'can pass to the restaurant' do
			invitraunt = Invitraunt.new
			menu = Menu.new
			order = Order.new(menu, invitraunt)
			order.add_dishes(1, "vat burger")
			expect(invitraunt).to receive(:add_order)
			order.pass
		end
	end
end