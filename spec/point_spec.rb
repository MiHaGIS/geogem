require_relative '../geometries/point.rb'

RSpec.describe Point do
	describe '#new' do
		it 'Returns 0 x cooridinate when created with no input' do 
			expect(Point.new.x)
			.to eq(0)
		end

		it 'Returns 0 y coordinate when created with no input' do 
			expect(Point.new.y)
			.to eq(0)
		end

		it 'Returns the value inputed when provided an x coordinate' do
			expect(Point.new(1,1).x)
			.to eq(1)
		end

		it 'Returns the value inputed when provuded a y coordiante' do
			expect(Point.new(1,1).y)
			.to eq(1)
		end

		it 'Returns a float when it\'s supplied with an string' do 
			expect(Point.new('1', '1').x)
			.to eq(1.0)
		end
	end

	describe '#to_wkt' do
		it 'Returns the wkt representation of a point object' do 
			expect(Point.new.to_wkt)
			.to eq("Point (0 0)")
		end

		it 'Returns the wkt representation of a point with float coordinates' do 
			expect(Point.new(5.5, 10.4).to_wkt)
			.to eq("Point (5.5 10.4)")
		end
	end
end