require 'invitraunt'

describe 'invitraunt' do

	let(:invitraunt) { Invitraunt.new }

	it "starts with an empty list of orders" do
		expect(invitraunt.orders).to eq []
	end

	it "can add orders to the list" do
		invitraunt.add_order(:order)
		expect(invitraunt.orders).to include :order
	end

	it "sends"

end