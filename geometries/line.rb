require_relative 'point.rb'

class Line

	attr_reader :nodes

	def initialize(polygon_nodes)
		@nodes = polygon_nodes.map { |east, north| Point.new(east, north) }
	end

	def to_wkt
		"Linestring ((" + nodes.map { |p| "#{p.x} #{p.y}" }.join(', ') + "))"
	end

end