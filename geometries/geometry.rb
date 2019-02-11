require_relative './point.rb'
require_relative ',/line.rb'
require_relative './polygon.rb'

class Geometry

	def self.from_wkt(wkt)
		nodes = wkt.slice(wkt.length-wkt.reverse.index('(')..wkt.index(')')-1)
		if wkt.downcase.start_with?('point')
			easting, northing = nodes.split(' ')
			Point.new(easting.to_f, northing.to_f)
		elsif wkt.downcase.start_with('linestring')
			points = nodes.split(',')
			point_list = points.map { |p| p.strip.split().map(&:to_f) }
			Line.new(point_list)
		elsif wkt.downcase.start_with?('polygon')
			points = nodes.split(',')
			point_list = points.map { |p| p.strip.split().map(&:to_f) }
			Polygon.new(point_list)
		end
	end

	def self.from_json(json)
	end

end