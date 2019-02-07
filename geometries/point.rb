class Point

	attr_reader :x
	attr_reader :y

	def initialize(x=0, y=0)
		@x = x
		@y = y
	end
	
	def to_wkt
		"Point (#{@x} #{@y})"
	end

end