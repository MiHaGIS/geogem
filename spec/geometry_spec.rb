require_relative '../geometries/geometry.rb'
require_relative '../geometries/point.rb'

RSpec.describe Geometry do

	describe '#from_wkt' do 

		it 'Returns a Point object when supplied with a point as wkt' do 
			expect(Geometry.from_wkt("Point (5 5)"))
			.to be_instance_of(Point)
		end

		it 'Returns a point with x coordinate of 5 when supplied with a wkt' do
			expect(Geometry.from_wkt("Point (5 5)").x)
			.to eq(5.0)
		end

		it 'Returns a polygon object when supplied with a polygon wkt' do
			expect(Geometry.from_wkt("Polygon ((1 1, 2 1, 2 2, 1 2, 1 1))"))
			.to be_instance_of(Polygon)
		end

		it 'Returns the nodes of a polygon object when supplied with polygon wkt' do
			expect(Geometry.from_wkt("Polygon ((1 1, 2 1, 2 2, 1 2, 1 1))").nodes.first.x)
			.to eq(1.0)
		end

	end

end