require 'invitraunt'

describe 'invitraunt' do 

	let(:invitraunt) { Invitraunt.new }

	context 'dishes' do
		it 'knows a price for vat burger' do
			expect(invitraunt.dishes["vat burger"]).to eq 300_000
		end

		it 'knows a price for rabbit eggs' do
			expect(invitraunt.dishes["rabbit eggs"]).to eq 500_000
		end

		it 'knows a price for velociraptor nuggets' do
			expect(invitraunt.dishes["raptor nugget x6"]).to eq 2
		end

		it 'can accumulate an order of two rabbit eggs' do
			invitraunt.order_dishes(2, "rabbit eggs")
			expect(invitraunt.full_order).to eq ["rabbit eggs", "rabbit eggs"]
		end

		it 'can add the prices of a full order together' do
			invitraunt.order_dishes(2, "rabbit eggs")
			invitraunt.order_dishes(1, "vat burger")
			expect(invitraunt.total_price).to eq 1_300_000
		end

		# it 'can accumulate an order of 1 vat burger for another customer' do
		# 	invitraunt.order(2, "rabbit eggs")
		# 	invitraunt.order(1, "vat burger")
		# 	expect(invitraunt.)
		# end
	end
	
end