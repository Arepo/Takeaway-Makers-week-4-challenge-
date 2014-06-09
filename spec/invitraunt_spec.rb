require 'invitraunt'

describe 'invitraunt' do 

	let(:invitraunt) { Invitraunt.new }

	context 'dishes' do
		it 'knows a price for vat burger' do
			expect(invitraunt.dishes["vat burger"]).to eq 300_000
		end

		it 'knows a price for rabbit egg' do
			expect(invitraunt.dishes["rabbit egg"]).to eq 500_000
		end

		it 'knows a price for velociraptor nuggets' do
			expect(invitraunt.dishes["raptor nuggets x6"]).to eq 2
		end

		it 'can accumulate an order of two rabbit eggs' do
			invitraunt.order_dishes(2, "rabbit egg")
			expect(invitraunt.full_order).to eq ["rabbit egg", "rabbit egg"]
		end

		it 'can add the prices of a full order together' do
			invitraunt.order_dishes(2, "rabbit egg")
			invitraunt.order_dishes(1, "vat burger")
			expect(invitraunt.total_price).to eq 1_300_000
		end

		it 'can take an order from the command line' do
			expect(invitraunt).to receive(:order_dishes)
			invitraunt.take_order
		end
	end
	
end