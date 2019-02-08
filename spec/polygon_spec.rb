require_relative '../geometries/polygon.rb'
require_relative '../geometries/point.rb'

RSpec.describe Polygon do
	describe '#to_wkt' do
		it 'returns the wkt representation of the polygon' do
			expect(Polygon.new([[0,0], [10,0], [10,10], [0,10], [0,0]]).to_wkt)
			.to eq("Polygon ((0 0, 10 0, 10 10, 0 10, 0 0))")
		end
	end

	describe '#area' do
		it 'returns the area of a simple polygon' do
			expect(Polygon.new([[0,0], [10,0], [10,10], [0,10], [0,0]]).area)
			.to eq(100)
		end
	end

	describe '#bounding_box' do
		it 'returns the maxium and minium coordiantes of a polygon' do
			expect(Polygon.new([[0,0], [10,0], [10, 10], [0, 10], [0,0]]).bounding_box[:max].x)
			.to eq(10)
		end

		it 'returns the minium even when it\'s negative' do
			expect(Polygon.new([[20, 10], [-10, 8], [-7, -5], [25, -4], [20, 10]]).bounding_box[:min].y)
			.to eq(-5)
		end
	end
end