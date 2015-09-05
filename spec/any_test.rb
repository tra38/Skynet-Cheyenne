require_relative '../any'

describe "#any" do
	before(:each) do
		@array = [0,1,2,3,4,5]
	end

	it "returns an element from the array" do
		number = @array.any
		expect(@array.include?(number)).to be true
	end

	it "will return unique elements from that array" do
		output_array = []
		6.times do
			output_array << @array.any
		end
		output_array.sort!
		expect(output_array).to eq (@array)
	end

	it "will still return elements from that array even after returning all unique elements" do
		two_arrays = @array * 2
		output_array = []
		12.times do
			output_array << @array.any
		end
		output_array.sort!
		two_arrays.sort!
		expect(output_array).to eq(two_arrays)
	end

end