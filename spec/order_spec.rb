require 'order'
require 'byebug'

describe Order do

	describe 'accumulation' do

		let(:order) { Order.new }

		it 'can accumulate an order of two rabbit eggs' do
			order.add_dishes(2, "rabbit egg")
			expect(order.items_in_order).to eq ["rabbit egg", "rabbit egg"]
		end

		it 'accepts a user calculation of the price' do
			expect(order).to receive(:puts).with("What should the total price come to?")
			expect(order).to receive(:gets).and_return("5")
			allow(order).to receive(:confirm_price)
			order.estimate_price
			expect(order.estimated_price).to eq 5.0
		end

		it 'can add the prices of a full order together' do
			order.add_dishes(2, "rabbit egg")
			order.add_dishes(1, "vat burger")
			expect(order.confirmed_price).to eq 1_300_000
		end

		it 'does not raise an error if the prices match' do
			order.add_dishes(2, "rabbit egg")
			order.add_dishes(1, "vat burger")
			allow(order).to receive(:gets).and_return("1300000")
			expect{order.estimate_price}.not_to raise_error
		end

		it "checks the estimated price against the confirmed price and raises an error if they don't match" do
			order.add_dishes(2, "rabbit egg")
			order.add_dishes(1, "vat burger")
			allow(order).to receive(:gets).and_return("5")
			expect{order.estimate_price}.to raise_error("Total price is incorrect")
		end

	end


	describe 'passing order' do

		it 'can pass to the restaurant' do
			invitraunt = Invitraunt.new
			menu = Menu.new
			order = Order.new(menu, invitraunt)
			order.add_dishes(1, "vat burger")
			order.pass
			expect(invitraunt.orders).to eq [["vat burger"]]
		end
	end
end