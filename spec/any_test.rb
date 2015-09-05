require_relative '../any'

describe "#any" do
	before(:each) do
		@array = [0,1,2,3,4,5]
	end

	it "returns a number from the array" do
		number = @array.any
		expect(@array.include?(number)).to be true
	end

	it "will not return duplicate numbers" do
		output_array = []
		6.times do
			output_array << @array.any
		end
		output_array.sort!
		expect(output_array).to eq (@array)
	end

	it ""

end