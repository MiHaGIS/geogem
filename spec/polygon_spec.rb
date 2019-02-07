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
end