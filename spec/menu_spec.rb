require 'menu'

describe Menu do

	let(:menu) { Menu.new}

		it 'knows a price for vat burger' do
			expect(menu.dishes["vat burger"]).to eq 300_000
		end

		it 'knows a price for rabbit egg' do
			expect(menu.dishes["rabbit egg"]).to eq 500_000
		end

		it 'knows a price for velociraptor nuggets' do
			expect(menu.dishes["raptor nuggets x6"]).to eq 2
		end

end
