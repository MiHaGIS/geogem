require_relative 'point.rb'

class Polygon

	attr_reader :nodes
	attr_reader :lines

	def initialize(polygon_nodes)
		@nodes = polygon_nodes.map { |east, north| Point.new(east, north) }
		@lines = nodes.slice(0, nodes.length-1).zip(nodes.slice(1,nodes.length))
	end

	def to_wkt
		"Polygon ((" + nodes.map { |p| "#{p.x} #{p.y}" }.join(', ') + "))"
	end

	def area
    multiplied = lines.map { |p1, p2| (p1.x * p2.y) - (p2.x * p1.y) }
    total = multiplied.sum.abs
    total / 2.0
	end

end
